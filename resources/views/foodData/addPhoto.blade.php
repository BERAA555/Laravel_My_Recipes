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
<style type="text/css">
    body{
        counter-reset: Serial;  
    }
    
    .Bcount th:first-child:before
    {
      counter-increment: Serial;      
      content: counter(Serial); 
    }
</style>
@endsection

@section('content')
<div><br></div>
    <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
        <div class="card  box-shadow-0">
            <div class="card-header">
                <h4 class="card-title mb-1">Add Photos For Food</h4>
            </div>
            <div class="card-body pt-0">
                <form  method="POST" action ="{{route('addPhoto')}}" class="form-horizontal" enctype="multipart/form-data">
                    @method('POST')
                    @csrf 
                        <div class="form-group">
                            <p class="mg-b-12">Select Food</p>
                            <div class="SumoSelect sumo_somename" tabindex="0" role="button" aria-expanded="true">
                                <select name="food_id" class="form-control SlectBox SumoUnder" onclick="console.log($(this).val())" onchange="console.log('change is firing')" tabindex="-1">
                                    <option value=""></option>
                                    @foreach($foods as $item)
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>Add Photo</p>                        
                            <div class="col-sm-12 col-md-4">
                                <input  type="file" name="path[]" class="dropify"  accept=".jpg, .png, image/jpeg, image/png," multiple />
                            </div>
                        </div>
                        <div class="form-group mb-0 mt-3 justify-content-end">
                            <div>
                                <button type="submit" class="btn btn-primary">Add</button>
                                <a type="submit" href="{{route('index')}}" class="btn btn-secondary" style="color:#fff ;">Cancel</a>    
                            </div>
                        </div>
                </form>
                <br>
                @if($errors -> any() )
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors -> all() as $error )
                        <li style="text-align: center ; list-style: none;">{{$error}}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
            </div>
        </div>
    </div>

    <div class="col-xl-12">
        <div class="card">
            <div class="card-header pb-0">
                <div class="d-flex justify-content-between">
                    <h4 class="card-title mg-b-0">Foods</h4>
                </div>
                </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table mg-b-0 text-md-nowrap">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th></th>
                   
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($foodHaves as $item )                     
                            <tr class="Bcount">
                                <th></th>
                                <td>{{$item->name}} Photos</td>
                                <td>
                                    @if ($item->id )
                                        <a href="{{route('deletePhoto' , $item->id)}}" class="btn btn-sm btn-danger">
                                            <i class="las la-trash"></i>
                                        </a>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>



@endsection
@section('js')

<!--Internal  Datepicker js -->
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
