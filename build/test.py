import os
file_contents1 = f'{os.getcwd()}/testlist.txt'
file2_path = f'{os.getcwd()}/optestlist.txt'
with open(file_contents1, "r") as f_input:
    with open(file2_path, "w") as f_output:
        for line in f_input:
            if "test" in line.lower():
                f_output.write(line)
os.remove(f'{os.getcwd()}/testlist.txt')