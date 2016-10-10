<?php
class ControllerProductHot extends Controller {
	public function index() {
		
	    $setting = array(
	            'limit' => 6,
	            'width' => 300,
	            'height' => 300,
	    );
	    $this->load->language('product/hot');
	    $data['text_tax'] = $this->language->get('text_tax');
	    
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/groupon');

		$this->load->model('tool/image');

		$data['products'] = array();

		$results = $this->model_catalog_groupon->getHotProducts($setting['limit']);

		if ($results) {
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($result['price'], $this->session->data['currency']);
				} else {
					$price = false;
				}
				$groupon_price = $this->currency->format($result['groupon_price'], $this->session->data['currency']);

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'price'       => $price,
					'groupon_price' => $groupon_price,
				    'persons'     => $result['persons'],
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}

			return $this->load->view('product/hot', $data);
		}
	}
}
