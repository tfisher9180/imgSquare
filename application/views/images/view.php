		
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-md-8" style="padding: 0;">
					<img src="<?php echo base_url('uploads/'.$image->file_name); ?>" class="img-responsive image-view">
				</div>
			</div>
		</div>
		<div class="container narrower">
			<a href="<?php echo base_url('uploads/'.$image->file_name); ?>" class="btn btn-primary btn-block btn-download" download><i class="fa fa-download"></i> &nbsp;Free Download</a>
			<div class="media source-title">
				<div class="media-left media-middle">
				<?php if ($image->source == 'anonymous') { ?>
					<i class="fa fa-user-circle fa-4x"></i>
				<?php } ?>
				</div>
				<div class="media-body media-middle">
					<h4><?php echo $image->title; ?></h4>
					<p class="text-muted"><small>Source: <?php echo $image->source; ?></small></p>
					<a href="#caption" data-toggle="collapse" class="show-caption"><small>Show caption</small></a>
				</div>
				<div id="caption" class="collapse">
					<div class="well">
						<p><?php echo $image->caption ?></p>
					</div>
				</div>
			</div>
			<div class="img-caption text-muted">
				<p>Description: <?php echo $image->caption; ?></p>
			</div>
			<div class="img-details-list">
				<h4>Details</h4>
				<ul class="list-group">
					<li class="list-group-item">
						<div class="media">
							<div class="media-left media-middle">
								<i class="fa fa-expand fa-fw fa-2x"></i>
							</div>
							<div class="media-body">
								<h5 class="detail-item-heading"><?php echo $image->image_height; ?> x <?php echo $image->image_width; ?></h5>
								<p class="text-muted detail-item-small"><small><?php echo $image->file_size >= 1024 ? $image->file_size/1024 . ' MB' : $image->file_size . ' KB'; ?></small></p>
							</div>
						</div>
					</li>
					<li class="list-group-item">
						<div class="media">
							<div class="media-left media-middle">
								<i class="fa fa-picture-o fa-fw fa-2x"></i>
							</div>
							<div class="media-body">
								<h5 class="detail-item-heading"><?php echo strtoupper($image->image_type); ?></h5>
								<p class="text-muted detail-item-small"><small><?php echo $image->file_type; ?></small></p>
							</div>
						</div>
					</li>
					<li class="list-group-item">
						<div class="media">
							<div class="media-left media-middle">
								<i class="fa fa-info-circle fa-fw fa-2x"></i>
							</div>
							<div class="media-body">
								<h5 class="detail-item-heading">Uploaded: <?php $date = new DateTime($image->date_uploaded); echo $date->format('F jS\, Y'); ?></h5>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="cta" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('<?php echo base_url('vendor/assets/img/cta.jpeg'); ?>'); background-size: cover; background-position: center center; background-repeat: no-repeat;">
			<div class="container text-center">
				<h1 class="heading">Subscribe for free photos</h1>
				<h5>Receive a monthly newsletter with our latest images</h5>
				<form>
					<div class="input-group">
						<input type="text" name="email" placeholder="Your email" class="form-control">
						<span class="input-group-addon btn-primary">Subscribe</span>
					</div>
				</form>
			</div>
		</div>
		