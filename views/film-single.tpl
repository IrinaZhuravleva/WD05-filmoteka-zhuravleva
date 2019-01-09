<div class="title-1">Информация о фильме</div>

	<div class="card mb-20">
		<div class="row">
			<div class="col">
				<img width="500" src="<?=HOST?>data/films/full/<?=$film['photo']?>" alt="<?=$film['title']?>">
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
				<div class="user-content">
					<p><?=$film['description']?></p>
				</div>
		</div>
	</div>
	
</div>

