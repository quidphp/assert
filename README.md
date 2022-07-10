# QuidPHP/Assert
[![Release](https://img.shields.io/github/v/release/quidphp/assert)](https://packagist.org/packages/quidphp/assert)
[![License](https://img.shields.io/github/license/quidphp/assert)](https://github.com/quidphp/assert/blob/master/LICENSE)
[![PHP Version](https://img.shields.io/packagist/php-v/quidphp/assert)](https://www.php.net)
[![Style CI](https://styleci.io/repos/475963741/shield)](https://styleci.io)
[![Code Size](https://img.shields.io/github/languages/code-size/quidphp/assert)](https://github.com/quidphp/assert)

## About
**QuidPHP/Assert** repository contains an application to run the testsuite. This testsuite contains roughly 15000 assertions which will thoroughly test your PHP setup. It also comes with some JavaScript tests.

## License
**QuidPHP/Assert** is available as an open-source software under the [MIT license](LICENSE).

## Documentation
**QuidPHP/Assert** documentation is available at [QuidPHP/Docs](https://github.com/quidphp/docs).

## Installation
**QuidPHP/Assert** can be easily installed with [Composer](https://getcomposer.org). It is available on [Packagist](https://packagist.org/packages/quidphp/assert).
``` bash
$ composer create-project quidphp/assert --prefer-dist
```

## Requirement
**QuidPHP/Assert** requires the following:
- Apache or Nginx server (running on MacOs or Linux environment). 
    - Works in Windows environment but there are **known issues**.
- PHP 8.1 
    - with these extensions:
        - ctype
        - curl
        - date
        - fileinfo
        - gd
        - iconv
        - json
        - mbstring
        - pcre
        - openssl
        - session
        - SimpleXML
        - zip
        - PDO
        - pdo_mysql
    - and these PHP INI directives
        - *post_max_size* must be at least 1MB
        - *post_max_size* must be larger than *upload_max_filesize*
        - *memory_limit* must be at least 128MB
- Mysql (>= 8.0) or MariaDB (>= 10.4) database
- Any modern browser (not Internet Explorer)

## Dependency
**QuidPHP/Assert** has the following dependency:
- [quidphp/site](https://github.com/quidphp/site) - Quid\Site - Extended platform to build a website using the QuidPHP framework and LemurCMS

All dependencies will be resolved by using the [Composer](https://getcomposer.org) installation process.

## Setup
Once the installation is complete, simply follow these steps:
1. Make sure the main directory and all sub-directories are writable by your web server.
2. Configure an Apache Virtual Host or Nginx Server Block in order to have a domain pointing to the [public](public) folder document root.
3. Import [db.sql](db.sql) within a new Mysql/MariaDB database.
4. Duplicate the [env-default.php](env-default.php) file and rename it to **env.php**.
5. Update the scheme hosts within the **env.php** file to reflect your server configuration.
6. Update the database parameters within the **env.php** file.

## Booting via HTTP
From your web browser, enter the URL to the [public/index.php](public/index.php) entry file.

## Booting via CLI
Open the project folder in the Command Line. You may now submit a command in the following format: 
``` bash
php quid
php quid :prod/assert
```

## Overview
**QuidPHP/Assert** contains 9 files. Here is an overview:
- [.gitignore](.gitignore) - Standard .gitignore file for the testsuite
- [composer.json](composer.json) - File declaring all Composer PHP dependencies
- [db.sql](db.sql) - Sql database required for the QuidPHP testsuite
- [env-default.php](env-default.php) - Declare environment data for the testsuite, copy this file and rename to env.php
- [LICENSE](LICENSE) - MIT License file for the repository
- [quid](quid) - File for booting the testsuite via CLI
- [README.md](README.md) - This readme file in markdown format
- [public/.htaccess](public/.htaccess) - Simple apache directive file, requires mod_rewrite
- [public/index.php](public/index.php) - Index file for booting the testsuite via an HTTP request

## Known issues
- The testsuite fails on Windows when using the Command Prompt.
- On Windows, there are some problems related to creating symlinks.
- On Windows, you will need to add *lower_case_table_names* = 2 in your database configuration file (my.cnf). The table and column names need to be stored in their natural case.
- On some setup, you may need to add your domain to your system hosts file. If not, some assertions involving curl may fail.