<?php

$EM_CONF[$_EXTKEY] = array(
	'title'            => 'Inventory list',
	'description'      => 'An extension to manage a stock',
	'category'         => 'plugin',
	'author'           => 'Martin Helmich',
	'author_email'     => '',
	'author_company'   => '',
	'dependencies'     => 'extbase,fluid',
	'state'            => 'stable',
	'clearcacheonload' => 1,
	'version'          => '1.0.0',
	'constraints'      => array(
		'depends'   => array(
			'php'     => '5.3.0-0.0.0',
			'typo3'   => '6.0.0-6.1.99',
			'extbase' => '6.0.0-6.1.99',
			'fluid'   => '6.0.0-6.1.99'
		),
		'conflicts' => array(),
		'suggests'  => array(),
	),
);
