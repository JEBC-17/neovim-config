import random

def play(number):
    user= number
    computer= random.randint(0,100)

    if user > computer: 
        return 'ggs'
    else:
        return 'loser'
