types = ["*.jpg", "*.jpeg", "*.png"]

files = []
for type in types:
     this_type_files = glob.glob(type)
     files += this_type_files

print(files)