		
		<!--<a href="" class="btn btn-primary btn-add-image btn-block">
			<div class="pull-left">
				<span>Upload an image</span>
			</div>
			<div class="pull-right">
				<i class="fa fa-plus fa-4px"></i>
			</div>
			<div class="clearfix"></div>
		</a>-->
		<?php echo $this->session->flashdata('msg'); ?>
		<main id="image-list">
			<div class="container-fluid">
				<div class="grid">
					<div class="grid-sizer"></div>

					<?php 

						$count = 1;
						$space_remaining = 100;
						foreach ($images as $image) {
							if ($count > 3) {
								$space_remaining = 100;
							}
							if ($image->image_width > 3000) {
								$space_remaining = $space_remaining - 40;
								if ($space_remaining < 0) {
									echo '<div class="grid-item grid-item-width-20"><img src="'.base_url('uploads/'.$image->file_name).'" /></div>';
								}
								echo '<div class="grid-item grid-item-width-40"><img src="'.base_url('uploads/'.$image->file_name).'" /></div>';
							} else {
								echo '<div class="grid-item"><img src="'.base_url('uploads/'.$image->file_name).'" /></div>';
							}
							$count++;
						}
			

					?>

				</div>
			</div>
		</main>
