def main():
    time = input('What time is it? ')
    if convert(time)>=7 and convert(time)<=8: print('breakfast time')
    elif convert(time)>=12 and convert(time)<=13: print('lunch time')
    elif convert(time)>=18 and convert(time)<=19: print('dinner time')
    else: return


def convert(time):
    time = time.split(':')
    hours = float(time[0])
    mins = float(time[1])
    time1 = hours + (mins/60)
    return time1



if __name__ == "__main__":
    main()
