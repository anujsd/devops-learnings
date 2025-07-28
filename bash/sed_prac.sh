# 1. Print lines containing a pattern
sed -n '/pattern/p' filename.txt

# 2. Replace the first occurrence of 'old' with 'new' in each line
sed 's/old/new/' filename.txt
# by default it will give new file if you want to change inplace use -i
sed 's/old/new/' filename.txt

# 3. Replace all occurrences of 'old' with 'new' in each line
sed 's/old/new/g' filename.txt

# 4. Delete lines containing a pattern
sed '/pattern/d' filename.txt

# 5. Print only lines 2 to 4
sed -n '2,4p' filename.txt

# 6. Insert a line before every line matching a pattern
sed '/pattern/i\This is a new line' filename.txt

# 7. Append a line after every line matching a pattern
sed '/pattern/a\This is an appended line' filename.txt

# 8. Edit a file in-place (replace 'foo' with 'bar')
sed -i 's/foo/bar/g' filename.txt

# 9. Remove leading and trailing whitespace
sed 's/^[ \t]*//;s/[ \t]*$//' filename.txt

# 10. Multiple commands: delete blank lines and replace 'abc' with 'xyz'
sed -e '/^$/d' -e 's/abc/xyz/g' filename.txt

# Try these commands by creating a sample file:
# echo -e "foo\nbar\nbaz\nfoo bar" > filename.txt