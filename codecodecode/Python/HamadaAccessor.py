from tkinter import *
import tkinter.messagebox as mb


class hamadaAccessor:
    def __init__(self, parent):
        self.parent = parent
        self.parent.title('Hamada Accessor')
        self.parent.geometry('300x300+200+200')
        self.aturKomponen()

    def aturKomponen(self):
        frameUt = Frame(master=self.parent, bd=5)
        frameUt.pack(fill=BOTH, expand=YES)

        buttonSize = {'width': 8, 'height': 2}

        lblUsername = Label(master=frameUt, text='Username   :').grid(row=1, column=1, sticky=W)
        lblPass = Label(master=frameUt, text='Password    :').grid(row=2, column=1, sticky=W)
        txtBoxUsername = Entry(master=frameUt).grid(row=1, column=2, sticky=W)

        txtBoxPass = Entry(master=frameUt, show='*').grid(row=2, column=2, sticky=W)

        btnAccept = Button(master=frameUt, text='Login', command=None, cnf=buttonSize).grid(row=3, column=1, padx=10,pady=10)




root = Tk()
app = hamadaAccessor(root)
root.mainloop()


