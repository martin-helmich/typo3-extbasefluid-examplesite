<?php

$configuration = require_once __DIR__ . '/../html/typo3conf/LocalConfiguration.php';

$configuration['DB']['username'] = 'travis';
$configuration['DB']['password'] = '';

file_put_contents(
	__DIR__ . '/../html/typo3conf/LocalConfiguration.php',
	'<?php return ' . var_export($configuration, TRUE) . ';'
);
