<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2 class="text-center" style="margin: 20px 0px;">Thêm Thương hiệu:</h2>
  <form action="" method="POST">
    <div class="form-group">
        <?php
            require ('../connect.php');
                $id_update = $_GET['id'];
                $query = "SELECT * FROM brands WHERE id = '$id_update'";
                $result = $conn->query($query);
                while ($row = $result->fetch_assoc()) {
                    $name = $row['name'];
                }
                
        ?>
      <label for="name">Tên Thương Hiệu:</label>
      <input type="name" class="form-control" id="name" placeholder="VD: Apple, SamSung..." name="name" value="<?php echo $name;   ?>">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>
<?php 
    
	if (isset($_POST['submit'])) {
			$ten = $_POST['name'];
			$queryUpdate = "UPDATE brands SET name = '$ten' WHERE id = '$id_update'";
			
			if ($conn->query($queryUpdate) === TRUE) {
    			header("Location: ../BrandAdmin.php", false, 307);
			} else {
    			echo "Error updating record: " . $conn->error;
			}

			$conn->close();
	}


?>