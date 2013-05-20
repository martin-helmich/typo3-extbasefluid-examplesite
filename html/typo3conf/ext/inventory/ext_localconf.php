<?php

if (!defined('TYPO3_MODE')) {
	die ('Access denied.');
}

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
	'OReilly.' . $_EXTKEY,
	'List',
	array(
		'Inventory' => 'index'
	)
);