# QuidPHP/Assert
[![Release](https://img.shields.io/github/v/release/quidphp/assert)](https://packagist.org/packages/quidphp/assert)
[![License](https://img.shields.io/github/license/quidphp/assert)](https://github.com/quidphp/assert/blob/master/LICENSE)
[![PHP Version](https://img.shields.io/packagist/php-v/quidphp/assert)](https://www.php.net)
[![Style CI](https://styleci.io/repos/475963741/shield)](https://styleci.io)
[![Code Size](https://img.shields.io/github/languages/code-size/quidphp/assert)](https://github.com/quidphp/assert)

## About
**QuidPHP/Assert** repository contains an application to run the testsuite. This testsuite contains roughly 15000 assertions which will thoroughly test your PHP setup. It also comes with some Javascript tests.

## License
**QuidPHP/Assert** is available as an open-source software under the [MIT license](LICENSE).

## Documentation
**QuidPHP/Project** documentation is being written. Once ready, it will be available at [QuidPHP/Docs](https://github.com/quidphp/docs).

## Installation
**QuidPHP/Assert** can be easily installed with [Composer](https://getcomposer.org). It is available on [Packagist](https://packagist.org/packages/quidphp/assert).
``` bash
$ composer create-project quidphp/assert --prefer-dist
```

## Requirement
**QuidPHP/Assert** requires the following:
- PHP 7.4, 8.0 or 8.1 with these extensions:
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
- The following PHP INI directives are also required:
    - *post_max_size* must be at least 1MB
    - *post_max_size* must be larger than *upload_max_filesize*
    - *memory_limit* must be at least 128MB
- Mysql (>= 8.0) or MariaDB (>= 10.5) database
- Apache or Nginx server
    - Running on MacOs, Windows or Linux
- Minimal browser: Internet Explorer 11

## Dependency
**QuidPHP/Assert** has the following dependencies:
- [quidphp/base](https://github.com/quidphp/base) - Quid\Base - PHP library that provides a set of low-level static methods
- [quidphp/main](https://github.com/quidphp/main) - Quid\Main - PHP library that provides a set of base objects and collections 
- [quidphp/orm](https://github.com/quidphp/orm) - Quid\Orm - PHP library that provides database access and a comprehensive ORM
- [quidphp/routing](https://github.com/quidphp/routing) - Quid\Routing - PHP library that provides a route matching and triggering procedure
- [quidphp/core](https://github.com/quidphp/core) - Quid\Core - PHP library that provides an extendable platform to create dynamic applications
- [quidphp/front](https://github.com/quidphp/front) - Quid\Front - QuidPHP JavaScript and CSS front-end assets
- [quidphp/lemur](https://github.com/quidphp/lemur) - Quid\Lemur - LemurCMS, a content management system built on top of the QuidPHP framework
- [verot/class.upload.php](https://github.com/verot/class.upload.php) - Verot\Upload - A popular PHP class used for resizing images
- [phpmailer/phpmailer](https://github.com/phpmailer/phpmailer) - PHPMailer\PHPMailer - The classic email sending library for PHP
- [tedivm/jshrink](https://github.com/tedious/JShrink) - JShrink - Javascript Minifier built in PHP
- [scssphp/scssphp](https://github.com/scssphp/scssphp) - ScssPhp\ScssPhp - SCSS compiler written in PHP

All dependencies will be resolved by using the [Composer](https://getcomposer.org) installation process.

## Setup
Once the installation is complete, simply follow these steps:
1. Make sure the main directory and all sub-directories are writable your web server.
2. Configure an Apache Virtual Host or Nginx Server Block in order to have a domain pointing to the [public](public) folder document root.
3. Import [db.sql](db.sql) within a new Mysql/MariaDB database.
4. Duplicate the [env-default.php](env-default.php) file and rename it to **env.php**.
5. Update the scheme hosts within the **env.php** file.
6. Update the database parameters within the **env.php** file.

## Booting
There are two ways to boot the testsuite.

### HTTP
From your web browser, enter the URL to the [public/index.php](public/index.php) entry file.

### CLI
Open the main directory in the Command Line. Write **php quid** or **php quid :prod/assert** within the Command Line Interface.

## Overview
**QuidPHP/Assert** contains 9 files. Here is an overview:
- [.gitignore](.gitignore) - Standard .gitignore file for the testsuite
- [composer.json](composer.json) - File declaring all Composer PHP dependencies
- [env-default.php](env-default.php) - Declare environment data for the testsuite, copy this file and rename to env.php
- [LICENSE](LICENSE) - MIT License file for the repository
- [quid](quid) - File for booting the testsuite via CLI
- [README.md](README.md) - This readme file in markdown format
- [db.sql](db.sql) - Sql database required for the QuidPHP testsuite
- [public/.htaccess](public/.htaccess) - Simple apache directive file, requires mod_rewrite
- [public/index.php](public/index.php) - Index file for booting the testsuite via an HTTP request

## Known issues
- On some setup, you may need to add your domain to the system hosts file. If not, some assertions involving curl may fail.
- The testsuite fails on Windows when using the Command Prompt.
- On Windows, you will need to add *lower_case_table_names* = 2 in your database configuration file (my.cnf). The table and column names need to be stored in their natural case.