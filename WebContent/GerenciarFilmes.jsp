<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        
        <title>Pipoca Admin</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/da77f520d1.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="Style.css">
        <style>
            body {
                background-image: url(https://www.canvasetc.com/wp-content/uploads/2018/09/texture-1270733_1920-1.jpg);
            }
            .cbg-rolo {
                background-image: url(https://cdn.pixabay.com/photo/2013/07/13/12/52/filmstripe-160520_640.png);
                background-position: center;
                background-size: contain;
                     
            }
            .ctext-shadow{
                text-shadow: 5px 4px #222;
            }
            .cbtn-back{
            	position: absolute;
            	margin-left: 2rel;
            	margin-top: 5px;
            }
            .cbtn-back a :hover {color: #eee !important;}
            .cbtn-back a :active{color: #bbb !important}
        </style>
    </head>

    <body>
        <button class="btn cbtn-back">
        <h1><a href="index.html" class="text-white"><i class="fas fa-arrow-circle-left"></i></a></h1>
        </button>
        <div class="bg-dark cbg-rolo text-white text-center p-2">
            <h1 class="text-bold text-uppercase ctext-shadow">🍿Pipoca admin🍿</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <form action="manter_filmes.do" method="GET" class="card my-3 rounded shadow">
                        <div class="card-header bg-dark text-white p-3">
                            <h1><i class="fas fa-film"></i> Exibir Filme</h1>
                            <p>Selecione um Filme para ser exibido</p>
                        </div>
                        <div class="cad-body p-3">
                            <div class="form-row">
                                <div class="form-group col-12">
                                    <label for="id_exibir">Selecione o Filme</label>
                                    <select name="id_exibir" class="form-control">
								 		${filmes} 
									</select>
                                </div>
                            </div>
                            <div class="text-right">
                                <button type="submit" name="acao" value="exibir" class="btn btn-secondary">Exibir</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="col-sm-12 col-md-6">
                    <form action="manter_filmes.do" method="GET" class="card my-3 rounded shadow">
                        <div class="card-header bg-dark text-white p-3">
                            <h1><i class="fas fa-film"></i> Atualizar Filme</h1>
                            <p>Selecione o Filme para ser alterado</p>
                        </div>
                        <div class="cad-body p-3">
                            <div class="form-row">
                                <div class="form-group col-12">
                                    <label for="id_atualizar">Selecione o Filme</label>
                                    <select name="id_atualizar" class="form-control">
								 		${filmes} 
									</select>
                                </div>
                            </div>
                            <div class="text-right">
                                <button type="submit" name="acao" value="atualizar_filme" class="btn btn-warning">Atualizar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <form action="manter_filmes.do" method="POST" class="card my-3 rounded shadow">
                <div class="card-header bg-dark text-white p-3">
                    <h1><i class="fas fa-film"></i> Inserir um Filme</h1>
                    <p>Digite o dados do Filme para mostrar seus dados</p>
                </div>
                <div class="cad-body p-3">
                    <div class="form-row">
                        <div class="form-group col-sm-12 col-md-6">
                            <label for="titulo">Titulo</label>
                            <input type="text" class="form-control" name="titulo" placeholder="Náufrago">
                        </div>
                        <div class="form-group col-sm-12 col-md-6">
                            <label for="diretor">Diretor</label>
                            <input type="text" class="form-control" name="diretor" placeholder="Robert Zemeckis">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="descricao">Descrição</label>
                        <textarea type="text" class="form-control" name="descricao" placeholder="A FedEx executive undergoes a physical and emotional transformation after crash landing on a deserted island."></textarea>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-sm-12 col-md-4">
                            <label for="data">Data</label>
                            <input type="date" class="form-control" name="data" placeholder="dd/mm/yyyy">
                        </div>
                        <div class="form-group col-sm-12 col-md-4">
                            <label for="popularnameade">Popularidade</label>
                            <input type="number" class="form-control" name="popularidade" max=999 placeholder="603.5">
                        </div>
                        <div class="form-group col-sm-12 col-md-4">
                            <label for="genero">Genero</label>
                            <select name="genero" class="form-control">
								${generos}
							</select>
                        </div>
                    </div>
                    <div class="text-right">
                        <button type="submit" name="acao" value="inserir" class="btn btn-primary">Enviar</button>
                    </div>
                </div>
            </form>

            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <form action="manter_filmes.do" method="GET" class="card my-3 rounded shadow">
                        <div class="card-header bg-dark text-white p-3">
                            <h1><i class="fas fa-film"></i> Excluir Filme</h1>
                            <p>Selecione o Filme para ser <span class="badge badge-danger p-1 text-uppercase	">excluído</span></p>
                        </div>
                        <div class="cad-body p-3">
                            <div class="form-row">
                                <div class="form-group col-12">
                                    <label for="id_excluir">Selecione o Filme</label>
                                    <select name="id_excluir" class="form-control">
								 		${filmes} 
									</select>
                                </div>
                            </div>
                            <div class="text-right">
                                <button type="submit" name="acao" value="excluir_filme" class="btn btn-danger">EXCLUIR</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-12 col-md-6 my-auto">
                    <img class="img-fluid" src="img/cine.png">
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>

    </html>