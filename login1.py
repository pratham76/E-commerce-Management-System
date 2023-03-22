from tkinter import *
import random
import mysql.connector as a
con = a.connect(host="localhost",user="root",passwd="",database="ecommerce")

root = Tk()
l1=Label(root,text="Add Customer Information")
l1.grid(row=0,column=0)
root.title("")
root.geometry("500x500")
mylabel1 = Label(root,text="       ",bd="35")
mylabel1.grid(row=1, column=0)
mylabel2 = Label(root,text="NEW USER",anchor=CENTER,bg="light blue",bd="20")
mylabel2.grid(row=7, column=1)

l1=Label(root,text="Customer Registration",bd=20,relief="ridge",bg="light blue",width=20,font=('arial',30, 'bold'))
l1.place(x=0,y=0)
customer_data = []

l2=Label(root,text="customer id:")
l2.grid(row=8,column=0,sticky="W")
value=(random.randint(10002,11100))
value = 'USR_'+str(value)
e = Label(root,text = value, font=('arial', 10, 'bold'))
e.place(x=150,y=165)

l10=Label(root,text="username:")
l10.grid(row=9,column=0,sticky="W")
e10 = Entry(root,width=40)
e10.grid(row=9,column=1)

l3=Label(root,text="password:")
l3.grid(row=10,column=0,sticky="W")
e1 = Entry(root,width=40)
e1.grid(row=10,column=1)


l3=Label(root,text="First name:")
l3.grid(row=11,column=0,sticky="W")
e2 = Entry(root,width=40)
e2.grid(row=11,column=1)


l4=Label(root,text="last name :")
l4.grid(row=12,column=0,sticky="W")
e3 = Entry(root,width=40)
e3.grid(row=12,column=1)


l5=Label(root,text=" Email:")
l5.grid(row=13,column=0,sticky="W")
e4 = Entry(root,width=40)
e4.grid(row=13,column=1)


l7=Label(root,text="Address:")
l7.grid(row=14,column=0,sticky="W")
e6 = Entry(root,show="*",width=40)
e6.grid(row=14,column=1)

l8=Label(root,text="pincode:")
l8.grid(row=15,column=0,sticky="W")
e7 = Entry(root,width=40)
e7.grid(row=15,column=1)

l9=Label(root,text="phone number:")
l9.grid(row=16,column=0,sticky="W")
e8 = Entry(root,width=40)
e8.grid(row=16,column=1)
def funcAddUser():
    data1= [value,e10.get(),e1.get(),e2.get(),e3.get(),e4.get(),e6.get(),e7.get(),e8.get(),'12763','c_04']
    sql1="insert into customer values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    c=con.cursor()
    c.execute(sql1,data1)
    con.commit()
    message = " Your account has been sucessfully created "
    lb4 = Label(root, text = message,fg="green")
    lb4.grid(row=16, column =1) 

b1 = Button(root,text="Add User",command=funcAddUser)
b1.grid(row=17,column=1)
root.mainloop()