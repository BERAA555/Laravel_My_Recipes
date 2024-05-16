@extends('layouts.master')
@section('css')
<!--  Owl-carousel css-->
<link href="{{URL::asset('assets/plugins/owl-carousel/owl.carousel.css')}}" rel="stylesheet" />
<!-- Maps css -->
<link href="{{URL::asset('assets/plugins/jqvmap/jqvmap.min.css')}}" rel="stylesheet">
@endsection

@section('content')
<div class="col-xl-12 col-lg-12 col-md-12">
	<div class="card"></div>
	<div class="row row-sm " >

		<div class="col-md-6 col-lg-6 col-xl-3 col-sm-6">
			<div class="card">
				<div class="card-body">
					<div class="pro-img-box">
						<div class="d-flex product-sale">
							<i class="mdi mdi-heart-outline ml-auto wishlist"></i>
							<!-- <i class="mdi mdi-heart ml-auto wishlist text-danger"></i> -->
						</div>
						<img class="w-100" src="http://127.0.0.1:8000/assets/img/ecommerce/01.jpg" alt="product-image">
						<!-- <a href="#" class="adtocart"><i class="mdi mdi-heart-outline ml-auto wishlist"></i> -->
						<a href="#" class="adtocart"><i class="far fa-check-circle"></i>

						</a>
					</div>
					<div class="text-center pt-3">
						<h3 class="h6 mb-2 mt-4 font-weight-bold text-uppercase">FLOWER POT</h3>
						<p lang="rtl" style="white-space: nowrap; overflow: hidden; text-overflow:ellipsis ; font-size:14px ; color : red">FLOWER POT FLOWER POT </p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-xl-3 col-sm-6">
			<div class="card">
				<div class="card-body">
					<div class="pro-img-box">
						<div class="d-flex product-sale">
							<!-- <i class="mdi mdi-heart-outline ml-auto wishlist"></i> -->
							<i class="mdi mdi-heart ml-auto wishlist text-danger"></i>
						</div>
						<img class="w-100" src="http://127.0.0.1:8000/assets/img/ecommerce/01.jpg" alt="product-image">
						<a href="#" class="adtocart"><i class="mdi mdi-heart-outline ml-auto wishlist"></i>
						<!-- <a href="#" class="adtocart"><i class="far fa-check-circle"></i> -->

						</a>
					</div>
					<div class="text-center pt-3">
						<h3 class="h6 mb-2 mt-4 font-weight-bold text-uppercase">FLOWER POT</h3>
						<p lang="rtl" style="white-space: nowrap; overflow: hidden; text-overflow:ellipsis ; font-size:14px ; color : red">FLOWER POT FLOWER POT </p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-xl-3 col-sm-6">
			<div class="card">
				<div class="card-body">
					<div class="pro-img-box">
						<div class="d-flex product-sale">
							<i class="mdi mdi-heart-outline ml-auto wishlist"></i>
							<!-- <i class="mdi mdi-heart ml-auto wishlist text-danger"></i> -->
						</div>
						<img class="w-100" src="http://127.0.0.1:8000/assets/img/ecommerce/01.jpg" alt="product-image">
						<!-- <a href="#" class="adtocart"><i class="mdi mdi-heart-outline ml-auto wishlist"></i> -->
						<a href="#" class="adtocart"><i class="far fa-check-circle"></i>

						</a>
					</div>
					<div class="text-center pt-3">
						<h3 class="h6 mb-2 mt-4 font-weight-bold text-uppercase">FLOWER POT</h3>
						<p lang="rtl" style="white-space: nowrap; overflow: hidden; text-overflow:ellipsis ; font-size:14px ; color : red">FLOWER POT FLOWER POT </p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-xl-3 col-sm-6">
			<div class="card">
				<div class="card-body">
					<div class="pro-img-box">
						<div class="d-flex product-sale">
							<i class="mdi mdi-heart-outline ml-auto wishlist"></i>
							<!-- <i class="mdi mdi-heart ml-auto wishlist text-danger"></i> -->
						</div>
						<img class="w-100" src="http://127.0.0.1:8000/assets/img/ecommerce/01.jpg" alt="product-image">
						<!-- <a href="#" class="adtocart"><i class="mdi mdi-heart-outline ml-auto wishlist"></i> -->
						<a href="#" class="adtocart"><i class="far fa-check-circle"></i>

						</a>
					</div>
					<div class="text-center pt-3">
						<h3 class="h6 mb-2 mt-4 font-weight-bold text-uppercase">FLOWER POT</h3>
						<p lang="rtl" style="white-space: nowrap; overflow: hidden; text-overflow:ellipsis ; font-size:14px ; color : red">FLOWER POT FLOWER POT </p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-6 col-lg-6 col-xl-3 col-sm-6">
			<div class="card">
				<div class="card-body">
					<div class="pro-img-box">
						<div class="d-flex product-sale">
							<i class="mdi mdi-heart-outline ml-auto wishlist"></i>
							<!-- <i class="mdi mdi-heart ml-auto wishlist text-danger"></i> -->
						</div>
						<img class="w-100" src="http://127.0.0.1:8000/assets/img/ecommerce/01.jpg" alt="product-image">
						<!-- <a href="#" class="adtocart"><i class="mdi mdi-heart-outline ml-auto wishlist"></i> -->
						<a href="#" class="adtocart"><i class="far fa-check-circle"></i>

						</a>
					</div>
					<div class="text-center pt-3">
						<h3 class="h6 mb-2 mt-4 font-weight-bold text-uppercase">FLOWER POT</h3>
						<p lang="rtl" style="white-space: nowrap; overflow: hidden; text-overflow:ellipsis ; font-size:14px ; color : red">FLOWER POT FLOWER POT </p>
					</div>
				</div>
			</div>
		</div>
			
		








	</div>
</div>

@endsection
@section('js')
<!--Internal  Chart.bundle js -->
<script src="{{URL::asset('assets/plugins/chart.js/Chart.bundle.min.js')}}"></script>
<!-- Moment js -->
<script src="{{URL::asset('assets/plugins/raphael/raphael.min.js')}}"></script>
<!--Internal  Flot js-->
<script src="{{URL::asset('assets/plugins/jquery.flot/jquery.flot.js')}}"></script>
<script src="{{URL::asset('assets/plugins/jquery.flot/jquery.flot.pie.js')}}"></script>
<script src="{{URL::asset('assets/plugins/jquery.flot/jquery.flot.resize.js')}}"></script>
<script src="{{URL::asset('assets/plugins/jquery.flot/jquery.flot.categories.js')}}"></script>
<script src="{{URL::asset('assets/js/dashboard.sampledata.js')}}"></script>
<script src="{{URL::asset('assets/js/chart.flot.sampledata.js')}}"></script>
<!--Internal Apexchart js-->
<script src="{{URL::asset('assets/js/apexcharts.js')}}"></script>
<!-- Internal Map -->
<script src="{{URL::asset('assets/plugins/jqvmap/jquery.vmap.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
<script src="{{URL::asset('assets/js/modal-popup.js')}}"></script>
<!--Internal  index js -->
<script src="{{URL::asset('assets/js/index.js')}}"></script>
<script src="{{URL::asset('assets/js/jquery.vmap.sampledata.js')}}"></script>	
@endsection