<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Редактирование валюты<?php echo $currency->title;?></h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="<?php echo ADMIN;?>">Главная</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo ADMIN;?>/currency">Список валют</a></li>
                    <li class="breadcrumb-item active">Редактирование</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <form action="<?php echo ADMIN;?>/currency/edit" method="post" data-toggle="validator">
                    <div class="box-body">
                        <div class="form-group has-feedback">
                            <label for="title">Наименование валюты</label>
                            <input type="text" name="title" class="form-control" id="title" placeholder="Наименование валюты" required value="<?php echo h($currency->title);?>">
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="code">Код валюты</label>
                            <input type="text" name="code" class="form-control" id="code" placeholder="Код валюты" required value="<?php echo h($currency->code);?>">
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        </div>
                        <div class="form-group">
                            <label for="symbol_left">Символ слева</label>
                            <input type="text" name="symbol_left" class="form-control" id="symbol_left" placeholder="Символ слева" value="<?php echo h($currency->symbol_left);?>">
                        </div>
                        <div class="form-group">
                            <label for="symbol_right">Символ справа</label>
                            <input type="text" name="symbol_right" class="form-control" id="symbol_right" placeholder="Символ справа" value="<?php echo h($currency->symbol_right);?>">
                        </div>
                        <div class="form-group has-feedback">
                            <label for="value">Значение</label>
                            <input type="text" name="value" class="form-control" id="value" placeholder="Значение" required data-error="Допускаються только цифры и десятичная точка" pattern="^[0-9.]{1,}$" value="<?php echo h($currency->value);?>">
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <div class="help-block with-error"></div>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="base">
                                <input type="checkbox" name="base" value="<?php if($currency->base) echo ' checked';?>">
                                Базовая валюта</label>
                        </div>
                    </div>
                    <div class="box-footer">
                        <input type="hidden" name="id" value="<?php echo $currency->id;?>">
                        <button type="submit" class="btn btn-success">Сохранить</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->