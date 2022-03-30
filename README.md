# QuidPHP/Assert
[![Release](https://img.shields.io/github/v/release/quidphp/assert)](https://packagist.org/packages/quidphp/assert)
[![License](https://img.shields.io/github/license/quidphp/assert)](https://github.com/quidphp/assert/blob/master/LICENSE)
[![PHP Version](https://img.shields.io/packagist/php-v/assert/project)](https://www.php.net)
[![Style CI](https://styleci.io/repos/475963741/shield)](https://styleci.io)
[![Code Size](https://img.shields.io/github/languages/code-size/quidphp/assert)](https://github.com/quidphp/assert)

## Test suite
**QuidPHP/Project** test suite contains about 15000 assertions which can thoroughly test your setup. In order to run the test suite, follow the Installation steps and then do the following:
1. Import [sql/test.sql.zip](sql/test.sql.zip) within a new Mysql/MariaDB database.
2. Update the database parameters within the **env.php** file (look at @assert).
3. Update the scheme hosts within the **env.php** file (dev/assert or prod/assert).
4. To boot the test suite you can use the Web browser or the Cli.
    - Web browser: enter the URL to the [public/test.php](public/test.php) entry file (using the host for @assert).
    - CLI: write **php quid /:dev/assert** or **php quid /:prod/assert** within the Command Line Interface.

### Known issues
- The testsuite fails on Windows when using the Command Prompt.
- On some setup, you may need to add your domain to the system hosts file. If not, some assertions involving curl may fail.
- On Windows, you will need to add *lower_case_table_names* = 2 in your database configuration file (my.cnf). The table and column names need to be stored in their natural case.
