# Участие в переводе

## Оформление

- Символ отступа — это пробел (табуляция в файлах `.xml` запрещена)
- В документации используется буква `Ё`. Обращайте на это, пожалуйста, внимание.

## Рекомендации по переводу

Комментарии к коду должны быть переведены,
описание вывода, например, `echo "You reload page $num times";` также.

Исключение к правилу перевода английских слов в коде составляет случай, когда
функция будет по-разному обрабатывать английский и русский варианты, например,
`strtolower("Alex") === "alex"`, но `strtolower("Алексей") !== "алексей"`.

Заголовок `<title><function>func_name</function> example</title>`
всегда переводится как `<title>Пример использования <function>func_name</function></title>`.

## Соглашение по переводу

| Оригинал | Перевод |
| -------- | ------- |
| Application | Приложение |
| Cache | Кеш |
| Callback function | Callback-функция |
| Child | Потомок, дочерний элемент (узел) |
| CLI | Интерфейс командной строки |
| Code (php-code) | Код, PHP-код |
| Coding standards | Стандарты кодирования |
| Commandline program | Консольная программа |
| Commit | Фиксация (например, транзакции) |
| Default, by default | По умолчанию (пишется без дефиса) |
| Directory | Директория |
| Entry | Элемент (существительное, для массивов, списков и прочих структур) |
| Extension | Модуль |
| Features/functionality | Возможности, функциональность |
| Hash | Хеш |
| HTML entity | HTML-сущность |
| HTTP-Authentication | HTTP-аутентификация |
| Hypertext preprocessor | Препроцессор гипертекста |
| Handle | Дескриптор (например, cURL) |
| ID (БД) | ID |
| ID (в тексте) | Идентификатор |
| Legacy (system, server) | Устаревшая система, сервер, протокол |
| Legacy support | Поддержка старых версий |
| Magic quotes | "Магические" кавычки |
| Magic constants/methods/numbers | "Магические" константы/методы/числа |
| Multibyte string | Многобайтовая строка |
| Node | Узел |
| Optional | Необязательный |
| Override | Переопределять |
| Otherwise | В противном случае, иначе |
| On success | В случае успешного выполнения |
| On fail | В случае возникновения ошибки |
| Parameter(s) | Параметр(ы), аргумент(ы) |
| Parser | Парсер |
| Parsing | Разбор (например, разбор строки) |
| Prefetch | Предварительная выборка |
| PCRE | Perl-совместимые регулярные выражения |
| Private | Закрытый |
| Public | Общедоступный |
| Read-only | Доступен только для чтения |
| Result set | Результирующий набор |
| Returns | Возвращает |
| SAPI | Интерфейс разработки серверных приложений |
| Script | Скрипт |
| Single quotes | Одинарные кавычки |
| Stream | Поток |
| Shared block | Общая блокировка |
| Shared memory | Разделяемая память |
| SQL query | Запрос SQL, SQL-запрос |
| SQL | Структурированный язык запросов |
| Throw exception | Выбросить исключение |
| Timezone, time zone | Временная зона |
| Token | Лексема |
| Tokenizer | Лексер |
| Trait | Трейт |
| Writable | Доступен для записи |
| Wrapper | Обёртка |
| URL wrapper | Обёртка URL |
| To throw a warning/error | Вызвать предупреждение/ошибку |

## Не переводятся

- Cookie
- PEAR
- PECL
- PHP Group
- PHP
- Referer
- Имена переменных
- Типы переменных (integer, string, bool, resource)
