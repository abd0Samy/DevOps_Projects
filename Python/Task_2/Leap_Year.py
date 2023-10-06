#inorder to be a leap year has to be divisible by 4, 100 and 400 at the same time

def isleap(year):
#input is year
#function logic below:
    if year%4 == 0:
        if year%100 == 0:
            if year%400 == 0:
                print("This is a leap year")
                return True
    print("This is NOT a leap year")
    return False

year = int(input('Enter the year: ')) # input the year
print(isleap(year)) #execute the function and print the result
