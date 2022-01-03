<html>
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>nyoba aja</title>
  <!-- CSS -->
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" types="text/css" href="fontawesome/css/all.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
   body
   {
    margin:0;
    padding:0;
    background-color:#f1f1f1;
   }
   .box
   {
    width:1270px;
    padding:20px;
    background-color:#fff;
    border:1px solid #ccc;
    border-radius:5px;
    margin-top:25px;
   }
  </style>
 </head>
 <body>
 <div class="sidebar close">
      <div class="logo-details">
        <div class="logo_name">
          <img src="assets/img/unnamed.png" />
        </div>
      </div>
      <ul class="nav-links">
        <li>
          <a href="#">
            <i class="fas fa-home"></i>
            <span class="link_name">Dashboard</span>
          </a>
          <ul class="sub-menu blank">
            <li><a class="link_name" href="navbar.html">Dashboard</a></li>
          </ul>
        </li>
        <li>
          <a href="#">
            <i class="fas fa-user"></i>
            <span class="link_name">Data Akun</span>
          </a>
          <ul class="sub-menu blank">
            <li><a class="link_name" href="#">Data Akun</a></li>
          </ul>
        </li>
        <li>
          <a href="#">
            <i class="fas fa-users"></i>
            <span class="link_name">Data Peserta</span>
          </a>
          <ul class="sub-menu blank">
            <li><a class="link_name" href="#">Data Peserta</a></li>
          </ul>
        </li>
        <li>
          <a href="#">
            <i class="fas fa-calendar-minus"></i>
            <span class="link_name">Data Acara</span>
          </a>
          <ul class="sub-menu blank">
            <li><a class="link_name" href="#">Data Acara</a></li>
          </ul>
        </li>
        <li>
          <a href="#">
            <i class="fas fa-ticket-alt"></i>
            <span class="link_name">Data Tiket</span>
          </a>
          <ul class="sub-menu blank">
            <li><a class="link_name" href="#">Data Tiket</a></li>
          </ul>
        </li>
        <li>
          <div class="iocn-link">
            <a href="#">
              <i class="fas fa-clipboard-list"></i>
              <span class="link_name">Data Transaksi</span>
            </a>
            <i class="bx bxs-chevron-down arrow"></i>
          </div>
          <ul class="sub-menu">
            <li><a class="link_name" href="#">Data Transaksi</a></li>
            <li><a href="#">Pemesanan</a></li>
            <li><a href="#">Pembayaran</a></li>
            <li><a href="#">Check In</a></li>
          </ul>
        </li>
        <li>
          <div class="iocn-link">
            <a href="#">
              <i class="fas fa-folder-open"></i>
              <span class="link_name">Data Logistik</span>
            </a>
            <i class="bx bxs-chevron-down arrow"></i>
          </div>
          <ul class="sub-menu">
            <li><a class="link_name" href="#">Data Logistik</a></li>
            <li><a href="merchandise.php">Data Merchandise</a></li>
            <li><a href="bundle.php">Data Bundle</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <section class="home-section">  
      <div class="home-content">
        <header>
          <h1>
            <label for="nav-toggle">
              <span class="fas fa-bars" style="text-align: center"></span>
            </label>
            Dashboard
          </h1>

          <div class="user-wrapper">
            <i class="fas fa-users-cog"></i>
            <div>
              <h4>Tamia Indah Imanika</h4>
              <small>Admin</small>
            </div>
          </div>
        </header>
      </div>
      <main>
        <div class="cards ">
          <div class="card-single slider">
            <div>
              <h1>60</h1>
              <span>Sisa Mug</span>
            </div>
            <div>
              <span class="fas fa-user"></span>
            </div>
          </div>

          <div class="card-single">
            <div>
              <h1>50</h1>
              <span>Sisa Co card</span>
            </div>
            <div>
              <span class="fas fa-users"></span>
            </div>
          </div>

          <div class="card-single">
            <div>
              <h1>55</h1>
              <span>Sisa Kaos Undangan</span>
            </div>
            <div>
              <span class="fas fa-ticket-alt"></span>
            </div>
          </div>

          <div class="card-single">
            <div>
              <h1>55</h1>
              <span>Sisa Kaos Umum</span>
            </div>
            <div>
              <span class="fas fa-folder-open"></span>
            </div>
          </div>
        </div>
       
        <div class="recent-flex">
          <div class="project">
            <div class="project-header">
              <button type="button" id="add_button" data-bs-toggle="modal" data-bs-target="#merchModal" class="btn btn-info btn-lg">Add</button>
              
            </div>

              <table id="merchs_data" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <td>Nama Merchandise</td>
                    <td>Jumlah Stock</td>
                    <td>Edit</td>
                    <td>Delete</td>
                  </tr>
                </thead>
              </table>          
            </div>
            <br>
          </div>
        </div>
  </section>
  
  <div id="merchModal" class="modal fade">
    <div class="modal-dialog">
      <form method="post" id="merchs_form" enctype="multipart/form-data">
      <div class="modal-content">
        <div class="modal-header">
        <h4 class="modal-title">Add Merch</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

        </div>
        <div class="modal-body">
        <label>Nama Merch</label>
        <input type="text" name="merch_name" id="merch_name" class="form-control" />
        <br />
        <label>Jumlah Stock</label>
        <input type="text" name="total_stock" id="total_stock" class="form-control" />
        <br />
        </div>
        <div class="modal-footer">
        <input type="hidden" name="merch_id" id="merch_id" />
        <input type="hidden" name="operation" id="operation" />
        <input type="submit" name="action" id="action" class="btn btn-success" value="Add" />
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
      </form>
    </div>
  </div>

 </body>
