import string

def is_pangram(sentence):
    alphabets = set(string.ascii_lowercase)
    return set(sentence.lower()) >= alphabets


""" 
//This is a much inefficient solution

def is_pangram(sentence):
    alphabets = "abcdefghijklmnopqrstuvwxyz"
    special = '" !@#$%^&*()_+-=[],./<>?;:|~"0123456789'

    list_of_chars = sorted(set([char.lower() for char in sentence if char not in special]))
    
    alphabet_string = "".join(list_of_chars)

    return alphabet_string == alphabets
"""