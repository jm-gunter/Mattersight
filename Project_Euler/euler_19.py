#You are given the following information, but you may prefer to do some research for yourself.

#1 Jan 1900 was a Monday.
#Thirty days has September,
#April, June and November.
#All the rest have thirty-one,
#Saving February alone,
#Which has twenty-eight, rain or shine.
#And on leap years, twenty-nine.
#A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

def is_leap_year(year):
    if year % 100 == 0:
        return year % 400 == 0
    else:
        return year % 4 == 0

def month_days(month, year):
    if month in [4, 6, 9, 11]:
        return 30
    elif month in [1, 3, 5, 7, 8, 10, 12]:
        return 31
    elif (is_leap_year(year)):
        return 29
    else:
        return 28

def count_first_month_days(day):
    # day = monday-sunday = 1-7
    # 1 Jan. 1901 was Tues => we subtract 6 below
    first_of_month = 1
    count = 0
    for year in range(1901, 2001):
        for month in range(1, 13):
            first_of_month += month_days(month, year)
            if (first_of_month - 6) % 7 == 0:
                count += 1
    return count

if __name__ == '__main__':
    print(count_first_month_days(7))
