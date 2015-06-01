import socket

HOST = '192.168.11.7'   # Symbolic name meaning the local host
PORT = 5005    # Arbitrary non-privileged port

print ("TCP Test Client v2")
while True:
    command = input('Enter your command: ')
    if command.split(' ',1)[0]=='STORE':
        while True:
            additional_text = input()
            command = command+'\n'+additional_text
            if additional_text=='.':
                break
    #temp = command.encode('utf-8')
    #s.send(temp)
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((HOST,PORT))
    s.send(command.encode('utf-8'))
    reply = s.recv(1024)
    if reply=='Quit':
        break
    print(reply.decode('utf-8'))