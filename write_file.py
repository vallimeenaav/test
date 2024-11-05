# write_file.py
def write_to_file(filename, content):
    with open(filename, "w") as file:
        file.write(content)
    print(f"Content written to {filename}")

# Specify the file and content
filename = "sample_output.txt"
content = "This is some random content for testing purposes.\nFeel free to replace this text!"

# Call the function
write_to_file(filename, content)

print("hello world")
