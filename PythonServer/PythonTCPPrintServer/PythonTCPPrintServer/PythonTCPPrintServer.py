#!/usr/bin/env python

import socket


#TCP_IP = '127.0.0.1'
TCP_IP = '192.168.11.57'
TCP_PORT = 5005
BUFFER_SIZE = 1024 #20  # Normally 1024, but we want fast response

while 1:
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((TCP_IP, TCP_PORT))
    s.listen(1)
    a = 1

    conn, addr = s.accept()
    print ('Connection address:', addr)
    data = conn.recv(BUFFER_SIZE)
    print ("received data:", data)


    #conn.send(data)  # echo
    conn.close()
