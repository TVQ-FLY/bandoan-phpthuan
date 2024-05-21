 <!-- Begin Page Content -->
 <div class="container-fluid"style>

   <!-- Page Heading -->
   <div class="d-sm-flex align-items-center justify-content-between mb-4">
     <h1 class="h3 mb-0 text-warning-800">Thống Kê</h1>
   </div>

   <!-- Content Row -->
   <div class="row">

     <!-- Earnings (Monthly) Card Example -->
     <div class="col-xl-3 col-md-6 mb-4">
       <div class="card border-left-success shadow h-100 py-2">
         <div class="card-body">
           <div class="row no-gutters align-items-center">
             <div class="col mr-2">
               <div class="text-xs font-weight-bold text-success text-uppercase mb-1"style="font-size: 15px;">Danh thu tháng này</div>
               <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format ($data_countM['Count']) ?> VNĐ</div>
             </div>
             <div class="col-auto">
               <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
             </div>
           </div>
         </div>
       </div>
     </div>

     <!-- Earnings (Monthly) Card Example -->
     <div class="col-xl-3 col-md-6 mb-4">
       <div class="card border-left-danger shadow h-100 py-2">
         <div class="card-body">
           <div class="row no-gutters align-items-center">
             <div class="col mr-2">
             <div class="text-xs font-weight-bold text-danger text-uppercase mb-1"style="font-size: 15px;">Danh thu năm nay</div>
               <div class="h5 mb-0 font-weight-bold text-gray-800"><?= number_format( $data_countY['Count']) ?> VNĐ</div>
             </div>
             <div class="col-auto">
               <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
             </div>
           </div>
         </div>
       </div>
     </div>

     <!-- Earnings (Monthly) Card Example -->
     <div class="col-xl-3 col-md-6 mb-4">
       <div class="card border-left-primary shadow h-100 py-2">
         <div class="card-body">
           <div class="row no-gutters align-items-center">
             <div class="col mr-2">
               <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"style="font-size: 15px;">Khách hàng</div>
               <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $data_nguoidung['Count'] ?></div>
             </div>
             <div class="col-auto">
               <i class="fas fa-calendar fa-2x text-gray-300"></i>
             </div>
           </div>
         </div>
       </div>
     </div>

     <!-- Earnings (Monthly) Card Example -->
     <div class="col-xl-3 col-md-6 mb-4">
       <div class="card border-left-primary shadow h-100 py-2">
         <div class="card-body">
           <div class="row no-gutters align-items-center">
             <div class="col mr-2">
               <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"style="font-size: 15px;">Nhân viên</div>
               <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $data_nhanvien['Count'] ?></div>
             </div>
             <div class="col-auto">
               <i class="fas fa-calendar fa-2x text-gray-300"></i>
             </div>
           </div>
         </div>
       </div>
     </div>


   </div>

   <div class="row">

   <div class="col-xl-3 col-md-6 mb-4">
       <div class="card border-left-info shadow h-100 py-2">
         <div class="card-body">
           <div class="row no-gutters align-items-center">
             <div class="col mr-2">
               <div class="text-xs font-weight-bold text-info text-uppercase mb-1"style="font-size: 15px;">Tất cả Sản phẩm trong cửa hàng</div>
               <div class="h5 mb-0 font-weight-bold text-gray-800"><?=$data_tksp ['Count']?></div>
             </div>
             <div class="col-auto">
               <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
             </div>
           </div>
         </div>
       </div>
     </div>
     
     <div class="col-xl-3 col-md-6 mb-4">
   <div class="card border-left-info custom-bg-blue shadow h-100 py-2">
      <div class="card-body">
         <div class="row no-gutters align-items-center">
            <div class="col mr-2">
               <div class="text-xs font-weight-bold text-info text-uppercase mb-1"style="font-size: 15px;">Loại sản phẩm</div>
               <div class="h5 mb-0 font-weight-bold text-gray-800"><?=$data_tklsp['Count']?></div>
            </div>
            <div class="col-auto">
               <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
            </div>
         </div>
      </div>
   </div>
</div>


<div class="col-xl-3 col-md-6 mb-4">
   <div class="card border-left-warning shadow h-100 py-2">
      <div class="card-body">
         <div class="row no-gutters align-items-center">
            <div class="col mr-2">
               <div class="text-xs font-weight-bold text-success text-uppercase mb-1" style="font-size: 15px;">Đơn hàng đã duyệt</div>
               <div class="h5 mb-0 font-weight-bold text-gray-800" style="font-size: 22px;"><?=$data_hd2['Count']?></div>
            </div>
            <div class="col-auto">
               <i class="fas fa-comments fa-2x text-gray-300"></i>
            </div>
         </div>
      </div>
   </div>
</div>

     

     <!-- Pending Requests Card Example -->
     
     <div class="col-xl-3 col-md-6 mb-4">
       <div class="card border-left-warning shadow h-100 py-2">
         <div class="card-body">
           <div class="row no-gutters align-items-center">
             <div class="col mr-2">
               <div class="text-xs font-weight-bold text-warning text-uppercase mb-1"style="font-size: 15px;">Đơn hàng chưa duyệt</div>
               <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $data_hd1['Count'] ?></div>
             </div>
             <div class="col-auto">
               <i class="fas fa-comments fa-2x text-gray-300"></i>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
   
   

 
 
    