### Напишите template строки, который можно будет многократно переиспользовать, вставляя в него имя и фамилию человека. Используйте метод строки "format".

    "{} {}".format(name, second_name)

### Напишите функцию, которая будет преобразовывать цену к формату, отображающему до двух знаков после точки, например:

    def normalize_price(price):
        return "{:.2f}".format(price).rstrip('0').rstrip('.')

### Дан список из строк. Создайте однострочное решение (при помощи list comprehension), которое приведёт к верхнему регистру все строки, содержащие слово 'price')

    edited_list_strings = [a.upper() if "price" in a else a for a in list_strings]

### Напишите функцию, которая принимает список, и число. Функция должна разбить список на N кусков, переданных в функцию в качестве втрого аргумента. Выполнить проверки по здравому смыслу (например, нет смысла пытаться разбить список из 3 элементов на 4 элемента)

    def list_split(f_list:list, n_chunks:int):
        if len(f_list) < n_chunks or n_chunks < 1:
            return []
        avg = len(f_list)/n_chunks
        return [f_list[int(i*avg):int((i+1)*avg)] for i in range(0, n_chunks)]

### Дана строка из имён, в формате "Денис, Олег, Вася, Петя, Дима, Женя". Разбейте строку так, чтобы получился список имён. Заметьте: после запятой не всегда есть пробел (он не должен входить в имена, которые попадут в список)

    def name_split(f_list:list):
        return list(map(lambda x: x.strip(), f_list.split(",")))

### Дан список из строк. Используя join, соедините строки так, чтобы они были разделены через запятую. На выходе должна получиться строка в виде "my_string1, my_string2, my_string3"

    def combine_str(list_str:list):
        return ','.join(list_str)

### Есть список из случайных чисел и строк. Создайте цикл, итерирующийся до тех пор, пока не встретится число "777". Если в течении 100 попыток число не будет найдено — остановить цикл и вызвать ошибку с соответсвующим сообщением.

    example_list = [1,2,3,1, 787, 'das', "dsad", "777", "1.23","777.0", 777.0,123,123.2, "776.8"]
    def check_777(example_list):
        MAX_STEPS = min([100, len(example_list)])
        REQUIRED_NUMBER = 777

        for index in range(MAX_STEPS):
            if (type(example_list[index]) == int or 
                type(example_list[index]) == float) 
                and 
                example_list[index] == REQUIRED_NUMBER:
                return index
            else:
                try:
                    if float(example_list[index]) == REQUIRED_NUMBER:
                        return index
                except:
                    pass
        raise Exception("Sorry, no {}  in first {} elements".format(REQUIRED_NUMBER, MAX_STEPS))
        return answer
    print(check_777(example_list))

### Создать функцию, которая принимает на вход два списка: первый — список, который нужно очистить от определённых значений, второй — список тех значений, от которых нужно очистить. Например, list1 = [1, 2, 3, 4, 5], list2 = [1, 3, 4], функция должна вернуть [2, 5]

    def custom_filter(main_list, filter_list):
        return [num for num in main_list if num not in filter_list]
