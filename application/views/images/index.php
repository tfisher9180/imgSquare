		
		<a href="<?php echo site_url('upload'); ?>" class="btn btn-primary btn-add-image btn-block">
			<div class="pull-left">
				<span>Upload an image</span>
			</div>
			<div class="pull-right">
				<i class="fa fa-plus fa-4px"></i>
			</div>
			<div class="clearfix"></div>
		</a>
		<?php echo $this->session->flashdata('msg'); ?>
		<main id="image-list">
			<div class="container">
				<div class="row">
				<?php foreach ($images as $image) { ?>
					<div class="col-xs-4">
						<div class="thumbnail center-block" data-path="<?php echo base_url('uploads/'.$image->file_name); ?>" data-view="<?php echo site_url('images/view/'.$image->id); ?>">
							<img src="<?php echo base_url('uploads/'.$image->file_name); ?>" alt="<?php echo $image->title; ?>" class="img-responsive" />
						</div>
					</div>
				<?php } ?>
				</div>
			</div>
		</main>
