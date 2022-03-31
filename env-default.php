<?php

declare(strict_types=1);

/*
 * This file is part of the QuidPHP package <https://quidphp.com>
 * Author: Pierre-Philippe Emond <emondpph@gmail.com>
 * License: https://github.com/quidphp/assert/blob/master/LICENSE
 */

return [
    'cliEnvType'=> 'dev/assert',

    'schemeHost'=> [
        'dev/assert' => 'https://assert.test',
        'prod/assert'=> 'https://assert.com',
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

    'assert'=>[
        'target'=>true,
        'assertJs'=>true,
        'overviewServer'=>true,
        'overviewLine'=>false,
        'overviewAutoload'=>false
    ],

    'service'=>[
        'polyfill'=>[Quid\Lemur\Service\Polyfill::class,['mode'=>'ie11']]],

    '@dev'=>[
        'db'=>['mysql:host=localhost;port=3306;dbname=projectTest;user=root', '']],

    '@prod'=>[
        'db'=>['mysql:host=localhost;port=3306;dbname=projectTest;user=root', '']],
];
