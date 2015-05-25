#!/usr/bin/env python

import socket
import os
import sys
import subprocess as sub

#config option placeholder, will figure out a better secure method later
MODE = "SECURE"

#TCP_IP = '127.0.0.1'
#TCP_IP = '192.168.0.100'
TCP_IP = '192.168.11.5'
TCP_PORT = 5005
BUFFER_SIZE = 1024 #20  # Normally 1024, but we want fast response
string = ""
#string2 = ""
#line = ""
#string3 = ""


#from subprocess import call
#call(["dir", "C:"])
#call(["dir"])
#status = call("dir" + " ", shell=True)

#status = sub.call("dir", shell=True)
import json
json_string = '{"dir": "dir ..", "cd":"cd"}'
parsed_json = json.loads(json_string)
print(parsed_json['dir'])

#messing with some JSON ideas
#{"commands":[
#    {"name":"dir", "args":[{".",".."}]},
#    {"name":"cd", "args":[{".",".."}]},
#    {"name":"ls", "args":".."}
#]}



#exepath = os.path.join(EXE File location is here)
#exepath = '"' + os.path.normpath(exepath) + '"'
#cmd = [exepath, '-el', str(el), '-n', str(z)]

#print( 'The python program is running this command:')
#print( cmd )

#process = Popen(cmd, stderr=sub.STDOUT, stdout=sub.PIPE)
#outputstring = process.communicate()[0]



while 1:
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((TCP_IP, TCP_PORT))
    s.listen(1)
    a = 1

    conn, addr = s.accept()
    print ('Connection address:', addr)

    data = conn.recv(BUFFER_SIZE)
    print ("received data:", data)

    string = data.decode("utf-8")
    
    if MODE == "UNSECURE":
        
        status = sub.check_output(string[1:], shell=True) # HIGHLY DANGEROUS. DONT USE UNSECURE MODE UNLESS YOU ARE ON AN ISOLATED NETWORK AND ARE CONIFDENT YOU KNOW WHAT YOU ARE DOING.
        bytetotal = len(status)
        index = 0
        linepart = status[0:1024]

        while bytetotal > 0:
            bytessent = conn.send(linepart)  # echo
            bytetotal = bytetotal - bytessent
            index = index + bytessent
            linepart = status[index:index+1024]

    elif MODE == "SECURE":
        if string[0:4] == "$dir":
            args = string[4:]
            status = sub.check_output(parsed_json[string[1:4]], shell=True)
            bytetotal = len(status)
            index = 0
            linepart = status[0:1024]

            while bytetotal > 0:
                bytessent = conn.send(linepart)  # echo
                bytetotal = bytetotal - bytessent
                index = index + bytessent
                linepart = status[index:index+1024]
    else:
        error = 1
    
    
   


    #else:
        #status = data.upper()
        

    #string2 = os.system(string)
    #string3 = string2.encode
    #conn.send(data) 
    
    conn.close()
