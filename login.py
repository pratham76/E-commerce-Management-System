from tkinter import *
import random
import mysql.connector as a
con = a.connect(host="localhost",user="root",passwd="",database="ecommerce")

# Function : Customer Login   
def funcCustomerLogin():
      root = Tk()

      root.title("USER LOGIN")
      root.geometry("425x325")
      mylabel1 = Label(root,text="       ",bd="45")

      mylabel2 = Label(root,text="USER LOGIN PAGE",anchor=CENTER,bg="light blue",bd="20")

      mylabel3 = Label(root,text="Login with your userid and password")

      mylabel4 = Label(root,text="user id:")

      mylabel5 = Label(root,text="Password:")

      myentry1= Entry(root,width=50)
      l1=Label(root,text="NNN BANK",bd=20,relief="ridge",bg="light blue",width=12,font=('arial', 40, 'bold'))
      l1.place(x=0,y=0)


      myentry2= Entry(root,show="*",width=50)
      ac= myentry1.get()
      
      def login(a=myentry1,b=myentry2):
          ac= a.get()
          a="select password from customer where username=%s"
          data=(ac,)
          c=con.cursor()
          c.execute(a,data)
          myresult=c.fetchone()
          if b.get()== myresult[0] :
                      nonlocal myentry1
                      d = myentry1
                      message = "Login Sucessful"
                      message2 ="Proceeding to the Main Page"
                      lb4 = Label(root, text = message,fg="green")
                      lb5 = Label(root, text = message2,fg="green")
                      lb4.grid(row=6, column =2)
                      lb5.grid(row=7, column =2)
      login()  
      root.mainloop()                      
 
# Function : New User creation           
def funcNewUser():
      
      root = Tk()
      l1=Label(root,text="Add Customer Information")
      l1.grid(row=0,column=0)
      root.title("")
      root.geometry("425x390")
      mylabel1 = Label(root,text="       ",bd="35")
      mylabel1.grid(row=1, column=0)
      mylabel2 = Label(root,text="NEW USER",anchor=CENTER,bg="light blue",bd="20")
      mylabel2.grid(row=7, column=1)

      l1=Label(root,text="New customer registration",bd=20,relief="ridge",bg="light blue",width=12,font=('arial', 40, 'bold'))
      l1.place(x=0,y=0)
      customer_data = []

      l2=Label(root,text="username:")
      l2.grid(row=8,column=0,sticky="W")
      value=(random.randint(10002,11100))
      e = Label(root,text = value, font=('arial', 10, 'bold'))
      e.place(x=150,y=165)

      l3=Label(root,text="password:")
      l3.grid(row=9,column=0,sticky="W")
      e1 = Entry(root,width=40)
      e1.grid(row=9,column=1)


      l3=Label(root,text="First name:")
      l3.grid(row=10,column=0,sticky="W")
      e2 = Entry(root,width=40)
      e2.grid(row=10,column=1)


      l4=Label(root,text="last name :")
      l4.grid(row=11,column=0,sticky="W")
      e3 = Entry(root,width=40)
      e3.grid(row=11,column=1)


      l5=Label(root,text=" Email:")
      l5.grid(row=12,column=0,sticky="W")
      e4 = Entry(root,width=40)
      e4.grid(row=12,column=1)


      l7=Label(root,text="Address:")
      l7.grid(row=14,column=0,sticky="W")
      e6 = Entry(root,show="*",width=40)
      e6.grid(row=14,column=1)

      l8=Label(root,text="pincode:")
      l8.grid(row=15,column=0,sticky="W")
      e7 = Entry(root,width=40)
      e7.grid(row=15,column=1)
      
      l9=Label(root,text="phone number:")
      l9.grid(row=15,column=0,sticky="W")
      e8 = Entry(root,width=40)
      e8.grid(row=15,column=1)
       
      data1= [e.get(),e2.get(),e3.get(),e4.get(),e5.get(),e6.get(),e7.get(),e8.get()]
      sql1="insert into customer values(USR_0012,%s,%s,%s,%s,%s,%s,%s,%s)"
      c=con.cursor()
      c.execute(sql1,data1)
      con.commit()
      message = " Your account has been sucessfully created "
      lb4 = Label(root, text = message,fg="green")
      lb4.grid(row=16, column =1) 
     
      b1 = Button(root,text="Add User",command=funcAddUser)
      b1.grid(row=17,column=1)
      root.mainloop()
root=Tk()
root.config(bg="white")
root.title("Typing Test")
root.geometry("780x550")

l1 = Label(root,text="ECOMMERCE",bd=20,relief="ridge",bg="light blue",width=23,font=('arial' ,40, 'bold'))
l1.place(x=0,y=0)

bt6 = Button(root,bg="light blue",text="CUSTOMER LOGIN",command=funcCustomerLogin,relief="groove")
bt6.place(x=100,y=128)

bt7 = Button(root,bg="light blue",text="NEW USER",command=funcNewUser,relief="groove")
bt7.place(x=630,y=128)

root.mainloop()