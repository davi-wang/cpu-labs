#! /usr/bin/env python3

def main():
    text_file = open("text.txt", "r")
    textbytes = open("textbytes.txt", "w")
    data_file = open("data.txt", "r")
    databytes = open("databytes.txt", "w")
    texts = text_file.readlines()
    for line in texts:
        for i in range(6, -1, -2): 
            print(line[i:i+2], file=textbytes)
    datas = data_file.readlines()
    for line in datas:
        for i in range(6, -1, -2): 
            print(line[i:i+2], file=databytes)
if __name__ == '__main__':
    main()
