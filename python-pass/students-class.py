# this method return sort data by class
def isolate(students):
    s = {}
    for key, value in students.items():
        temp = []
        for key1, value1 in students.items():
            if value == value1 and key not in s.values():
                temp.append(key1)
                s.update({value: temp})
    return s


# this is data
students = {
    'Ahmed': 'Class 1',
    'Mustafa': 'Class 3',
    'Ali': 'Class 2',
    'Sara': 'Class 1',
    'Zainab': 'Class 1',
    'Zain': 'Class 2',
}

# print data
print(isolate(students))
