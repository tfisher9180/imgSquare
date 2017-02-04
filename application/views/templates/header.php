<!DOCTYPE html>
<html lang="en">
	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>imgSquare</title>

		<link rel="stylesheet" href="<?php echo base_url('vendor/twbs/bootstrap/dist/css/bootstrap.min.css'); ?>">
		<link rel="stylesheet" href="<?php echo base_url('vendor/fortawesome/font-awesome/css/font-awesome.min.css'); ?>">
		<link rel="stylesheet" href="<?php echo base_url('vendor/assets/css/main.css'); ?>">
		<link rel="stylesheet" href="<?php echo base_url('vendor/dimsemenov/magnific-popup/dist/magnific-popup.css'); ?>">

	</head>
	<body>
		<div id="lightbox"></div>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
						<i class="fa fa-bars"></i>
					</button>
					<a href="<?php echo base_url(); ?>" class="navbar-brand">
						<img src="<?php echo base_url('vendor/assets/img/logo.png'); ?>" />
					</a>
				</div>
				<div id="navigation" class="navbar-collapse collapse">
					<button type="button" class="close"><span>&times;</span></button>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><i class="fa fa-search fa-1x fa-fw"></i></a></li>
						<li><a href="#" class="btn btn-primary">Signup</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<header id="page-header" style="background: linear-gradient(rgba(0, 0, 0, 0.45), rgba(0, 0, 0, 0.75)), url('<?php echo base_url('vendor/assets/img/home-image-2.jpg'); ?>'); background-size: cover; background-repeat: no-repeat; background-position: left bottom;">
			<div class="intro-text">
				<h1 class="text-center"><strong>CAPTURING MOMENTS</strong></h1>
				<h4 class="text-center">Take us with you wherever you go, browse or upload your favorite images</h4>
				<div class="cta-home-buttons text-center">
					<a href="#" class="btn btn-primary">Signup</a>
					<a href="#" class="btn btn-secondary">Browse</a>
				</div>
			</div>
		</header>