@extends('layouts.master')

@section('css')
<!--- Internal Select2 css-->
<link href="{{URL::asset('assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet">
<!---Internal Fileupload css-->
<link href="{{URL::asset('assets/plugins/fileuploads/css/fileupload.css')}}" rel="stylesheet" type="text/css"/>
<!---Internal Fancy uploader css-->
<link href="{{URL::asset('assets/plugins/fancyuploder/fancy_fileupload.css')}}" rel="stylesheet" />
<!--Internal Sumoselect css-->
<link rel="stylesheet" href="{{URL::asset('assets/plugins/sumoselect/sumoselect-rtl.css')}}">
<!--Internal  TelephoneInput css-->
<link rel="stylesheet" href="{{URL::asset('assets/plugins/telephoneinput/telephoneinput-rtl.css')}}">

<link rel="stylesheet" href="{{URL::asset('assets/css/beraa.css')}}">
<style>
.b-image{
    max-width: 100%;
    object-fit: cover;
    max-height: 400px;
}
.beraa{
    padding : 0px   10px !important ;
    padding-top :4px !important ;
}
</style>
@endsection

@section('content')
 <div><br></div>
<div class=" col-xl-12 col-lg-12 col-md-12" style="width:70% ; margin-left: auto;  margin-right: auto;">
    <div class="preview-pic tab-content" style="  text-align:center ;">
        <div class="tab-pane b-image active" style="max-height:400px;" id="pic-1"><img src="{{asset('image/'.$photos[0]->path)}}" alt="image"/></div>
        @php $cnt = 2 ;  @endphp
        @foreach ( $photos  as  $photo)
            <div class="tab-pane b-image" id="pic-{{$cnt}}"><img src="{{asset('image/'.$photo->path)}}" alt="image"/></div>
            @php $cnt = $cnt +1  ;  @endphp
        @endforeach
    </div>
    <ul class="beraa nav nav-tabs" >
        @php $cnt = 2 ;  @endphp
        @foreach ( $photos  as  $photo)
            <li class=""  ><a data-target="#pic-{{$cnt}}"data-toggle="tab"><img class="beraa" style="height:100px;" src="{{asset('image/'.$photo->path)}}" alt="image"/></a></li> 
        @php $cnt = $cnt +1  ;  @endphp
        @endforeach
    </ul>
</div>
<br><br><br>

<div class="tab-content border-left border-bottom border-right border-top-0 p-4" style="text-align: center;">
    <div class="tab-pane active" id="home">
        <h4 class="tx-18 text-uppercase mb-3">{{$food->name}}</h4>
        <p class="m-b-5">{{$food->explane}}</p>
    </div>
</div>



<div><br></div>
<div class="col-xl-12">
    <div class="card">
        <div class="card-header pb-0">
            <div class="d-flex justify-content-between">
                <h4 class="card-title mg-b-0">Food Quantities</h4>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table mg-b-0 text-md-nowrap">
                    <tbody>
                        @php  $cnt = 1;  @endphp
                        @foreach ( $quantities  as  $quantity)
                        <tr class="">
                            <th >{{$cnt}}</th>
                            <td>{{$quantity->name}}</td>
                        </tr>
                        @php  $cnt += 1;  @endphp
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<div><br></div>
<div class="col-xl-12">
    <div class="card">
        <div class="card-header pb-0">
            <div class="d-flex justify-content-between">
                <h4 class="card-title mg-b-0">Food Steps</h4>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table id = "Bcount1" class="table mg-b-0 text-md-nowrap">
                    @php  $cnt = 1;  @endphp
                    @foreach ( $steps  as  $step)
                        <tr >
                            <th >{{$cnt}}</th>
                            <td>{{$step->name}}</td>
                        </tr>
                        @php  $cnt += 1;  @endphp
                    @endforeach
                </table>
            </div>
        </div>
    </div>
</div>


<div class="tab-content border-left border-bottom border-right border-top-0 p-4" style="text-align: center;">
    <div class="tab-pane active" id="home">
        <h1 class="tx-15 text-uppercase mb-3">♥♥♥♥♥♥♥♥♥♥♥♥ &nbsp;&nbsp; Afiyet Olsun &nbsp;&nbsp; ♥♥♥♥♥♥♥♥♥♥♥♥</h1>
    </div>
</div>

@endsection

@section('js')

<!--Internal  Datepicker js -->
<script src="{{URL::asset('assets/js/beraa.js')}}"></script>
<script src="{{URL::asset('assets/plugins/jquery-ui/ui/widgets/datepicker.js')}}"></script>
<!-- Internal Select2 js-->
<script src="{{URL::asset('assets/plugins/select2/js/select2.min.js')}}"></script>
<!--Internal Fileuploads js-->
<script src="{{URL::asset('assets/plugins/fileuploads/js/fileupload.js')}}"></script>
<script src="{{URL::asset('assets/plugins/fileuploads/js/file-upload.js')}}"></script>
<!--Internal Fancy uploader js-->
<script src="{{URL::asset('assets/plugins/fancyuploder/jquery.ui.widget.js')}}"></script>
<script src="{{URL::asset('assets/plugins/fancyuploder/jquery.fileupload.js')}}"></script>
<script src="{{URL::asset('assets/plugins/fancyuploder/jquery.iframe-transport.js')}}"></script>
<script src="{{URL::asset('assets/plugins/fancyuploder/jquery.fancy-fileupload.js')}}"></script>
<script src="{{URL::asset('assets/plugins/fancyuploder/fancy-uploader.js')}}"></script>
<!--Internal  Form-elements js-->
<script src="{{URL::asset('assets/js/advanced-form-elements.js')}}"></script>
<script src="{{URL::asset('assets/js/select2.js')}}"></script>
<!--Internal Sumoselect js-->
<script src="{{URL::asset('assets/plugins/sumoselect/jquery.sumoselect.js')}}"></script>
<!-- Internal TelephoneInput js-->
<script src="{{URL::asset('assets/plugins/telephoneinput/telephoneinput.js')}}"></script>
<script src="{{URL::asset('assets/plugins/telephoneinput/inttelephoneinput.js')}}"></script>
@endsection