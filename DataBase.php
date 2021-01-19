<?php
	class brand{
		public $id;
		public $name;
		function __construct($id, $name){
			$this->id = $id; 
			$this->name=$name;
		}
	}
	function getArr(){
		$con = new mysqli("localhost","root","","quanlydienthoai");
		$cr = $con->query("select * from brands"); 
		while($r=$cr->fetch_array()){
			$arr[]=new brand($r["id"],$r["name"]);
		}
		mysqli_close($con);
		return $arr;
	}
	function content($query){
        require "connect.php";  
		$name = '';
		$xau = '';
		// $query = "SELECT * FROM brands";
		$result = $conn->query($query);
			if ($result->num_rows > 0) {
				while ($row = $result->fetch_assoc()) {
					$id = $row['id']; 
					$xau .='
						<div class="container-fluid">
							<div class="text">
								<hr class="line-brand">
								<h2 class ="text-brand"> '.$row['name'].' </h2>
								<hr class="line-brand">
							</div>
						</div>';
					$xau.= '<div class="container-fluid">';
					$xau.= '<div class="row">';
					$query1 = "SELECT * FROM products WHERE brand_id = '$id'";
					$result1 = $conn->query($query1);
					while ($row1 = $result1->fetch_assoc()) {
						$xau.= '
							<div class="col-sm-3">
								<div class="product">
									<img src="'. $row1['image'].'">
									<p> '.$row1['name'].' </p>
									<p style="margin-bottom: 5px;"> '.$row1['price'].' $ </p>
									<button type="button" class="btn btn-success">Mua Hàng</button>
								</div>	 
							</div>
						';
					}
					$xau.= '</div>';
					$xau.= '</div>';

				
				} 
			} else {
            } 
        return $xau;
	}
	
?>