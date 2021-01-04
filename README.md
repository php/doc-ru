# Русский перевод документации PHP

[![Slack Status](https://img.shields.io/badge/slack-@ru.php.doc-green.svg?logo=slack)](https://join.slack.com/t/ruphpdoc/shared_invite/zt-ax1czx68-c3_XSVhsgzYJCOslmwvJkQ)
![Sync](https://github.com/php/doc-ru/workflows/Build%20Test/badge.svg)

## Руководство

- [Рекомендации по переводу](translation_standards.xml)

## Оформление

- Символ отступа — это пробел (табуляция в файлах `.xml` запрещена)

## Принятие пулреквестов

Для пользователей с кармой `doc/ru` команда для принятия пулреквеста:

```shell
# В качестве origin используется git@git.php.net:/doc/ru.git
# git remote add origin git@git.php.net:/doc/ru.git

bash scripts/apply_patch.sh %PR_NUM%

# То же самое, но вручную:
curl http://url_of_github_patch.patch | git am
git commit --am # Добавить в конец "Closes GH-%PR_NUM%"
git push origin
```
