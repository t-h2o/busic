#!/bin/python3

note = "ABCDEFG"

def major_diese_circle():
    diese = "FCGDAEB"
    circle = "CGDAEBF"

    number_diese = 0
    for chord in circle:
        index = note.find(chord)

        print("Major gamme of ", chord, " -> ",sep='', end='')
        for i in range(7):
            current_note = note[(index + i) % 7]
            print(current_note,end='')

            if diese.find(current_note, 0, number_diese) != -1:
                print('#', end='')
            else:
                print(" ", end='')

            if i < 6:
                print(" ", end='')
        number_diese += 1
        print()

def major_bemole_circle():
    bemole = "BEADGCF"
    circle = "CFBEADF"

    number_bemole = 0
    for chord in circle:
        index = note.find(chord)

        print("Major gamme of ", chord, " -> ",sep='', end='')
        for i in range(7):
            current_note = note[(index + i) % 7]
            print(current_note,end='')

            if bemole.find(current_note, 0, number_bemole) != -1:
                print('b', end='')
            else:
                print(" ", end='')

            if i < 6:
                print(" ", end='')
        number_bemole += 1
        print()

def minor_diese_circle():
    diese = "FCGDAEB"
    circle = "AEBFCGD"

    number_diese = 0
    for chord in circle:
        index = note.find(chord)

        print("minor gamme of ", chord, " -> ",sep='', end='')
        for i in range(7):
            current_note = note[(index + i) % 7]
            print(current_note,end='')

            if diese.find(current_note, 0, number_diese) != -1:
                print('#', end='')
            else:
                print(" ", end='')

            if i < 6:
                print(" ", end='')
        number_diese += 1
        print()

def minor_bemole_circle():
    bemole = "BEADGCF"
    circle = "ADGCFBE"

    number_bemole = 0
    for chord in circle:
        index = note.find(chord)

        print("minor gamme of ", chord, " -> ",sep='', end='')
        for i in range(7):
            current_note = note[(index + i) % 7]
            print(current_note,end='')

            if bemole.find(current_note, 0, number_bemole) != -1:
                print('b', end='')
            else:
                print(" ", end='')

            if i < 6:
                print(" ", end='')
        number_bemole += 1
        print()



def main():
    major_diese_circle()
    print()
    major_bemole_circle()
    print()
    minor_diese_circle()
    print()
    minor_bemole_circle()
 
if __name__ == "__main__":
    main()
