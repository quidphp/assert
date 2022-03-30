<?php
declare(strict_types=1);
// declare environment data for the testsuite, copy this file and rename to env.php

return [
    'cliEnvType'=>'dev/cms',

    'schemeHost'=>[
        'dev/assert'=>'https://assert.test',
        'prod/assert'=>'https://assert.com',
    ],

    'path'=>[
        'public'=>__DIR__.'/public',
        'src'=>__DIR__.'/src',
        'js'=>__DIR__.'/js',
        'css'=>__DIR__.'/css',
        'storage'=>__DIR__.'/storage',
        'vendor'=>__DIR__.'/vendor',
        'boot'=>'[vendor]/quidphp/site/test/Suite/BootSite.php'
    ],

    '@dev'=>[
        'db'=>['mysql:host=localhost;port=3306;dbname=projectTest;user=root','']],

    '@prod'=>[
        'db'=>['mysql:host=localhost;port=3306;dbname=projectTest;user=root','']],
];
?>