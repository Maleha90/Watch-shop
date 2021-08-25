<!-- Content Wrapper. Contains page content -->
<div class="wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Панель управления</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item active"><a href="<?php echo ADMIN;?>">Главная</a></li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Info boxes -->
            <div class="row">
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-info elevation-1"><i class="fas fa-thumbs-up"></i></span>

                        <div class="info-box-content">
                            <h3><?php echo $countNewOrders;?></h3>
                            <p>New Orders</p>
                            <div class="info-box-number">
                            <a href="<?php echo ADMIN;?>/order" class="small-box-footer">Все заказы <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box mb-3">
                        <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-shopping-cart"></i></span>

                        <div class="info-box-content">
                            <h3><?php echo $countProducts;?></h3>
                            <p>Product</p>
                            <div class="info-box-number">
                                <a href="<?php echo ADMIN;?>/product" class="small-box-footer">Все заказы <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->

                <!-- fix for small devices only -->
                <div class="clearfix hidden-md-up"></div>

                <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box mb-3">
                        <span class="info-box-icon bg-success elevation-1"><i class="fas fa-users"></i></span>

                        <div class="info-box-content">
                            <h3><?php echo $countUsers;?></h3>
                            <p>User Registrations</p>
                            <div class="info-box-number">
                                <a href="<?php echo ADMIN;?>/user" class="small-box-footer">Все заказы <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box mb-3">
                        <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-cog"></i></span>

                        <div class="info-box-content">
                            <h3><?php echo $countCategories;?></h3>
                            <p>Categories</p>
                            <div class="info-box-number">
                                <a href="<?php echo ADMIN;?>/category" class="small-box-footer">Все заказы <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
            <!-- Main row -->
            <div class="row">
            </div>
        </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->