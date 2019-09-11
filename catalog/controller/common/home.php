<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['addresses'] = explode("\r\n",$this->config->get('config_address'));
		$data['email'] = $this->config->get('config_email');
		$data['telephone'] = $this->config->get('config_telephone');
		
		foreach($data['addresses'] as $index => $row){
			if(empty($row)){
				unlink($data['addresses'][$index]);
			}else{
				$data['addresses'][$index] = html_entity_decode($row, ENT_QUOTES, 'UTF-8');
			}
		}
		
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		
		$data['products'] = array();

		$filter_data = array(
			'filter_category_id' => 0,
			'sort'               => 'sort_order',
			'order'              => 'ASC',
			'start'              => 0,
			'limit'              => 100
		);

		$results = $this->model_catalog_product->getProducts($filter_data);

		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
			}

			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$price = false;
			}

			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$special = false;
			}

			if ($this->config->get('config_tax')) {
				$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
			} else {
				$tax = false;
			}

			if ($this->config->get('config_review_status')) {
				$rating = (int)$result['rating'];
			} else {
				$rating = false;
			}
			
			$categorys = $this->model_catalog_product->getProductCategories($result['product_id']);
			$category_id = array_shift($categorys);
			$category_info = $this->model_catalog_category->getCategory($category_id);
			
			$images = array();
			$images_results = $this->model_catalog_product->getProductImages($result['product_id']);

			foreach ($images_results as $image_a) {
				$images[] = array(
					'doc' => $this->model_tool_image->resize($image_a['image'], 120, 120),
					'popup' => $this->model_tool_image->resize($image_a['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height')),
					'thumb' => $this->model_tool_image->resize($image_a['image'], $this->config->get($this->config->get('config_theme') . '_image_additional_width'), $this->config->get($this->config->get('config_theme') . '_image_additional_height'))
				);
			}
			
			$products = array(
				'product_id'  => $result['product_id'],
				'price_int'  => $result['price'],
				'thumb'       => $image,
				'image'        => 'image/'.$result['image'],
				'name'        => html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8'),
				'category_id'        => $category_id,
				'category_name' => html_entity_decode($category_info['name'], ENT_QUOTES, 'UTF-8'), 
				'description' => html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'),
				'images'       => $images,
				'meta_title' => $result['meta_title'],
				'price'       => $price,
				'special'     => $special,
				'attribute_groups' => $this->model_catalog_product->getProductAttributes($result['product_id']),
				'tax'         => $tax,
				'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
				'rating'      => $result['rating'],
				//'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
			);
		
			if($category_id == 70){
				$data['products'][$category_id][] = $products;
				$data['products'][$category_id]['category_id'] = $category_id;
			}else{
				$data['products'][] = $products;
			}
			
		}
	
		
		
		
		
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
