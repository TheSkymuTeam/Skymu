import os

root = os.path.dirname(os.path.abspath(__file__))

for dirpath, dirnames, filenames in os.walk(root):
    for filename in filenames:
        if filename.endswith(".xaml.cs"):
            new_name = filename[:-8] + ".axaml.cs"
        elif filename.endswith(".xaml"):
            new_name = filename[:-5] + ".axaml"
        else:
            continue

        old_path = os.path.join(dirpath, filename)
        new_path = os.path.join(dirpath, new_name)

        if os.path.exists(new_path):
            print("SKIPPED:", new_path)
            continue

        os.rename(old_path, new_path)
        print(filename, "->", new_name)

print("Done.")