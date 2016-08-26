#Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

#For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

#What is the total of all the name scores in the file?

import sys
from sortedcontainers import SortedSet, SortedList

def get_word_score(word):
    return [ord(c) - 96 for c in word.lower()]

def parse_file(filename):
    with open(filename) as f:
        names = f.read()
        names = names.replace('\"', '')
        name_list = names.split(',')
        name_set = SortedSet(name_list)
        name_list = SortedList(name_set)
        return name_list

if __name__ == '__main__':
    name_list = parse_file('names.txt')
    score_list = [get_word_score(w) for w in name_list]
    product = 0
    for i in range(len(score_list)):
        product += sum(score_list[i]) * (i + 1)
    print(product)
