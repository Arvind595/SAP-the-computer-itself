# -*- coding: utf-8 -*-
"""
Created on Thu Nov 12 16:36:09 2020

@author: Aravind Anirudh
"""
"""0-255"""
f=open("C:/Users/Aravind Anirudh/Desktop/eepromdata.txt",mode='w',encoding='utf-8')
f.truncate()
print("v2.0 raw",file=f)
print("010101",file=f)
conv=[0x01,0x4f,0x12,0x06,0x4c,0x24,0x20,0x0f,0x00,0x04]
for i in range(0,128):
    print(i)
    numsp=[int(q) for q in str(i)]
    for w in numsp:
        size=len(str(hex(conv[w]).rstrip("L").lstrip("0x") or "0"))
        if size==1:
            print("0"+str(hex(conv[w]).rstrip("L").lstrip("0x") or "0"),file=f,end="")
        else:
            print(str(hex(conv[w]).rstrip("L").lstrip("0x") or "0"),file=f,end="")
        if i>=0 and i<10:
            print("ffff",file=f,end="")
        
        print("",file=f,end="")
    if i>=10 and i<100:
        print("ff",file=f,end="")

            
    print("",file=f)
f.close()
print("done!")
f=open("C:/Users/Aravind Anirudh/Desktop/eepromdata.txt",mode='a',encoding='utf-8') 
for i in range(128,0,-1):
    print(i)
    numsp=[int(q) for q in str(i)]
    for w in numsp:
        size=len(str(hex(conv[w]).rstrip("L").lstrip("0x") or "0"))
        if size==1:
            print("0"+str(hex(conv[w]).rstrip("L").lstrip("0x") or "0"),file=f,end="")
        else:
            print(str(hex(conv[w]).rstrip("L").lstrip("0x") or "0"),file=f,end="")
        if i>=0 and i<10:
            print("ffff",file=f,end="")
        
        print("",file=f,end="")
    if i>=10 and i<100:
        print("ff",file=f,end="")

            
    print("",file=f)
f.close()
print("done!")