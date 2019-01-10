<div class="panel-holder mt-30 mb-40">
	<div class="title-3 mt-0">Укажитe ваши данные</div>
	<form action="set-cookie.php" method="POST">
		<!-- <form action="" method="POST"> -->
			<div class="form-group">
				<label class="label">Ваше имя<input class="input" name="user-name" type="text" placeholder="" /></label>
			</div>
			<div class="form-group"><label class="label">Ваш город<input class="input" name="user-city" type="text" placeholder="" /></label></div>
			<input class="button" type="submit" name="user-submit" value="Сохранить" />
		</form>
		<form action="unset-cookie.php" method="POST">
			<input type="submit" class="button" value="Удалить данные" name="user-unset">
		</form>
	</div>
