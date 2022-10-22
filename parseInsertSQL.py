#!/usr/bin/python3
import sys

if len(sys.argv) < 2:
    print("Use: ./parse.py <FILENAME>")
    exit()

filename = "{}".format(sys.argv[1].split('.')[0])

with open("{}.csv".format(filename), 'r') as f:
    lines = f.readlines()

query = ""
for line in lines:
    if line == lines[0]:
        query += "INSERT INTO {}{} VALUES \n".format(filename, eval(line[:-1]))
    else:
        query += "\t{},\n".format(eval(line[:-1]))
query = "{};".format(query[:-2])

print(query)
