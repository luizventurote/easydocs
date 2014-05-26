<!doctype html>
<html lang="pt-br">
    <head>

        <meta charset="UTF-8">
        <title>Painel</title>
        <meta name="description" content="Painel do sistema">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Icons -->
        <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
        <link rel="shortcut icon" href="img/favicon.ico">

        <!-- Style -->
        <link rel="stylesheet" href="css/style.min.css">

        <!-- Modernizr -->
        <script src="lib/js/modernizr.js"></script>

    </head>
    <body>

        <header class="wrapper top-bar">

            <div class="top-bar-brand">

                <div class="menu-icon" id="menu-toggle"></div>
                
                <div class="top-bar-item">
                    <?php include('ui/logo.php') ?>
                </div>

            </div>

            <div class="top-bar-nav">

                <?php include('ui/dropdown.php') ?>

            </div>

        </header>

        <main>

            <div class="wrapper page" id="page">

                <?php include('ui/menu.php') ?>

                <div class="content" id="content">

                    <div class="row">

                        <div class="col-sm-6">

                            <h1 class="page-title">Interfaces</h1>

                        </div>

                        <div class="col-sm-6">
                        
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Library</a></li>
                                <li class="active">Data</li>
                            </ol>

                        </div>

                    </div>

                    <?php for ($i=0; $i < 3; $i++) { ?>

                    <div class="row">

                        <div class="col-sm-6 col-lg-3">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Panel title</h3>
                                </div>
                                <div class="panel-body">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. A reiciendis officia temporibus sit veniam veritatis corporis quibusdam illum nam nesciunt. Tempora, atque nesciunt iste sint laborum ex quis culpa ea.
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-lg-3">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Panel title</h3>
                                </div>
                                <div class="panel-body">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem, odio, assumenda amet id magnam perspiciatis ratione ducimus voluptate quos quam nostrum qui cum dignissimos ullam natus laudantium animi commodi eum.
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-lg-3">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Panel title</h3>
                                </div>
                                <div class="panel-body">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, at, voluptatem, nam, consectetur eos earum ea quas sequi eum magni obcaecati veritatis id debitis consequatur nobis ipsum libero distinctio quo.
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-lg-3">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Panel title</h3>
                                </div>
                                <div class="panel-body">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, vitae, neque totam placeat quisquam recusandae dolorem ducimus rem nesciunt iusto debitis quos accusamus cum dolorum fuga beatae nobis exercitationem molestias.
                                </div>
                            </div>
                        </div>

                    </div>

                    <?php } ?>

                    <div class="divider divider-single"></div>

                    <footer class="row footer-main">
                        
                        <div class="col-sm-6">
                            Desenvolvido por DevIFES
                        </div>
                        <div class="col-sm-6 logo-wrapper">

                            <div class="logo">

                                <img src="img/logo.png" alt="" class="logo-img">
                                    
                                <div class="info">
                                    <div class="title-6 logo-title">Auxílio IFES | Campus Colatina</div>
                                    <small class="copyright">Copyright 2013 - All Rights Reserved</small>
                                </div>

                            </div>
                                
                        </div>

                    </footer>

                </div>
                
            </div>

        </main>
        
        <script src="js/main.min.js"></script>

    </body>
</html>