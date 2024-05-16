@extends('layouts.master')
@section('css')
<!--  Owl-carousel css-->
<link href="{{URL::asset('assets/plugins/owl-carousel/owl.carousel.css')}}" rel="stylesheet" />
<!-- Maps css -->
<link href="{{URL::asset('assets/plugins/jqvmap/jqvmap.min.css')}}" rel="stylesheet">
<style>
	.bstl{
		height:200px;
		object-fit: cover;
	}
	.bstl2{
		padding:  0 !important;
		/* margin-bottom: 1.5rem ; */
	}
	.Bbotton { 
		color: #fff  !important;
		width: 100% !important;
		margin:auto !important;
		margin-top: 20px !important; 
		bottom: 0 !important; 
	}
	.Bbotton1:hover {
		background: rgb(97, 224, 97) !important;
	}
	.Bbotton2:hover {
		background: rgba(240, 64, 64, 0.747) !important;
	}
	.beraa{
		white-space: nowrap;
		overflow: hidden; 
		text-overflow:ellipsis ;
	}
</style>

@endsection

@section('content')
<div class="col-xl-12 col-lg-12 col-md-12">
	<div class="card"></div>
	<div class="row row-sm " >
		@foreach ($foods as $food )
		<a href="{{route("details" , $food->id)}}">
			<div class="col-md-6 col-lg-6 col-xl-3 col-sm-6">
				<div class="card ">
					<div class="card-body bstl2" >
						<div class="pro-img-box ">
							<img class="w-100 bstl"  src="{{asset('image/'.$food->photos[0]->path)}} " alt="product-image">
						</div>
						<div class="text-center " style="padding-bottom : 0px">
							<h3  style="color :#5b6e88 ; font-size : 18px" class="beraa h4 mb-2 mt-4 font-weight-bold text-capitalize">{{$food->name}}</h3>
							<h3 style="color :#5b6e88 ; font-size : 12px" class="beraa h6 mb-2 mt-4 font-weight-bold text-capitalize">click to see recipe</h3>

							@if ($food->like == 0)
								<a href="{{route("addLike" , $food->id	)}}" class=" Bbotton Bbotton1 btn btn-secondary ">Like</a>
							@else
								<a href="{{route("addLike" , $food->id	)}}" class=" Bbotton Bbotton2 btn btn-success ">Liked</a>
							@endif
						</div>
					</div>
				</div>
			</div>
		</a>
		@endforeach
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