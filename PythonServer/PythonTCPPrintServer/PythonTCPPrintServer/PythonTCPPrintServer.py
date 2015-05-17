#!/usr/bin/env python

import socket
import os
import sys
import subprocess as sub


#TCP_IP = '127.0.0.1'
#TCP_IP = '192.168.0.100'
TCP_IP = '192.168.11.4'
TCP_PORT = 5005
BUFFER_SIZE = 1024 #20  # Normally 1024, but we want fast response

string = ""
string2 = ""
line = ""
string3 = ""


#from subprocess import call
#call(["dir", "C:"])
#call(["dir"])
#status = call("dir" + " ", shell=True)

#status = sub.call("dir", shell=True)



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
    if string == "$dir":
        status = sub.check_output("dir", shell=True)
        conn.send(status)  # echo
    #else:
        #status = data.upper()
        

    #string2 = os.system(string)
    #string3 = string2.encode
    #conn.send(data) 
    
    conn.close()
