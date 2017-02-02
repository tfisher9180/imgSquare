		
		<div class="upload-form">
			<div class="container">
				<div class="row">
					<div class="col-xs-10 col-xs-offset-1">
						<h4 class="text-center">Upload an image</h4>
						<form action="" method="POST" enctype="multipart/form-data">
							<div class="form-group">
								<div class="input-group">
									<input type="file" name="imageFile" class="form-control">
									<label for="imageFile">
										<div class="input-group-addon"><i class="fa fa-plus"></i></div>
									</label>
									<span class="upload-helper">Select an image</span>
								</div>
							</div>
							<div class="form-group">
								<input type="text" name="title" class="form-control" placeholder="Image title">
							</div>
							<div class="form-group">
								<textarea name="description" class="form-control" rows="4" placeholder="Description..."></textarea>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">Upload image</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>