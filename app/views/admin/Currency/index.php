<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Валюты магазина</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="<?php echo ADMIN;?>">Главная</a></li>
                    <li class="breadcrumb-item active"> Валюты магазина</li>
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
            <div class="col-md-12">
                <div class="box">
                    <div class="box-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Наименование</th>
                                    <th>Код</th>
                                    <th>Значение</th>
                                    <th>Действия</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach($currencies as $currency): ?>
                                    <?php $class = $currency['status'] ? 'success' : ''; ?>
                                    <tr class="<?php echo $class;?>">
                                        <td><?php echo $currency->id;?></td>
                                        <td><?php echo $currency->title;?></td>
                                        <td><?php echo $currency->code;?></td>
                                        <td><?php echo$currency->value;?></td>
                                        <td><a href="<?php echo ADMIN;?>/currency/edit?id=<?php echo $currency->id;?>"><i class="fa fa-fw fa-paint-brush text-success"></i></a> <a class="delete" href="<?php echo ADMIN;?>/currency/delete?id=<?php echo $currency->id;?>"><i class="fa fa-fw fa-times text-danger"></i></a></td>
                                    </tr>
                                <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
</section>
<!-- /.content -->
<!-- /.content-wrapper -->