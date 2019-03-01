<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="css/reset.css"/>
	<style>
	.bannerimg
	{
		width:50%;
		position:absolute;
		top:100px;
		left:0;
		right:0;
		margin-left:auto;
		margin-right:auto;
		z-index:0;
	}
	

	</style>
</head>
<body style="background-color:#b1b2b4;height:100%;">
	<nav  style="position:fixed;top:0;left:0;width:100%;background:#E5004F;z-index:10;">
		<div class="container">
			<!-- <img src="img/logo.png" style="padding:7px 0px;"/> -->
			<div style="float:right;">
				<div class="dropdown" style="float:left;">
					<button class="btn btn-secondary dropdown-toggle" type="button"  data-toggle="dropdown"  style="height:50px;background-color:#680015;font-family:微軟正黑體;border-radius: 0px;">
					拍賣比價網
					</button>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton" >
						<a class="dropdown-item" href="#">item1</a>
						<a class="dropdown-item" href="#">item2</a>
						<a class="dropdown-item" href="#">item3</a>
					</div>
				</div>
				<button  type="button"  class="btn btn-primary" style="height:50px;background-color:transparent;font-family:微軟正黑體;border-radius: 0px;border-color:transparent;">
					回首頁
				</button>
			</div>
		</div>
	</nav>
	<div style="position:absolute;top:50px;width:100%; height:30px; background-image:url(line.png); z-index:10">
	<div class="input-group mb-3" style="width:50%;position: absolute;top: 10px;left: 0;right: 0;margin-left: auto;margin-right: auto;">
		<form action="find.php" method="post" style="width:100%;">
			<div class="input-group mb-3">
			<input type="text" class="form-control" name="goods" placeholder="搜尋商品" aria-label="" aria-describedby="basic-addon1" style="width:60%;font-family:微軟正黑體;"/>
				<div class="input-group-prepend">
					<button class="btn btn-secondary" type="submit" style="font-family:微軟正黑體;">Search</button>
				</div>
			</div>
		</form>
	</div>
	</div>
	
	<div class="container">
		<div class="banner">
			<img class="bannerimg" src="img/banner.jpg"/>
		</div>
		<div class="row" id="shopitem" style="margin-top:300px;margin-bottom:100px;">
			
			<?php
				require_once 'ConnectionFactory.php';
				try
				{
					$conn = ConnectionFactory::getFactory()->getConnection();
					$stmt = $conn->prepare('select * from result limit 20');
					$stmt->execute();
					$result = $stmt->fetchAll(PDO::FETCH_CLASS);
					$conn = null;
					foreach ($result as $value)
					{
						if($value->imgUrl!='None')
							echo "<div class='col-lg-4 col-md-4 col-sm-4 col-xs-6' style='text-align:center;margin-top:100px;'><a href='".$value->url."'><img src='".$value->imgUrl."' style='width:80%;'/><p style='font-family:微軟正黑體;'>".$value->name."</p><p style='font-family:微軟正黑體;'>$".$value->price."</p></a></div>";
						else
							echo "<div class='col-lg-4 col-md-4 col-sm-4 col-xs-6' style='text-align:center;margin-top:100px;'><a href='".$value->url."'><img src='img/item1.png' style='width:80%;'/><p style='font-family:微軟正黑體;'>".$value->name."</p><p style='font-family:微軟正黑體;'>$".$value->price."</p></a></div>";
					}
					$conn = null;
				}
				catch (PDOException $e) 
				{
					echo "error".$e;
				}
			?>
			
		</div>
	</div>
	<div style="position:fixed;bottom:52px;width:100%; height:30px; background-image:url(line.png); z-index:10"/>
	<footer style="background:#E5004F;position:fixed;bottom:0px;width:100%;height:52px;color:white;font-family:微軟正黑體;text-align:center;line-height:52px;">
		©2019 All rights reserved.
	</footer>
</body>
</html>