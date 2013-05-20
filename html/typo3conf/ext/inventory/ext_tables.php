<?php

if (!defined('TYPO3_MODE')) {
	die ('Access denied.');
}

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
	'OReilly.' . $_EXTKEY, 'List', 'Inventory list');

$TCA['tx_inventory_domain_model_product'] = array(
	'ctrl' => array(
		'title' => 'Lagerbestände',
		'label' => 'name'
	),
	'columns' => array(
		'name' => array(
			'label' => 'Produktbezeichnung',
			'config' => array(
				'type' => 'input',
				'size' => 20,
				'eval' => 'trim,required'
			)
		),
		'description' => array(
			'label' => 'Produktbeschreibung',
			'config' => array(
				'type' => 'text',
				'eval' => 'trim'
			)
		),
		'quantity' => array(
			'label' => 'Lagerbestand',
			'config' => array(
				'type' => 'input',
				'size' => 4,
				'eval' => 'int'
			)
		)
	),
	'types' => array(
		'0' => array('showitem' => 'name,description,quantity')
	)
);