from tkinter import *
import tkinter.messagebox as mb


class hamadaAccessor:
    def __init__(self, parent):
        self.parent = parent
        self.parent.title('Hamada Accessor')
        self.parent.geometry('300x300+200+200')
        self.frameUt = Frame(master=self.parent, bd=5)
        self.frameUt.pack(fill=BOTH, expand=YES)

        self.buttonSize = {'width': 8, 'height': 2}

        self.lblUsername: Label = Label(master=self.frameUt, text='Username   :').grid(row=1, column=1, sticky=W)
        self.lblPass = Label(master=self.frameUt, text='Password    :').grid(row=2, column=1, sticky=W)
        self.txtBoxUsername: Entry = Entry(master=self.frameUt)
        self.txtBoxUsername.grid(row=1, column=2, sticky=W)

        self.txtBoxPass: Entry = Entry(master=self.frameUt, show='*')
        self.txtBoxPass.grid(row=2, column=2, sticky=W)

        self.btnAccept = Button(master=self.frameUt, text='Login', command=self.login, cnf=self.buttonSize).grid(row=3, column=1, padx=10, pady=10)

    def login(self):

        username : str = "admin"
        password : str = "admin"

        if self.txtBoxUsername.get() == username and self.txtBoxPass.get() == password:
            mb.showinfo("Konfirmasi Masuk", "Anda Berhasil masuk !!!")
        else:
            mb.showinfo("Konfirmasi Masuk", "Anda Tidak Berhasil Masuk, Cek username atau password")

root = Tk()
app = hamadaAccessor(root)
root.mainloop()