<html>
	<head>
		<meta http-equiv="refresh" content="3;result.php"/>
	</head>
	<body>
	<?php
		require_once 'ConnectionFactory.php';
		echo "處理資料中...網頁將在3秒內跳轉...";
		if (isset($_POST["goods"]))
		{
			try
			{
				$conn = ConnectionFactory::getFactory()->getConnection();
				$stmt = $conn->prepare('delete from result');
				$stmt->execute();
				$output = shell_exec("search.py ".$_POST['goods']);
			}
			catch (PDOException $e) 
			{
				echo "error".$e;
			}
			
			
		}
		else
		{
			echo "cant get parameter(goods)";
		}
		
		
	?>
	</body>
</html>
