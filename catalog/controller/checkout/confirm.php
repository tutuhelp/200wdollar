<?php
class ControllerCheckoutConfirm extends Controller {
	public function index() {

		$order_data = array();
		
		// 商品详情
		$product_info = $this->session->data["shopping_product"];
		
		var_dump($product_info);die;
		

		
	
        return "Hello";
		//$this->response->setOutput($this->load->view('checkout/confirm', $data));
	}
}
