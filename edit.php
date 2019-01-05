<?php 

//соединение с БД
$link = mysqli_connect('localhost', 'root', 'root', 'WD05-filmoteka-zhuravleva');

if (mysqli_connect_error()) {
	die("Ошибка подключения к базе данных.");
}

$errors = array();

// echo "<pre>";
// print_r($_GET);
// echo "</pre>";


//если приходит информация по кнопке с именем update-film, то 
if (array_key_exists('update-film', $_POST)) {
	if ( $_POST['title'] == '' ) {
		$errors[] = "<p>Необходимо ввести название фильма!</p>";
	}
	if ( $_POST['genre'] == '' ) {
		$errors[] = "<p>Необходимо ввести название жанра!</p>";
	}
	if ( $_POST['year'] == '' ) {
		$errors[] = "<p>Необходимо ввести год!</p>";
	}


	if ( empty($errors) ) {
		$query = "	UPDATE films 
					SET title = '". mysqli_real_escape_string($link, $_POST['title'])  ."',
						genre = '". mysqli_real_escape_string($link, $_POST['genre'])  ."',
						year = '". mysqli_real_escape_string($link, $_POST['year'])  ."'
					WHERE id = ".mysqli_real_escape_string($link, $_GET['id'])." LIMIT 1";
		



		if (mysqli_query($link, $query)) {
			$resultInfo = "<p>Фильм был успешно обновлен!</p>";
		} else {
			$resultError = "<p>Добавьте фильм еще раз!</p>";
		}
	}
}

//выборка фильма
$query = "SELECT * FROM films WHERE id = ' " . mysqli_real_escape_string($link, $_GET['id']) . "' LIMIT 1";

$result = mysqli_query($link, $query);

if ( $result = mysqli_query($link, $query) ) {
	$film = mysqli_fetch_array($result);
}

// echo "<pre>";
// print_r($film);
// echo "</pre>";


//Удаление фильма
if(@$_GET['action'] == 'delete') {

	// для удаления фильма формируем запрос - query
	$query = "DELETE FROM films WHERE id = ' " . mysqli_real_escape_string($link, $_GET['id']) . "' LIMIT 1";
	//затем выполняем запрос при помощи фнкции mysqli_query куда передаем линк и наш запрос- query 
	mysqli_query($link, $query);
	//далее проверяем выполнение этой функции
	// echo mysqli_affected_rows($link);

	//делаем проверку этой информации
	if (mysqli_affected_rows($link) > 0) {
		$resultInfo = "<p>Фильм был удален!</p>";
	} 
}

?>


<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>[Имя и фамилия] - Фильмотека</title>
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<meta name="keywords" content="" />
	<meta name="description" content="" /><!-- build:cssVendor css/vendor.css -->
	<link rel="stylesheet" href="libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="libs/bootstrap-4-grid/grid.min.css" />
	<link rel="stylesheet" href="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.css" /><!-- endbuild -->
	<!-- build:cssCustom css/main.css -->
	<link rel="stylesheet" href="./css/main.css" /><!-- endbuild -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>

<body class="index-page">
	<div class="container user-content section-page">
		<?php if (@$resultSuccess) { ?>
		<div class="notify notify--success mb-20"><?=$resultSuccess?></div>
		<?php } ?>

		<?php if (@$resultInfo) { ?>
		<div class="notify notify--update mb-20"><?=$resultInfo?></div>
		<?php } ?>

		<?php if (@$resultError) { ?>
		<div class="notify notify--error mb-20"><?=$resultError?></div>
		<?php } ?>
		
		<div class="title-1">Фильм <?=$film['title']?></div>

		<div class="panel-holder mt-0 mb-20">
			<div class="title-3 mt-0">Редактировать фильм</div>
			<form action="edit.php?id=<?=$film['id']?>" method="POST">
				<?php 
				if (!empty($errors)) {
					foreach ($errors as $key => $value) {
						echo "<div class='notify notify--error mb-20'>$value</div>";
					}
				}
				?>

				<div class="form-group"><label class="label">Название фильма<input class="input" name="title" type="text" placeholder="Такси 2" value="<?=$film['title']?>" /></label></div>
				<div class="row">
					<div class="col">
						<div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" placeholder="комедия" value="<?=$film['genre']?>" /></label></div>
					</div>
					<div class="col">
						<div class="form-group"><label class="label">Год<input class="input" name="year" type="text" placeholder="2000" value="<?=$film['year']?>" /></label></div>
					</div>
				</div><input class="button" type="submit" name="update-film" value="Обновить информацию" />
			</form>
		</div>
		<div><a href="index.php" class="button mb-100 ml-20">Вернуться на главную</a></div>
	</div><!-- build:jsLibs js/libs.js -->
	<script src="libs/jquery/jquery.min.js"></script><!-- endbuild -->
	<!-- build:jsVendor js/vendor.js -->
	<script src="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.js"></script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA"></script><!-- endbuild -->
	<!-- build:jsMain js/main.js -->
	<script src="js/main.js"></script><!-- endbuild -->
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>

</html>