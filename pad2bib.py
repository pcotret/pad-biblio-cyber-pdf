import re
# Function to remove first lines. Taken from https://stackoverflow.com/questions/61681088/how-to-delete-lines-from-a-file-until-a-specific-character-python
def erase(file_name: str, start_key: str, stop_key: str):
    """
    This function will delete all lines from the given start_key
    until the stop_key. (include: start_key) (exclude: stop_key)
    """
    try: 
        with open(file_name, 'r+') as fr: 
            lines = fr.readlines()
        with open(file_name, 'w+') as fw:
            delete = False
            for line in lines:
                if line.strip('\n') == start_key:
                     delete = True
                elif line.strip('\n') == stop_key:
                     delete = False
                if not delete: 
                    fw.write(line)
    except RuntimeError as ex: 
        print(f"erase error:\n\t{ex}")

# Main program
file = open("biblio.bib", "rt")
replacement = ""
number=-1
for line in file:
    changes=line
    if "@book" in line:
        number=number+1
        line=re.sub("\[.*?\]","[]",line)
        changes = "@book{"+str(number)+",\n"
    replacement = replacement + changes

file.close()
fout = open("biblio.bib", "wt")
fout.write(replacement)
fout.close()
erase("biblio.bib","    Hello, here is an attempt to establish a shared bibliography in BibTex format (to facilitate exports to Zotero :)) Thank you for contributing by respecting the formalism below.","    A")