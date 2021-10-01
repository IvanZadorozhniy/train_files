# Типы данных

### Какие типы данных существуют в SQL? Чем отличается CHAR от VARCHAR , INT от DOUBLE ?

- Целочисленные
    - bigint
    - int
    - smallint
    - tinyint
    - bit
    - decimal
    - numeric
    - money
    - smallmoney
- С плавающей точкой
    - float
    - real
- Время и дата
    - datetime
    - smalldatetime
    - date
    - time
- Символы
    - char (fix length)
    - varchar (Not fix length)
    - varchar(max)
    - text
- Бинарные
    - binary
    - varbinary
    - image
- Другие типы данных
    - sql_variant
    - timestamp
    - uniqueidentifier
    - xml
    - cursor
    - table

CHAR являеться символьным типом данных с фиксированой длинной (например hash). VARCHAR  тоже символьный тип но может иметь разную длинну

# PSQL 

### CREATE DATABASE
    CREATE DATABASE nameDB;
### CONNECT (USE) TO DATABASE
    \c nameDB;
### SHOW DATABASE
    \l
### DELETE DATABASE
    DROP DATABASE nameDB;
### CREATE TABLE
    CREATE TABLE nameTable(
        колонка1 тип_данных,
        колонка2 тип_данных,
        колонка3 тип_данных,
        ...
        PRIMARY KEY( одна или несколько колонок )
    );
### DELETE TABLE
    DROP TABLE nameTable;
### INSERT TO TABLE
    INSERT INTO имя_таблицы (колонка1, колонка2 ...)
    VALUES (значение1, значение2 ...);
### CONSTRAINTS
- NOT_NULL
- UNIQUE
- PRIMARY KEY
- FOREIGN_KEY
- CHECK
- DEFAULT
- CREATE_INDEX

### ADD CONSTRAINT TO EXISTING TABLE
    ALTER TABLE nameTABLE ADD \CONSTRAINT\;

    example:
    ALTER TABLE developers ADD UNIQUE (id);
### UPDATE DATA IN THE TABLE
    UPDATE tableName
    SET col1 = val1, col2=val2 ...
    WHERE condition;
### DELETE DATA FROM TABLE
    DELETE FROM tableName
    WHERE condition;

### SELECT
    SELECT * FROM tableName;
    SELECT DISTINCT col FROM tableName;
    SELECT col1,col2 ... INTO newTableName FROM tableName
    