<div class="row">
	<div class="col-xs-12 col-md-12 col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">Danh sách sản phẩm</div>
			<div class="panel-body">
				<div class="bootstrap-table">
					<div class="table-responsive">
						<a href="admin/updatebrands.php" class="btn btn-primary">Thêm sản phẩm</a>
						<table class="table table-bordered" style="margin-top:20px;">
							<thead>
								<tr class="bg-primary">
									<th>ID</th>
									<th>Name</th>
                                    <!-- <th width="20%">Ảnh sản phẩm</th> -->
                                    <th>Tùy chọn</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<?php
									$con = new mysqli('localhost', 'root', '', 'quanlydienthoai');
									$sql = "SELECT * from brands";
									if ($result = $con->query($sql)) {
										if ($result->num_rows > 0) {
											while ($row = $result->fetch_array()) {
												echo "<tr>";
												echo "<td>" . $row['id'] . "</td>";
                                                echo "<td>" . $row['name'] . "</td>";
                                                // echo "<td>" . '<img src="images/'.$row["product_image"].'" width="120px" height="120px">'."
                                                //     </td>";
												echo " <td><a href='admin/createbrands.php?id=" . $row['id'] . "' class='btn btn-warning'><i class='fa fa-pencil' aria-hidden='true'></i> Sửa</a>
												<a href='admin/delbrands.php?id=" . $row['id']."' 
												onclick='location.href=showDele()' class='btn btn-danger' ><i class='fa fa-trash' aria-hidden='true'></i> Xóa</a>
												</td>";
												echo "</tr>";
											}
											$result->free();
										} else {
											echo "Không tìm thấy dữ liệu.";
										}
									} else {
										echo "ERROR: Không thể thực thi câu lệnh $sql. " . $mysqli->error;
									}
									$con->close();
									?>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
