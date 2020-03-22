<!DOCTYPE html>
<html>
    <head>
       <title>users list</title>
    </head>
    <body>
<?php
//print("Test mydb");
	$link = mysqli_connect("127.0.0.1", "oleg", "123", "mydb");

	if ($link == false){
	    print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error());
	}
	else {
	    //print("Соединение установлено успешно");
	    mysqli_set_charset($con, "utf8");
	    $sql = 'SELECT * FROM  users';
	    $result = mysqli_query($link, $sql);
	    $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
	    echo '<table border="1">';
	    echo '<td>id</td><td>username</td><td>email</td><td>password</td><td>role</td><td>created</td><td>updated</td>';
		foreach ($rows as $row) {
			echo '<tr>';
    		print(
    			"<td>" . $row['id'] . "</td>".
    			"<td>" . $row['username']. "</td>" .
    			"<td>" . $row['email']. "</td>" .
    			"<td>" . $row['password']. "</td>" .
    			"<td>" . $row['role']. "</td>" .
    			"<td>" . $row['created']. "</td>" .
    			"<td>" . $row['updated']. "</td>" . 
    			"<br>");
    		echo '</tr>';
		}
		echo '</table>';
	mysqli_close($link);	
	}
?>
    </body>
</html>