#!/bin/python3

note = "ABCDEFG"
diese = "FCGDAEB"
circle = "CGDAEBFDAEBF"

def circle_incrementation():
    number = 0

    while number < 6:
        yield number
        number += 1

    while number > 0:
        yield number
        number -= 1

def main():
    generator = circle_incrementation()

    for chord in circle:
        number_diese = next(generator)

        index = note.find(chord)

        print("Major chord of ", chord, " :",sep='', end='')
        for i in range(7):
            current_note = note[(index + i) % 7]
            print(current_note,end='')

            if diese.find(current_note, 0, number_diese) != -1:
                print('#', end='')
            else:
                print(" ", end='')

            if i < 6:
                print(" ", end='')


        print()
 
if __name__ == "__main__":
    main()
