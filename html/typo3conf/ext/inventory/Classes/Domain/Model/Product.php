<?php
namespace OReilly\Inventory\Domain\Model;


use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;


class Product extends AbstractEntity {


	/**
	 * @var string
	 */
	protected $name = '';


	/**
	 * @var string
	 */
	protected $description = '';


	/**
	 * @var int
	 */
	protected $quantity = 0;


	/**
	 * @param $description
	 * @param $name
	 * @param $quantity
	 */
	public function __construct($description, $name, $quantity) {
		$this->description = $description;
		$this->name = $name;
		$this->quantity = $quantity;
	}


	/**
	 * @param string $description
	 */
	public function setDescription($description) {
		$this->description = $description;
	}


	/**
	 * @return string
	 */
	public function getDescription() {
		return $this->description;
	}


	/**
	 * @param string $name
	 */
	public function setName($name) {
		$this->name = $name;
	}


	/**
	 * @return string
	 */
	public function getName() {
		return $this->name;
	}


	/**
	 * @param int $quantity
	 */
	public function setQuantity($quantity) {
		$this->quantity = $quantity;
	}


	/**
	 * @return int
	 */
	public function getQuantity() {
		return $this->quantity;
	}


}