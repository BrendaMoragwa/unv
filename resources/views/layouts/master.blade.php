
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
   <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link rel="stylesheet" href="{{asset('css/app.css')}}">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
  
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper" id="app">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="{{url('project')}}" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>UN</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{asset('images/avatar5.png')}}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{Auth::user()->name}}</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

     

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>

  
        
        <!-- Optionally, you can add icons to the links -->
        <li class="{{ (request()->is('home')) ? 'active' : '' }}"><a href="{{url('home')}}"><i class="fa fa-file"></i> <span>Dashboard</span></a></li>
        
        @can('isAdmin')
         <li class="{{ (request()->is('project')) ? 'active' : '' }}"><a href="{{url('project')}}"><i class="fa fa-microchip"></i> <span>Projects</span></a></li>
        @endcan

       
        <li class="">

           <a href="{{ route('logout') }}"
                onclick="event.preventDefault();
                         document.getElementById('logout-form').submit();">
             <i class="fa fa-power-off text-red"></i>   <span>Logout</span>
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
            </form>
        </li>

      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
   

    <!-- Main content -->
    <section class="content container-fluid">
        @yield('content')
    
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2020 <a href="#">UN</a>.</strong> All rights reserved.
  </footer>
</div>


<script src="{{asset('js/app.js')}}"></script>
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script>

  
  $('#edit').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) 
      var title = button.data('mytitle') 
      var project_ref = button.data('projectref') 
      var proj_id = button.data('projectid') 
      var duration = button.data('duration') 
      var gcf = button.data('gcf') 
      var start_date = button.data('startdate') 
      var end_date = button.data('enddate') 
      var grant_amount = button.data('grantamount') 
       
      var disburse_amount = button.data('disbursedamount') 
      var modal = $(this)

      modal.find('.modal-body #title').val(title);
      modal.find('.modal-body #project_ref').val(project_ref);
      modal.find('.modal-body #grant_amount').val(grant_amount);
      modal.find('.modal-body #duration').val(duration);
      modal.find('.modal-body #gcf').val(gcf);
      modal.find('.modal-body #proj_id').val(proj_id);
      modal.find('.modal-body #start_date').val(start_date);
      modal.find('.modal-body #end_date').val(end_date);
      modal.find('.modal-body #disbursed_amount').val(disburse_amount);
})

$('#view').on('show.bs.modal', function (event) {

var button = $(event.relatedTarget) 
var title = button.data('mytitle') 
var project_ref = button.data('projectref') 
var proj_id = button.data('projectid') 
var duration = button.data('duration') 
var gcf = button.data('gcf') 
var start_date = button.data('startdate') 
var end_date = button.data('enddate') 
var grant_amount = button.data('grantamount') 
 
var disburse_amount = button.data('disbursedamount') 
var modal = $(this)

modal.find('.modal-body #title').val(title).prop('disabled', true);
modal.find('.modal-body #project_ref').val(project_ref).prop('disabled', true);
modal.find('.modal-body #grant_amount').val(grant_amount).prop('disabled', true);
modal.find('.modal-body #duration').val(duration).prop('disabled', true);
modal.find('.modal-body #gcf').val(gcf).prop('disabled', true);
modal.find('.modal-body #proj_id').val(proj_id).prop('disabled', true);
modal.find('.modal-body #start_date').val(start_date).prop('disabled', true);
modal.find('.modal-body #end_date').val(end_date).prop('disabled', true);
modal.find('.modal-body #disbursed_amount').val(disburse_amount).prop('disabled', true);
modal.find('.modal-footer #sub').hide();
})


  $('#delete').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) 

      var proj_id = button.data('projectid') 
      var modal = $(this)

      modal.find('.modal-body #proj_id').val(proj_id);
})


$(document).ready(function() {
  
  $('#ProjectsTable').DataTable({
    "bAutoWidth": false,
    dom: 'lBfrtip',
    buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ], 
     'processing': true,
     'serverSide': true,
     'serverMethod': 'get',
     'ajax': {
         'url':  'getProjects'
     },
     'columns': [
        
        { data: 'project_ref' },
        { data: 'grant_amount' },
        { data: 'start_date' },
        { data: 'end_date' },
        { data: 'first_disbursement_amount' },
        { data: 'project_status' },
        { data: 'action' }
     ]
  });
});


</script>

</body>
</html>