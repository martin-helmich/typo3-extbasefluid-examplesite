<?php

namespace OReilly\Inventory\Tests;
/***************************************************************
 *  Copyright notice
 *
 *  (c) 2013 Martin Helmich <typo3@martin-helmich.de>
 *  			
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/

/**
 * Test case for class \OReilly\Inventory\Domain\Model\Product.
 *
 * @version $Id$
 * @copyright Copyright belongs to the respective authors
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 *
 * @package TYPO3
 * @subpackage Inventory
 *
 * @author Martin Helmich <typo3@martin-helmich.de>
 */
class ProductTest extends \TYPO3\CMS\Extbase\Tests\Unit\BaseTestCase {
	/**
	 * @var \OReilly\Inventory\Domain\Model\Product
	 */
	protected $fixture;

	public function setUp() {
		$this->fixture = new \OReilly\Inventory\Domain\Model\Product();
	}

	public function tearDown() {
		unset($this->fixture);
	}

	/**
	 * @test
	 */
	public function getNameReturnsInitialValueForString() { }

	/**
	 * @test
	 */
	public function setNameForStringSetsName() { 
		$this->fixture->setName('Conceived at T3CON10');

		$this->assertSame(
			'Conceived at T3CON10',
			$this->fixture->getName()
		);
	}
	
	/**
	 * @test
	 */
	public function getDescriptionReturnsInitialValueForString() { }

	/**
	 * @test
	 */
	public function setDescriptionForStringSetsDescription() { 
		$this->fixture->setDescription('Conceived at T3CON10');

		$this->assertSame(
			'Conceived at T3CON10',
			$this->fixture->getDescription()
		);
	}
	
	/**
	 * @test
	 */
	public function getQuantityReturnsInitialValueForInteger() { 
		$this->assertSame(
			0,
			$this->fixture->getQuantity()
		);
	}

	/**
	 * @test
	 */
	public function setQuantityForIntegerSetsQuantity() { 
		$this->fixture->setQuantity(12);

		$this->assertSame(
			12,
			$this->fixture->getQuantity()
		);
	}
	
}
?>