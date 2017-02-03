<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php

	class Images extends CI_Controller {

		public function __construct() {
			parent::__construct();
			$this->load->model('image');
		}

		public function index() {

			$select = array('id', 'title', 'caption', 'image_type', 'file_name');
			$order_by = array(
				'field' => 'date_uploaded',
				'direction' => 'DESC'
			);
			$data['images'] = $this->image->get_images($select, null, $order_by);

			$this->load->view('templates/header');
			$this->load->view('images/index', $data);
			$this->load->view('templates/footer');

		}

		public function upload() {

			$this->load->helper('form');
			$footer['scripts'] = array('jquery.validate.min.js', 'additional-methods.min.js', 'validate_upload_form.js');

			if ($_POST) {
				$this->load->library('form_validation');

				$this->form_validation->set_rules('title', 'Title', 'required|max_length[100]');
				$this->form_validation->set_rules('caption', 'Caption', 'max_length[255]');

				$this->form_validation->set_message('required', 'Please fill in this field!');
				$this->form_validation->set_message('max_length', '{field} may only be {param} characters');

				if (empty($_FILES['imageFile']['name'])) {
					$this->form_validation->set_rules('imageFile', 'Image', 'required', array('required' => 'Please select a file'));
				}

				if ($this->form_validation->run() == FALSE) {
					$this->load->view('templates/header');
					$this->load->view('images/upload');
					$this->load->view('templates/footer', $footer);
				} else {
					$config = array (
						'upload_path' => './uploads/',
						'allowed_types' => 'jpg|jpeg|png|gif',
						'max_size' => '5048576'
					);

					$this->load->library('upload', $config);

					if (!$this->upload->do_upload('imageFile')) {
						$errors['errors'] = $this->upload->display_errors();

						$this->load->view('templates/header');
						$this->load->view('images/upload', $errors);
						$this->load->view('templates/footer', $footer);
					} else {
						$upload_data = $this->upload->data();
						$form_data = $this->input->post(NULL, TRUE);

						$data = array_merge($upload_data, $form_data);

						if ($this->image->add_image($data)) {
							$this->session->set_flashdata('msg', '<div class="container-fluid"><div class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span>&times;</span></button><strong>Success!</strong> Image uploaded successfully!</div></div>');
							redirect('');
						} else {
							$this->session->set_flashdata('msg', '<div class="container-fluid"><div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert"><span>&times;</span></button><strong>Failed!</strong> There was a problem uploading your image, please try again!</div></div>');
							redirect('');
						}
					}
				}
			} else {
				$this->load->view('templates/header');
				$this->load->view('images/upload');
				$this->load->view('templates/footer', $footer);
			}	

		}

	}

?>