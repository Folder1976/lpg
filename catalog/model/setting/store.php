<?php
class ModelSettingStore extends Model {
	public function getStores($data = array()) {
		$store_data = false;//$this->cache->get('store');

		if (!$store_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "store ORDER BY url");

			$store_data = array();
			
			 foreach($query->rows as $row){
				$store_data[$row['store_id']] = $row;
			 }

			$this->cache->set('store', $store_data);
		}

		return $store_data;
	}
}