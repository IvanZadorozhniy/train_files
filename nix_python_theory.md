# Операторы
### Уметь создавать переменные и выполнять над ними базовые арифметические операции (+, -, =, /, *). Уметь пользоваться операторами сравнения (>, <, <=,>=, !=).
Работают также как и в других языках программирования

# Python Data Types
### Поверхностно знать базовые типы данных (основные типы данных будут подробно рассмотрены позже).
- Text: str
- Numeric: int, float, complex
- Sequence: list, tuple, range
- Mapping: dict
- Set: set, frozenset
- Bool: bool
- Binary: bytes, bytearray, memoryview

Use **type(variable)** for getting data type of any object

# Изменяемые и неизменяемые типы данных
### Понимать что означает неизменяемость. Знать, какие типы данных являются изменяемыми, а какие нет.
To summarise the difference, mutable objects can change their state or contents and immutable objects can’t change their state or content.
- Immutable Objects: int, float, bool, string, unicode, tuple
- Mutable Objects: list, dict, set
# Strings
### Владеть основными методами работы с str, такими как: replace, join, split, strip, format, upper, lower, count, startswith, endswith.
    s = "Some String for example"
    upper = s.upper()
    lower = s.lower()
    stripted = s.strip()
    replaced = s.replace("S", "F")
    splited_string_list = s.split(" ")
    concatenation = s + upper
    text_for_formatting = "My name is {1}. I am {0}"
    text_for_formatting = text_for_formatting.format(23, "Ivan")
    bool_var = s.endswith("example") # True
    bool_var = s.startswith("Any") # False
    numbers = s.count("a")

# Lists
### Владеть основными методами работы с list, такими как: pop, extend, append, reverse, sort, а так же уметь делать срезы по индексам.
    l = [1, 2, 3, 10, -1, 2 ,3, 4]
    l[2] # 3
    len(l) # 8
    this_list = list(range(3))
    list_2_2 = l[1:6] # slicing
    l.insert(4, "water") # inser water to 4th index
    l.append("fire")
    l.extend(another_list) # append all elements by another_list
    l.remove("fire")
    l.pop(some_index:int)
    del l # delete list
    l.clear() # crear list but it is still accessible
    l.sort(revers=True) # sorting itself
    sorted(l) # return sorted list
    l.sort(key= lambda x: x**2)
    l.reverse()
    reversed(l)

# Dictionaries
### Владеть основными методами работы с dict, такими как: get, keys, values, items, pop, update.

    mydict = {
        "somekey" : "somevalue",
        "brand" : "Samsung"
        "model" : "a21"
    }
    mydict["somekey"] # get value by key. mydict.get("somekey') has same result
    len(mydict)
    list_keys = mydict.keys()
    list_valuse = mydict.values()
    list_of_tuples = mydict.items()
    mydict["somekey"] = "changed value"
    mydict.update({"year":2020})
    mydict.pop("somekey") # remove item by key
    mydict.clear()

# Numbers
### Знать о существовании разных типов numbers.
- int
- float
- complex

# Booleans
### Понимать, что это за тип данных и для чего он нужен.
When you need to know if an expression True or False you can use Bool type

# Tuples
### Знать, чем он отличаются от list. Понимать, почему изменяемые элементы внутри tuple можно изменять.

The Tuples have the same feature like lists but the ones are unchangeable. For update, remove, or change elements you can convert it to list and back
    
    # Unpack tuples using Asterisk (*)
    tup = ("red", "wine", "yellow", "sun")
    *list_elements, = tup

# Sets
### Базово понимать отличия с list.
A set is a collection which is both unordered and unindexed. Sets cannot have two items with the same value. 
    
    myset = set([1,2,2,1,2,1,3,4]) # {1,2,3,4}
    myset.add(5)
    myset.update(some_list)
    myset.remove(some_element) # if some_element isn't in set will raise an error
    myset.discard(some_element) 
    set1.union(set2) # объединение
    set1.intersection(set2) # пересечение
    set1.symmetric_difference(set2) # Симметричная разность
    set1.difference(set2) # разность

# None
### Понимать, что такое None, и как он отличается от False.

The None keyword is used to define a null value, or no value at all.
None is not the same as 0, False, or an empty string. None is a data type of its own (NoneType) and only None can be None.

# Conditions
### Уметь пользоваться условными операторами if, elif, else. Понимать разницу между if и elif.

    if some_condition:
        pass
    elif any_other_condition:
        pass
    else:
        pass

    a if some_condition else b # Ternary operator

# Цикл for
### Уметь итерироваться по спискам и понимать, кода и почему цикл for останавливается.
    x = list(range(10))
    for elem in x:
        print(x)
    for index in range(len(x)):
        print(x[index])
    
    # can use else
    for elem in x:
        pass
    else:
        print("finished")


# Цикл while, Операторы continue / break
### Уметь создавать циклы, которые автоматически завершатся по условию описанному справа от while. Уметь пропускать оставшееся тело цикла и останавливать его по нужным условиям.
    i = 1
    while i < 6:
        print(i)
        i += 1
        if i == 5:
            break
        if i == 2:
            continue
        print("next step")
    else:
        print("finish")

# Функции
### Что такое позиционные и ключевые аргументы в функции. Как установить стандартное значение для аргумента функции.

    def standard_function(a,b,c): 
        pass
    standard_function(1,2,3) # 1, 2, 3 - позиционные аргументы
    
    def standard_function(a,b,c): 
        pass
    standard_function(c=1,b=2,a=1) # a,b,c - ключевые аргументы

    def standard_function(a=2,b,c): # set default value for a argument
        pass
    standard_function(c=1,b=2) 

# Return
### Для чего нужен return. Что такое *args, **kwargs и как их применять. Что вернёт функция, в которой не объявлена инструкция return.

return - возвращает значение из функции в родительскую функцию
Если return не объявлен функция вернет None
*args - это используеться если вы не знаете, сколько аргументов будет передано вашей функции. Таким образом, функция получит кортеж аргументов и сможет соответственно обращаться к элементам как к tuple. args[1], args[2]
**kwargs - это используеться если вы не знаете, сколько ключевых аргументов будет передано вашей функции. Таким образом, функция получит dict аргументов и сможет соответственно обращаться к элементам как к dikt. kwargs["key"].

# Пространство имён
### Где функция ищет переменные и в каком порядке это происходит?
 - Built-in namespace
 - Global namesapce
 - Local namespace
 Функция ищет переменные в порядке: local -> global -> built-in

# Exceptions
### Когда и для чего можно применить exceptions. Как "отловить" исключение? Как отловить вообще любое исключение? 

When an error occurs, or exception as we call it, Python will normally stop and generate an error message. 

You can define as many exception blocks as you want, e.g. if you want to execute a special block of code for a special kind of error. 

You can use the else keyword to define a block of code to be executed if no errors were raised. The finally block, if specified, will be executed regardless if the try block raises an error or not. 

As a Python developer you can choose to throw an exception if a condition occurs. To throw (or raise) an exception, use the raise keyword. 

    try:
        print(x)    
    except:
        print("Something went wrong")
    finally:
        print("The 'try except' is finished")
    
    try:
        print("Hello")
    except:
        print("Something went wrong")
    else:
        print("Nothing went wrong")

    x = -1

    if x < 0:
        raise Exception("Sorry, no numbers below zero")`
