<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php

	class Images extends CI_Controller {

		public function __construct() {
			parent::__construct();
			$this->load->model('image');
		}

		public function index() {

			$data['images'] = $this->image->get_images();

			$this->load->view('templates/header');
			$this->load->view('images/index', $data);
			$this->load->view('templates/footer');

		}

		public function upload() {

			if ($_POST) {

			}

			$footer['has_form'] = true;

			$this->load->view('templates/header');
			$this->load->view('images/upload');
			$this->load->view('templates/footer', $footer);

		}

	}

?>