file = open("raw_inst_and _data/test_load_data.txt",'r')
content = file.read()

file_new = open("test_load_data_2.txt",'w')

i = 0
while i <len(content):

    if content[i]=='\n':
        i+=1
        continue
    else:
        file_new.write(content[i+24:i+32]+"\n")
        file_new.write(content[i+16:i+24]+"\n")
        file_new.write(content[i+8:i+16]+"\n")
        file_new.write(content[i:i+8]+"\n")
        i += 32

file_new.close()
file.close()
