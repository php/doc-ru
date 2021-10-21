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

## Актуализация перевода

Оригинал англоязычной документации находится по адресу [doc-en](https://github.com/php/doc-en).

Файлы русскоязычной документации имеют определённый формат. В начале каждого файла должна быть конструкция следующего вида:

```xml
<?xml version="1.0" encoding="utf-8"?>
<!-- EN-Revision: 0abaad099e3ec6064ed8cf31553dcd5e3e3fdfba Maintainer: sergey Status: ready -->
<!-- Reviewed: yes -->
```

где `0abaad099e3ec6064ed8cf31553dcd5e3e3fdfba` — полный номер коммита в англоязычной документации, последнего актуального на момент редактирования для данного файла.
Это нужно для того, чтобы понимать, что именно переведено, а что ещё нет.

### Отслеживание изменений

#### С помощью doc.php.net

Выберите русский язык на правой боковой панели, а затем используйте инструмент "Outdated files".
В таблице будут перечислены файлы, для которых необходимо обновить перевод.

В столбце `en` указан хеш актуальной английской версии, а в столбце `ru` - хеш перевода.

#### С помощью командной строки

Клонируйте репозиторий [doc-base](https://github.com/php/doc-base) на один уровень с
[doc-en](https://github.com/php/doc-en) и `doc-ru`, чтобы структура папок была следующей:

```
├── doc-base/
├── en/
└── ru/
```

Обратите внимание, что языковые папки должны быть без префикса `doc-`.

Для клонирования можно воспользоваться командой `git clone https://github.com/php/doc-ru.git ru`.

Выполните следующую команду в терминале и откройте получившийся `revcheck.html` в браузере:

```
php doc-base/scripts/revcheck.php ru > revcheck.html
```
В разделе "Outdated Files" вы можете посмотреть актуальную английскую версию и текущую.

### Просмотр изменений

Чтобы посмотреть, какие изменения были произведены, выполните следующую команду:

```
git --no-pager diff 8b5940cadeb4f1c8492f4a7f70743a2be807cf39 68a9c82e06906a5c00e0199307d87dd3739f719b reference/array/functions/in-array.xml
```

где первый хеш — это текущая версия из `EN-Revision`, а второй — хеш актуальной английской версии.

Пример вывода:

```diff
--- a/reference/array/functions/in-array.xml
+++ b/reference/array/functions/in-array.xml
@@ -14,7 +14,7 @@
  <methodparam choice="opt"><type>bool</type><parameter>strict</parameter><initializer>&false;</initializer></methodparam>
  </methodsynopsis>
  <para>
-  Searches <parameter>haystack</parameter> for <parameter>needle</parameter> using loose comparison
+  Searches for <parameter>needle</parameter> in <parameter>haystack</parameter> using loose comparison unless <parameter>strict</parameter> is set.
  </para>
  </refsect1>
```

Как вы видите, изменилось описание функции.

Строка `Searches <parameter>haystack</parameter> for <parameter>needle</parameter> using loose comparison`
заменена на `Searches for <parameter>needle</parameter> in <parameter>haystack</parameter> using loose comparison`.

Откройте файл `reference/array/functions/in-array.xml` в репозитории `doc-ru`
и измените строку в соответствии с английской версией.

Затем обновите комментарий `EN-Revision`.

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
| Float (floating point) | Число с плавающей точкой (плавающая точка) |
| Getter | Метод чтения |
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
| Setter | Устанавливающий метод |
| Single quotes | Одинарные кавычки |
| Stream | Поток |
| Shared block | Общая блокировка |
| Shared memory | Разделяемая память |
| SQL query | Запрос SQL, SQL-запрос |
| SQL | Структурированный язык запросов |
| Throw exception | Выбросить исключение |
| Timezone, time zone | Часовой пояс |
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
