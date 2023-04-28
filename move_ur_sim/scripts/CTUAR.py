class CTUAR:

    def __init__(self,HOST = "192.168.1.2", PORT = 30003,Gripper_PORT = 'COM6'):
        import socket
        import serial
        import time
        import UR_30003_parser2

        self.position = []
        self.delta = 0

        # Create & Connect as client to HOST with given IP
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.connect((HOST, PORT))
        print('Connected to UR with LAN')
        print('HOST: ' + HOST)
        print('PORT: ' + str(PORT))
        #self.serial = serial.Serial( Gripper_PORT, 115200, timeout=1, parity=serial.PARITY_NONE,
        #        stopbits=serial.STOPBITS_ONE, bytesize=serial.EIGHTBITS)
        #print('Connected to Robotiq with USB')
        #print('PORT: ' + Gripper_PORT)

    def get_socket(self):
        # Returns socket
        return self.sock

    def get_serial(self):
        # Returns serial
        return self.serial
        
    def close(self):
        # Closes socket and seriall
        self.sock.close()
        self.serial.close()
    
    def send_socket_movej(self, data, a = 1, v = 1.5):
        tmp = "movej(" + str(data) + ", a = " + str(a) + ", v = " + str(v) +")" + "\n"
        print(tmp)
        self.sock.send(tmp.encode())
        
    def send_socket_speedj(self, data, a = 1, t = 100):
        tmp = "speedj(" + str(data) + ", a = " + str(a) + ", t_min = " + str(t) + ")" + "\n"
        print(tmp)
        self.sock.send(tmp.encode())
        
    def send_serial_ACTIVATE(self):
        self.gripper.write(b"\x09\x10\x03\xE8\x00\x03\x06\x01\x00\x00\x00\x00\x00\x72\xE1")
        print('Gripper activation')

    def send_serial_DEACTIVATE(self):
        self.gripper.write(b'\x09\x06\x03\xE8\x00\x00\x08\xF2')
        print('Gripper deactivation')

    def send_serial_OPEN(self):
        self.gripper.write(b"\x09\x10\x03\xE8\x00\x03\x06\x09\x00\x00\x0A\x96\x96\xBC\x65")
        print('Gripper is open')
        
    def send_serial_CLOSE(self):
        self.gripper.write(b"\x09\x10\x03\xE8\x00\x03\x06\x09\x00\x00\xFA\x96\x96\xBC\x56")
        print('Gripper is close')

    #-------------------------------------------------------------------------------------------------------------------
    def send_socket_MOVE(self, command, a=0.7, v=0.5):

        if command == 'LEFT':                 # position in axis X
            self.position[0] += self.delta
        elif command == 'RIGHT':
            self.position[0] -= self.delta
        elif command == 'UP':                 # position in axis Z
            self.position[2] += self.delta
        elif command == 'DOWN':
            self.position[2] -= self.delta
        elif command == 'FORWARD':            # position in axis Y
            self.position[1] -= self.delta
        elif command == 'BACK':
            self.position[1] += self.delta
        elif command == 'RXp':                # orientation in axis X
            self.position[3] += self.delta
        elif command == 'RXn':
            self.position[3] -= self.delta
        elif command == 'RYp':                # orientation in axis Y
            self.position[4] += self.delta
        elif command == 'RYn':
            self.position[4] -= self.delta
        elif command == 'RZp':                # orientation in axis Z
            self.position[5] += self.delta
        elif command == 'RZn':
            self.position[5] -= self.delta
        elif command == 'HOME':
            self.send_socket_movej([2.355,-1.57,1.57,0,1.57,0])
            return 1
        elif command is 'OPEN':                # Gripper
            self.send_serial_OPEN()
            return 1
        elif command is 'CLOSE':
            self.send_serial_CLOSE()
            return 1
        else:
            print("UNKNOWN COMMAND")
            return -1

        tmp = "movej(p" + str(self.rotate()) + ", a = " + str(a) + ", v = " + str(v) + ")" + "\n"
        print(tmp)
        self.sock.send(tmp.encode())
        return 1

    def rotate(self):
        import math
        a = self.position
        c = math.cos(math.radians(45))
        return [c*(a[0] - a[1]), c*(a[0]+a[1]), a[2], c*(a[3] - a[4]), c*(a[3] + a[4]), a[5] ]

    def start(self):
        import time

        self.position = [0.16395,-0.6645,0.62363,1.5707,0,0]
        self.delta = 0.2
        #self.send_serial_ACTIVATE()
        self.send_socket_movej([1.57, -1.57, 1.57, 0, 1.57, 0]) #2.355
        time.sleep(5)
        print("READY")