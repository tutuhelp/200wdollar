<?php
class ControllerCheckoutConfirm extends Controller {
	public function index() {

		$order_data = array();
		
		// 载入product对象
		$this->load->model("catalog/product");
		
		$product_info = $this->model_catalog_product->getConfirm();
		var_dump($product_info);die;
		

		
	
        return "Hello";
		//$this->response->setOutput($this->load->view('checkout/confirm', $data));
	}
}
