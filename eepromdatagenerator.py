# -*- coding: utf-8 -*-
"""
Created on Thu Nov 12 13:44:04 2020

@author: Aravind Anirudh
"""

"""eeprom data generator"""
f=open("C:/Users/Aravind Anirudh/Desktop/eepromdata.txt",mode='w',encoding='utf-8')
f.truncate()
print("v2.0 raw",file=f)
conv=[1,0x4f,12,6,0x4c,24,20,0xf,0,4]
a=0
for n in range(0,256):
    a=a+1
    list1=[int(i) for i in str(n)]
    for t in list1:
        if n<10:
            print(00,file=f,end="")
        print(int(t),file=f,end="")
        #print(hex(conv[int(t)]).rstrip("L").lstrip("0x") or "0",file=f,end="")
        if a==2 or n<10:
            print("",file=f)
            a=0
      
f.close()
print("done!")