</html>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script>



let arrow = document.querySelectorAll(".arrow");
      for (var i = 0; i < arrow.length; i++) {
        arrow[i].addEventListener("click", (e) => {
          let arrowParent = e.target.parentElement.parentElement; //selecting main parent of arrow
          arrowParent.classList.toggle("showMenu");
        });
      }
      let sidebar = document.querySelector(".sidebar");
      let sidebarBtn = document.querySelector(".fa-bars");
      console.log(sidebarBtn);
      sidebarBtn.addEventListener("click", () => {
        sidebar.classList.toggle("close");
      });
</script>

<script type="text/javascript" language="javascript" >
$(document).ready(function(){
 $('#add_button').click(function(){
  $('#merchs_form')[0].reset();
  $('.modal-title').text("Add Merch");
  $('#action').val("Add");
  $('#operation').val("Add");
 });
 
 var dataTable = $('#merchs_data').DataTable({
  "processing":true,
  "serverSide":true,
  "order":[],
  "ajax":{
   url:"fetch.php",
   type:"POST"
  },
  "columnDefs":[
   {
    "targets":[0,2],
    aaSortable:true,
   },
  ],

 });

 $(document).on('submit', '#merchs_form', function(event){
  event.preventDefault();
  var merchName = $('#merch_name').val();
  var totalStock = $('#total_stock').val();
  if(merchName != '' && totalStock != '')
  {
   $.ajax({
    url:"insert.php",
    method:'POST',
    data:new FormData(this),
    contentType:false,
    processData:false,
    success:function(data)
    {
     alert(data);
     $('#merchs_form')[0].reset();
     $('#merchModal').modal('hide');
     dataTable.ajax.reload();
    }
   });
  }
  else
  {
   alert("Both Fields are Required");
  }
 });
 
 $(document).on('click', '.update', function(){
  var merch_id = $(this).attr("id");
  $.ajax({
   url:"fetch_single.php",
   method:"POST",
   data:{merch_id:merch_id},
   dataType:"json",
   success:function(data)
   {
    $('#merchModal').modal('show');
    $('#merch_name').val(data.merch_name);
    $('#total_stock').val(data.total_stock);
    $('.modal-title').text("Edit Merch");
    $('#merch_id').val(merch_id);
    $('#action').val("Edit");
    $('#operation').val("Edit");
   }
  })
 });
 
 $(document).on('click', '.delete', function(){
  var merch_id = $(this).attr("id");
  if(confirm("Are you sure you want to delete this?"))
  {
   $.ajax({
    url:"delete.php",
    method:"POST",
    data:{merch_id:merch_id},
    success:function(data)
    {
     alert(data);
     dataTable.ajax.reload();
    }
   });
  }
  else
  {
   return false; 
  }
 });
 
 
});
</script>
   