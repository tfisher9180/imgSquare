		
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-md-8" style="padding: 0;">
					<img src="<?php echo base_url('uploads/'.$image->file_name); ?>" class="img-responsive image-view">
				</div>
			</div>
		</div>
		<div class="container">
			<button class="btn btn-primary btn-block btn-download"><i class="fa fa-download"></i> &nbsp;Free Download</button>
			<div class="media source-title">
				<div class="media-left media-middle">
				<?php if ($image->source == 'anonymous') { ?>
					<i class="fa fa-user-circle fa-4x"></i>
				<?php } ?>
				</div>
				<div class="media-body media-middle">
					<h4><?php echo $image->title; ?></h4>
					<p class="text-muted"><small>Source: <?php echo $image->source; ?></small></p>
				</div>
			</div>
			<div class="img-details-list">
				<h4>Details</h4>
				<ul class="list-group">
					<li class="list-group-item">
						<i class="fa fa-expand fa-fw fa-2x"></i>
						<h5 style="display: inline;"><?php echo $image->image_height; ?> x <?php echo $image->image_width; ?></h5>
					</li>
					<li class="list-group-item">
						<i class="fa fa-picture-o fa-fw fa-2x"></i>
						<h5 style="display: inline;"><?php echo strtoupper($image->image_type); ?></h5>
					</li>
					<li class="list-group-item">
						<i class="fa fa-info-circle fa-fw fa-2x"></i>
						<h5 style="display: inline;">Uploaded: <?php $date = new DateTime($image->date_uploaded); echo $date->format('F jS\, Y'); ?></h5>
					</li>
				</ul>
			</div>
		</div>
		