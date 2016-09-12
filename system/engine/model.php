<?php
abstract class Model {
	protected $registry;

	public function __construct($registry) {
		$this->registry = $registry;
	}

	public function __get($key) {
		return $this->registry->get($key);
	}

	public function __set($key, $value) {
		$this->registry->set($key, $value);
	}
	
	/**
	 * 数据库插入数据方法
	 * @author Seven <tuyingjie@moptical.com>
	 * @param string $table_name 表名
	 * @param array $new_data 数据对象，key列名, value值
	 * @return mixed 新纪录ID
	 */
	protected function insert($table_name, $new_data){
	    
	    if(empty($new_data) || !is_array($new_data)) return false;
	    
	    $sql = "";
	    //组合插入字符串
	    foreach ($new_data as $k=>$v){
	        //FIXME 此处要处理sql注入
	        $sql .= "{$k} = '".$this->db->escape($v)."', ";
	    }
	    
	    $sql = "INSERT INTO " . DB_PREFIX . "{$table_name} SET ".trim($sql,", ");
	    
	    $this->db->query($sql);
	    //返回插入id
	    return $this->db->getLastId();
	    
	}
	
	/**
	 * 更新数据
	 * @author Seven <tuyingjie@moptical.com>
	 * @param string $table_name 表名
	 * @param array $edit_data 编辑数据 key列名, value值
	 * @param string $where 更新条件
	 */
	protected function update($table_name, $edit_data, $where){
	    
	    if(empty($where) || empty($edit_data) || !is_array($edit_data)) return false;
	    
	    $sql = "";
	    //组合插入字符串
	    foreach ($edit_data as $k=>$v){
	        //FIXME 此处要处理sql注入
	        $sql .= "{$k} = '".$this->db->escape($v)."', ";
	    }
	    
	    $sql = "UPDATE " . DB_PREFIX . "{$table_name} SET ".trim($sql,", ")." WHERE {$where}";
	    
	    $this->db->query($sql);
	    
	    return $this->db->countAffected();
	}
	
}