<div class="title-1">Фильмотека</div>

<?php foreach ($films as $key => $film) { ?>
	<div class="card mb-20">
		<div class="row">
			<div class="col-auto">
				<!-- <img height="200" src="<?=$HOST?>data/films/14349.jpg" alt="<?=$film['title']?>"> -->
				<img height="200" src="<?=HOST?>data/films/min/<?=$film['photo']?>" alt="<?=$film['title']?>">
			</div>
			<div class="col">
				<div class="card__header">
					<h4 class="title-4"><?=$film['title']?></h4>
					<div class="wrapper-button">
						<a href="edit.php?id=<?=$film['id']?>" class="button button--edit">Редактировать</a>
						<a href="index.php?action=delete&id=<?=$film['id']?>" class="button button--delete">Удалить</a>
					</div>
				</div>
				<div class="badge"><?=$film['genre']?></div>
				<div class="badge"><?=$film['year']?></div>
				<!-- //через гет запрос передаем параметр фильма, который необходимо открыть -->
				<div class="mt-20">
					<a href="single.php?id=<?=$film['id']?>" class="button">Подробнее</a>
				</div>
			</div>	
		</div>
		
	</div>
<?php } ?>
