## Как посмотреть содержимое текстового файла?

    less <path_to_file>
    cat <path_to_file>
    head -<N> <path_to_file>
    tail -<N> <path_to_file>

## Что делает команда tail? Как посмотреть?

    tail выводит заданое (default     10) строк в конце файла.
    man tail
    info tail
    whatis tail

## Как посмотреть текущую рабочую директорию?
    pwd

## Как сменить рабочую директорию?
    cd <path_to_dir>

## Как перейти в родительскую директорию?
    cd ..

## Как вернуться в домашнюю директорию?
    cd ~

## Как вывести список файлов в директории?
    ls <name_directory>
    find <name_directory> -maxdepth 1

## Как посмотреть время последнего изменения/доступа к файлу /tmp/test.txt?
    ls -l <path_to_file>
    stat <file_name>
## Как создать новую директорию test?
    mkdir test

## Как создать пустой файл?
    touch <name_file>
    echo "" > <name_file>
    vim <name_file>
    nano <name_file>

## Как создать файл /tmp/2mb.txt размером 2Mb?
    truncate -s 2M <name_file>
    head -c 2M <name_of_BIG_file> > <name_file>

## Как узнать тип файла?
    file <name_file>
    ls -l <name-file>     в столбце с доступом смотреть первый символ,если 'd'     то папка, если '-'     то файл
    stat <name_file>

## Как переименовать файл?
    mv <old_name_file> <new_name_file>

## Как удалить файл/директорию?
    rm <name_file>
    rm -r <name_directory>
  
## Как создать символическую/жесткую ссылку на файл/директорию?
    ln -s <original_name_file> <linked_name_file>
    ln <original_name_file> <linked_name_file>

## Как посмотреть размер файла?
    ls -l <name_file>     смотреть столбец с размером (в байтах)
    stat <name_file>

## Как как узнать размер директории?
    du -s <name_directory>

## Как сравнить два текстовых файла?
    Утилита diff с кучей настроек

## Как посчитать количество строк в текстовом файле?
    wc -l <name_text>

## Как вывести на экран отсортированные строки текстового файла?
    cat <name_file> | sort