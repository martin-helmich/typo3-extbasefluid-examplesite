<?php
if (!defined('TYPO3_MODE')) {
	die ('Access denied.');
}

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
	'OReilly.' . $_EXTKEY,
	'Pi',
	array(
		'Product' => 'list',
		
	),
	// non-cacheable actions
	array(
		'Product' => '',
		
	)
);

?>