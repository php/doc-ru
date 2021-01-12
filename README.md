# Русский перевод документации PHP

[![Slack Status](https://img.shields.io/badge/slack-@ru.php.doc-brightgreen.svg?logo=slack)](https://join.slack.com/t/ruphpdoc/shared_invite/zt-ax1czx68-c3_XSVhsgzYJCOslmwvJkQ)
![Build Test](https://github.com/php/doc-ru/workflows/Build%20Test/badge.svg)
![Spell checking](https://github.com/php/doc-ru/workflows/Spell%20checking/badge.svg)

## Внести вклад

Пожалуйста, ознакомьтесь с [руководством](CONTRIBUTING.md).

## Принятие пулреквестов

Для пользователей с кармой `doc/ru` команда для принятия пулреквеста:

```shell
# В качестве origin используется git@git.php.net:/doc/ru.git
# git remote add origin git@git.php.net:/doc/ru.git

bash scripts/apply_patch.sh %PR_NUM%

# То же самое, но вручную:
curl -L "http://url_of_github_patch.patch" | git am
git commit --am # Добавить в конец "Closes GH-%PR_NUM%"
git push origin
```
