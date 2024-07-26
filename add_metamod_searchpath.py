import sys
import os

if len(sys.argv) != 2:
    print(f"wrong argument count. expecting 1 {len(sys.argv)}")
    exit(1)

file_to_edit = os.path.join(sys.argv[1],"gameinfo.gi")
temp_file = os.path.join(sys.argv[1],"gameinfo_temp.gi")
if os.path.exists(file_to_edit) != True:
    print("invalid path")

last_line_was_searchpath = False
with open(file_to_edit,"+r") as read_file:
    with open(temp_file,"+w") as write_file:
        for line in read_file:
            if "SearchPaths" in line:
                last_line_was_searchpath = True
            write_file.writelines(line)
            if last_line_was_searchpath == True and "{" in line:
                write_file.writelines("\t\t\tGame csgo/addons/metamod\n")
                last_line_was_searchpath = False

os.remove(file_to_edit)
os.rename(temp_file,file_to_edit)