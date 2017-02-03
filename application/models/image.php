<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php

	class Image extends CI_Model {

		public function __construct() {
			parent::__construct();
		}

		public function get_images($select = '*', $where = NULL, $order_by) {

			if ($select) {
				$select = implode(', ', $select);
			}

			if (!$where) {
				$query = $this->db->select($select)->order_by($order_by['field'], $order_by['direction'])->get('images');
			} else {

			}

			return $query->result();

		}

		public function add_image($data) {

			$data['date_uploaded'] = date('Y-m-d H:i:s');
			return $this->db->insert('images', $data);

		}

	}

?>