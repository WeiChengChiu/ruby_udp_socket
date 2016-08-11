require "socket"

ip = "127.0.0.1"
port = 8888
flag = Socket::MSG_PEEK # MSG_PEEK , MSG_WAITALL
                        # MSG_PEEK  receive data without removing
                        # MSG_WAITALL the operation block until request is satisfied

server = UDPSocket.new
server.bind("127.0.0.1",8888)  #server link_to client

client = UDPSocket.new
client.send("udp socket test message", flag, ip, port)


p server.recvfrom(100)  #recvfrom_nonblock(maxlen)

server.close