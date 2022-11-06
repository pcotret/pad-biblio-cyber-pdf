file = open("biblio.bib", "rt")
replacement = ""
number=-1
for line in file:
    if "étiquette" in line:
        number=number+1
    changes = line.replace("étiquette", str(number))
    replacement = replacement + changes

file.close()
fout = open("biblio.bib", "wt")
fout.write(replacement)
fout.close()
