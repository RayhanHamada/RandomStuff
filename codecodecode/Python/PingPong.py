import re
from tkinter import *
from random import *
import win32api as api
import time

root = Tk()

class PingPong:

    def __init__(self, root = root):
        self.root = root
        self.root.title("PingPong Yo")
        self.canvas = Canvas(self.root, bg="black", height=400, width=400)
        self.canvas.pack()
        self.r_x, self.r_y = 50,50
        self.x,self.y = randint(50,350),randint(50,350)
        self.vx, self.vy = 1, -1
        self.bola = self.canvas.create_oval(self.x,self.y,self.x+self.r_x,self.y+self.r_y, fill="white")

        # untuk posisi mouse
        self.state_awal = api.GetKeyState(0x01)
        #untuk paddle

        self.paddle_x1 = 380
        self.paddle_y1 = 30
        self.paddle_x2 = 399
        self.paddle_y2 = 120

        self.paddle1 = self.canvas.create_rectangle(380, 30, 399, 120, fill="green")
        self.paddle2 = self.canvas.create_rectangle(1,30,18,120, fill="green")

        #untuk posisi mouse
        # self.tx = self.canvas.winfo_pointerx() - self.canvas.winfo_rootx()
        # self.ty = self.canvas.winfo_pointery() - self.canvas.winfo_rooty()

        while True:
            self.tyb = self.canvas.winfo_pointery() - self.canvas.winfo_rooty()
            self.canvas.move(self.bola, self.vx, self.vy)
            self.canvas.after(1)
            self.canvas.update()
            self.tx = self.canvas.winfo_pointerx() - self.canvas.winfo_rootx()
            self.ty = self.canvas.winfo_pointery() - self.canvas.winfo_rooty()

            # if api.GetKeyState(0x01) != self.state_awal and self.tx > 0 and self.tx < 400 and self.ty > 400 and self.ty < 400 :
            self.canvas.move(self.paddle1, 0, self.ty - self.tyb)
            self.canvas.move(self.paddle2,0,self.ty - self.tyb)


            if self.canvas.coords(self.bola)[1] == 0:
                self.vy = 1

            if self.canvas.coords(self.bola)[0]+self.r_x == 400:
                self.vx = -1

            if self.canvas.coords(self.bola)[1]+self.r_y == 400:
                self.vy = -1

            if self.canvas.coords(self.bola)[0] == 0:
                self.vx = 1





            print((str(self.tx) if self.tx <= 400 else "400") + " ," + (str(self.ty) if self.ty <= 400 else "400"))




PingPong()
root.mainloop()

