
		<div class="background-color">
			<div class="upload-form">
				<div class="container">
					<div class="row">
						<?php if (isset($errors)) { ?>
						<div class="container">
						<div class="well has-error">
						<?php echo '<span class="help-block text-center">'.$errors.'</span>'; ?>
						</div>
						</div>
						<?php } ?>
						<div class="col-xs-10 col-xs-offset-1 well well-white">
							<h4 class="text-center">Upload an image</h4>
							<form id="upload-form" method="POST" enctype="multipart/form-data">
								<div class="form-group <?php if (form_error('imageFile')) { echo 'has-error'; }  ?>">
									<label class="btn btn-primary btn-file">
										<i class="fa fa-plus"></i> <input type="file" name="imageFile" id="file" hidden>
										<?php echo form_error('imageFile', '<span id="file-error" class="help-block">', '</span>'); ?>
									</label>
									<span id="selected-img-name"></span>
								</div>
								<div class="form-group" style="position: relative;">
									<div id="img-preview-well" class="well text-center" for="imageFile">
										<span class="text-muted">Please select an image</span>
										<img id="img-preview" class="img-responsive" />
										<button id="close-img-preview" type="button" class="close"><i class="fa fa-times-circle"></i></button>
									</div>
								</div>
								<div class="form-group <?php echo form_error('title') ? 'has-error' : ''; ?>">
									<input type="text" name="title" class="form-control" placeholder="Image title" value="<?php echo set_value('title'); ?>">
									<?php echo form_error('title', '<span id="title-error" class="help-block">', '</span>'); ?>
								</div>
								<div class="form-group <?php echo form_error('caption') ? 'has-error' : ''; ?>">
									<textarea name="caption" class="form-control" rows="4" placeholder="Caption..."><?php echo set_value('caption'); ?></textarea>
									<?php echo form_error('caption', '<span id="caption-error" class="help-block">', '</span>'); ?>
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-block"><i class="fa fa-cloud-upload"></i> &nbsp;Upload image</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>