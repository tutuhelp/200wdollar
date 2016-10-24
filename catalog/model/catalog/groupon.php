<?php
require_once 'product.php';
class ModelCatalogGroupon extends ModelCatalogProduct {
	
	/**
	 * 以浏览量倒序排列
	 * @author Seven <tuyingjie@moptical.com>
	 * @param int $limit 获取的数量
	 */
	public function getHotProducts($limit) {
		$product_data = $this->cache->get('product.hot.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . $this->config->get('config_customer_group_id') . '.' . (int)$limit);

		if (!$product_data) {
		    
			$product_data = $this->getProductsByPage($limit,1,"p.viewed DESC");

			$this->cache->set('product.hot.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . $this->config->get('config_customer_group_id') . '.' . (int)$limit, $product_data);
		}

		return $product_data;
	}
	
	/**
	 * 分页获取产品列表
	 * @author Seven <tuyingjie@moptical.com>
	 * @param number $limit 每页显示数量
	 * @param int $page 页码
	 * @param string $order_by 排序字段
	 */
	private function getProductsByPage($limit = 6, $page = 1,$order_by = "p.date_added DESC"){
	    $product_data = array();
	    /* 安全默认设置 */
	    if((int)$page<1) $page = 1;
	    if((int)$limit<1) $limit = 6;
	    // 数据开始位置
	    $start = ($page-1)*$limit;
	    // 表前缀
	    $db_prefix = DB_PREFIX;
	    $lang_id = (int)$this->config->get('config_language_id');
	    // 执行的SQL语句
	    $sql = "SELECT p.product_id,p.image,pd.name,p.price,p.tax_class_id,pg.groupon_price,pg.persons FROM {$db_prefix}product_groupon pg
                LEFT JOIN {$db_prefix}product p ON pg.product_id=p.product_id
                LEFT JOIN {$db_prefix}product_description pd ON pg.product_id=pd.product_id
                WHERE p.quantity>0 AND p.date_available<now() AND pd.language_id='{$lang_id}'
                ORDER BY {$order_by},pg.product_id DESC
                LIMIT {$start},{$limit}";
	    
	    $query = $this->db->query($sql);
	    
	    foreach ($query->rows as $result) {
	        $product_data[$result['product_id']] = array(
	                'product_id'       => $result['product_id'],
	                'name'             => $result['name'],
	                'image'            => $result['image'],
	                'price'            => $result['price'],
	                'groupon_price'    => $result['groupon_price'],
	                'persons'          => $result['persons'],
	                'tax_class_id'     => $result['tax_class_id'],
	                
	        );
	    }
	    
	    return $product_data;
	}
	
	public function getConfirm(){
	    
	    
	    
	}

}
