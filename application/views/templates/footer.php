		
		<footer id="page-footer">
			<div class="container">
				<ul class="list-inline social-list text-center">
					<li>
						<span class="fa-stack fa-lg">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-facebook fa-stack-1x"></i>
						</span>
					</li>
					<li>
						<span class="fa-stack fa-lg">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-twitter fa-stack-1x"></i>
						</span>
					</li>
					<li>
						<span class="fa-stack fa-lg">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-instagram fa-stack-1x"></i>
						</span>
					</li>
					<li>
						<span class="fa-stack fa-lg">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-google-plus fa-stack-1x"></i>
						</span>
					</li>
					<li>
						<span class="fa-stack fa-lg">
							<i class="fa fa-circle fa-stack-2x"></i>
							<i class="fa fa-pinterest-p fa-stack-1x"></i>
						</span>
					</li>
				</ul>
				<p class="text-muted email text-center">support@imgsquare.com</p>
				<p class="text-muted copyright text-center"><small>&copy; 2017. All Rights Reserved.</small></p>
			</div>
		</footer>		
		
		<script src="<?php echo base_url('vendor/components/jquery/jquery.min.js'); ?>"></script>
		<script src="<?php echo base_url('vendor/twbs/bootstrap/dist/js/bootstrap.min.js'); ?>"></script>
		<script src="<?php echo base_url('vendor/dimsemenov/magnific-popup/dist/jquery.magnific-popup.min.js'); ?>"></script>
		<script src="<?php echo base_url('vendor/assets/js/main.js'); ?>"></script>
<?php if (isset($scripts)) { foreach($scripts as $script) { ?>
		<script src="<?php echo base_url('vendor/assets/js/'.$script); ?>"></script>
<?php }} ?>

	</body>
</html>