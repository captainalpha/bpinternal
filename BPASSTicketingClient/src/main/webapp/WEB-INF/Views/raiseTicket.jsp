<!DOCTYPE html>
<html>

    <head>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 3 | Advanced form elements</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- daterange picker -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
        <!-- iCheck for checkboxes and radio inputs -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- Bootstrap Color Picker -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
        <!-- Tempusdominus Bbootstrap 4 -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <!-- Select2 -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/css/select2.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
        <!-- Bootstrap4 Duallistbox -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
        <!-- Google Font: Source Sans Pro -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    </head>

    <body class="hold-transition sidebar-mini sidebar-collapse">
        <div class="wrapper">

            
            <jsp:include page="/header"/> 

            <jsp:include page="/slidebar"/> 

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section style="padding: 10px;" class="content-header"> 
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Raised Ticket</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Raised Ticket</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section style="padding: 10px;" class="content">
                    <div class="container-fluid"> 
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">General Details</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                            class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                            class="fas fa-remove"></i></button>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <label>Project</label>
                                            <select id="project" class="form-control select2" style="width: 100%;">
                                                <option label="Axalta COA" selected="selected">1</option>
                                                <option label="Axalta BOE">2</option>
                                                <option label="Skyjumper">3</option>
                                                <option label="Netsteel">4</option>
                                                <option  label="Prime Bank">5</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label>Priority</label>
                                            <select id = "priority" class="form-control select2" style="width: 100%;">
                                                <option selected="selected" label="Low">1</option>
                                                <option label="Medium">2</option>
                                                <option label="High">3</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Email ID</label>

                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-at"></i></span>
                                                </div>
                                                <input id ="email" type="text" value="shashank.tiwari@bpaassolutions.com" class="form-control">
                                            </div>
                                            <!-- /.input group -->
                                        </div>

                                        <!-- /.form-group -->
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Title</label><span class="required text-danger">*</span>
                                                <input id= "ticket_title" type="text" class="form-control" placeholder="Ticket Title">
                                            </div>

                                            <div class="form-group">
                                                <label>Raised On</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                    </div>
                                                    <input id = "raiseon" type="text" class="form-control" data-inputmask-alias="datetime"
                                                           data-inputmask-inputformat="dd/mm/yyyy" data-mask>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label>Mobile No</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fas fa-mobile-alt"></i></span>
                                                    </div>
                                                    <input id ="mob_no" type="text" value="987195005" class="form-control">
                                                </div>
                                                <!-- /.input group -->
                                            </div>

                                        </div>


                                        <!-- /.form-group -->
                                    </div>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->



                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="exampleInputFile">Detailed Discription</label><span
                                                class="required text-danger">*</span>
                                            <textarea id = "detailed_description" class="textarea" placeholder="Place some text here"
                                                      style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                        </div>

                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Upload Document</label>
                                            <div class="input-group">
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="exampleInputFile">
                                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                                </div>
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="">Upload</span>
                                                </div>
                                            </div>
                                            <span class="required text-danger">Upload .zip file for multiple documets</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <!--raiseTicket()-->
                                <center><button type="submit" class="btn btn-primary" onclick="raiseTicket('${pageContext.request.userPrincipal.name}')">Submit</button></center>
                            </div>
                        </div>
                        <!-- /.card -->
                    </div><!-- /.container-fluid -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->
        </div>
        <!-- ./wrapper -->

        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Select2 -->
        <script src="${pageContext.request.contextPath}/plugins/select2/js/select2.full.min.js"></script>
        <!-- Bootstrap4 Duallistbox -->
        <script src="${pageContext.request.contextPath}/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
        <!-- InputMask -->
        <script src="${pageContext.request.contextPath}/plugins/moment/moment.min.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
        <!-- date-range-picker -->
        <script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- bootstrap color picker -->
        <script src="${pageContext.request.contextPath}/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
        <!-- Tempusdominus Bootstrap 4 -->
        <script src="${pageContext.request.contextPath}/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <!-- Bootstrap Switch -->
        <script src="${pageContext.request.contextPath}/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
        <!-- AdminLTE App -->
        <script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>
        <script src="${pageContext.request.contextPath}/dist/js/raiseTicket.js"></script>
        <!-- Page script -->

        <script src="${pageContext.request.contextPath}/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

        <script type="text/javascript">
                                    $(document).ready(function () {
                                        bsCustomFileInput.init();
                                    });
        </script>
    </body>

</html>