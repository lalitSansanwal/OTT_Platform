@@ -0,0 +1,51 @@
import mysql.connector as connector
mydb=connector.connect(host='localhost',user='root',password='A@sh2003',database='OTT')
cursor=mydb.cursor(named_tuple=True)
cursor.execute('select * from client;')
result=cursor.fetchall()
print("\nWELCOME TO OTT PROJECT")
print("made by - Lalit, Bhavya, Ayush, Ashmeet.")
print("\nMENU")
print("1. Press 1 to view table Client.")
print("2. Press 2 to view table Director_of_movies.")
print("3. Press 3 to view table Admin.")
print("4. Press 4 to exit.")

while True:

    ch = int(input("Enter your choice here: "))

    if ch == 1:
        print('-'*153)
        print("| {0:<10} | {1:<10} | {2:<20} | {3:<20} | {4:<10} | {5:<20} | {6:<15} | {7:<10} | {8:<10} |".format("id", "Password", "name","address","age","payment_option","username","movie_ID","show_ID"))
        print('-'*153)
        for x in result:
            print("| {0:<10} | {1:<10} | {2:<20} | {3:<20} | {4:<10} | {5:<20} | {6:<15} | {7:<10} | {8:<10} |".format(str(x[0]),str(x[1]),str(x[2]),str(x[3]),str(x[4]),str(x[5]),str(x[6]),str(x[7]),str(x[8])))
        print('-'*153)
        continue

    elif ch == 2:
        print('-'*153)
        print("| {0:<10} | {1:<15} | {2:<15} |".format("Director Id", "Movie Name", "Name"))
        print('-'*50)
        for x in result:
            print("| {0:<10} | {1:<15} | {2:<15} |".format(str(x[0]),str(x[1]),str(x[2])))
        print('-'*50)
        continue

    elif ch == 3:
        print('-'*68)
        print("| {0:<10} | {1:<15} | {2:<15} | {3:<15} |".format("Author Id", "Password", "Movie Id", "Show Id"))
        print('-'*68)
        for x in result:
            print("| {0:<10} | {1:<15} | {2:<15} | {3:<15} |".format(str(x[0]),str(x[1]),str(x[2]), str(x[3])))
        print('-'*68)
        continue

    elif ch == 4:
        print("ThankYou !!\n")
        break

    else:
        print("Wrong Choice.\nEnter choice again...")
        continue
