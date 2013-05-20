<?php
namespace OReilly\Inventory\Controller;


use OReilly\Inventory\Domain\Repository\ProductRepository;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;


class InventoryController extends ActionController {

	/**
	 * @var \Tx\Inventory\Domain\Repository\ProductRepository
	 */
	protected $productRepository;

	public function injectProductRepository(ProductRepository $productRepository) {
		$this->productRepository = $productRepository;
	}

	public function indexAction() {
		$products = $this->productRepository->findAll();
		$this->view->assign('products', $products);
	}
}