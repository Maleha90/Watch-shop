<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Новая валюта</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="<?php echo ADMIN;?>">Главная</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo ADMIN;?>/currency">Список валют</a></li>
                    <li class="breadcrumb-item active">Новая валюта</li>
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
                <form action="<?php echo ADMIN;?>/currency/add" method="post" data-toggle="validator">
                    <div class="box-body">
                        <div class="form-group has-feedback">
                            <label for="title">Наименование валюты</label>
                            <input type="text" name="title" class="form-control" id="title" placeholder="Наименование валюты" required value="<?php isset($_SESSION['form_data']['title']) ? h($_SESSION['form_data']['title']) : null; ?>">
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="code">Код валюты</label>
                            <input type="text" name="code" class="form-control" id="code" placeholder="Код валюты" required value="<?php isset($_SESSION['form_data']['code']) ? h($_SESSION['form_data']['code']) : null; ?>">
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        </div>
                        <div class="form-group">
                            <label for="symbol_left">Символ слева</label>
                            <input type="text" name="symbol_left" class="form-control" id="symbol_left" placeholder="Символ слева" value="<?php isset($_SESSION['form_data']['symbol_left']) ? h($_SESSION['form_data']['symbol_left']) : null; ?>">
                        </div>
                        <div class="form-group">
                            <label for="symbol_right">Символ справа</label>
                            <input type="text" name="symbol_right" class="form-control" id="symbol_right" placeholder="Символ справа" value="<?php isset($_SESSION['form_data']['symbol_right']) ? h($_SESSION['form_data']['symbol_right']) : null; ?>">
                        </div>
                        <div class="form-group has-feedback">
                            <label for="value">Значение</label>
                            <input type="text" name="value" class="form-control" id="value" placeholder="Значение" required data-error="Допускаються только цифры и десятичная точка" pattern="^[0-9.]{1,}$" value="<?php isset($_SESSION['form_data']['value']) ? h($_SESSION['form_data']['value']) : null; ?>">
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <div class="help-block with-error"></div>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="base">
                                <input type="checkbox" name="base">
                                   Базовая валюта</label>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-success">Сохранить</button>
                    </div>
                </form>
                <?php if(isset($_SESSION['form_data'])) unset($_SESSION['form_data']); ?>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->