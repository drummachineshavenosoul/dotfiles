import subprocess

def get_selected_items():
    applescript = '''
        tell application "Finder"
            if (count of items of (get selection)) is greater than 0 then
                set selected_items to {}
                repeat with i in (get selection)
                    set end of selected_items to POSIX path of (i as alias)
                end repeat
                return selected_items as text
            else
                return "No items selected"
            end if
        end tell
    '''
    result = subprocess.run(['osascript', '-e', applescript], capture_output=True, text=True)
    if result.returncode == 0 and result.stdout.strip():
        return result.stdout.strip().split('\n')
    else:
        return None

selected_items = get_selected_items()
if selected_items:
    joined_paths = '\n'.join(selected_items)
    joined_paths = joined_paths.replace(' ', '\\ ')
    subprocess.run(['pbcopy'], input=joined_paths, text=True)
    print(f"Copied {len(selected_items)} items to clipboard:\n{joined_paths}")
else:
    print("No items selected")