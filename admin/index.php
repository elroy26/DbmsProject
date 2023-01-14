<?php 

include('include/header.php');

if(!isset($_SESSION['email'])){
    header('location:signin.php');
}
if(isset($_SESSION['email'])){
     $email = $_SESSION['email'];
    }

?>
  <div class="container-fluid mt-2">
      <div class="row">
       <!---sidenavbar Column-->
        <div class="col-md-3 col-lg-3">
            <?php require_once('include/sidebar.php'); ?>
        </div>
        <!---Main Column -->
        <div class="col-md-9 col-lg-9">
             

        <div class="row">
         
                
                <!-- DataTables Example -->
                <h3 class="mt-5">New Orders</h3>
            <table class="table table-responsive table-hover mt-3">
                      <thead class="thead-light">
                          <tr>
                              
                              <th>Order ID</th>
                              <th>Product_id</th>
                              <th>Product Image</th>
                              <th>Product Category</th>
                              <th>Customer Id</th>
                              <th>Customer Email</th>
                              <th>Price (Pkr)</th>
                              <th>Quantity</th>
                              <th>Order Date</th>
                              <th>Verify Order</th>
                             
                              
                          </tr>
                      </thead>
                       <tbody class="text-center">
                          <?php
                          
                                    $order_query = "SELECT * FROM customer_order  ORDER BY order_id LIMIT 5";
                                    $run = mysqli_query($con,$order_query);
                        
                                    if(mysqli_num_rows($run) > 0){
                                        while($order_row = mysqli_fetch_array($run)){
                                            
                                            $order_id      = $order_row['order_id'];
                                            $cust_id       = $order_row['customer_id'];
                                            $cust_email    = $order_row['customer_email'];
                                            $order_pro_id  = $order_row['product_id'];
                                            $order_qty     = $order_row['products_qty'];
                                            $order_amount  = $order_row['product_amount'];
                                            $order_date    = $order_row['order_date'];
                                            

                                            $pr_query = "SELECT * FROM furniture_product fp INNER JOIN categories cat ON fp.category = cat.id WHERE pid = $order_pro_id ";
                                            $pr_run   = mysqli_query($con,$pr_query);
                                            
                                            if(mysqli_num_rows($pr_run) > 0){
                                                while($pr_row = mysqli_fetch_array($pr_run)){
                                                $pid   = $pr_row['pid'];
                                                $image = $pr_row['image'];
                                                $category = $pr_row['category'];
                                              
                            ?> 
                             <tr>
                                 
                                 <td>
                                 <?php echo $order_id;?>
                                 </td>
                                 <td>
                                     <?php echo $order_pro_id;?>
                                 </td>
                                 <td width="120px">
                                     <img src="img/<?php echo $image;?>" width="100%">
                                 </td>
                                 <td>
                                     <?php echo $category;?>
                                 </td>
                                 <td>
                                    <?php echo $cust_id;?>
                                 </td>
                                 <td>
                                    <?php echo $cust_email;?>
                                 </td>
                                 <td>
                                    <?php echo $order_amount;?>
                                 </td>

                                 <td><?php echo $order_qty;?></td>

                                <td><?php echo $order_date;?></td>
                                <td><a href="pending_furniture_pro.php"><button class="btn btn-primary btn-sm">Verify order</button></td>
                             </tr>   
                           <?php 
                                  }
                                }
                              }

                            }else {
                              echo "<tr><td colspan='12'><h2 class='text-center text-secondary'>You have not any pending order</h2></td></tr>";
                            }
                        
                     
                    
                    ?>
                              
                          
                      </tbody>
                  </table>

                  <h3 class="mt-5">Customers Account</h3>
                  <table class="table table-responsive table-hover mt-3">
                      <thead class="thead-light">
                          <tr>
                              <th>#Id</th>
                              <th>Name</th>
                              <th>Email</th>
                              <th>City</th>
                              <th>Postal code</th>
                              <th>View Complete</th>
                              
                          </tr>
                      </thead>
                        <tbody>
                          <?php     
                            $query = "SELECT * FROM customer ORDER BY cust_id DESC LIMIT 5";
                            $run   = mysqli_query($con,$query);
                                        
                            if(mysqli_num_rows($run) > 0){
                              while($row = mysqli_fetch_array($run)){
                                $cust_id         = $row['cust_id'];
                                $cust_name       = $row['cust_name'];
                                $cust_email      = $row['cust_email'];    
                                $cust_city       = $row['cust_city'];
                                $cust_postalcode = $row['cust_postalcode'];
                                                
                            ?> 
                             <tr>
                                 <td >
                                     <?php echo $cust_id;?>
                                 </td>

                                 <td width="150px">
                                    <?php echo $cust_name;?>
                                 </td>

                                 <td>
                                    <?php echo $cust_email;?>
                                 </td>

                                 <td> 
                                 <?php echo $cust_city ?>  
                                 </td>
                                 <td><?php echo $cust_postalcode;?></td>
                                 <td><a href="customers.php"><button class="btn btn-primary btn-sm">View Detail</button></td>
                            
                             </tr>   
                           <?php 
                               }

                            }else {
                              echo "<tr><td colspan='12'><h2 class='text-center text-secondary'>No Registered Customer Yet</h2></td></tr>";
                            }
                    ?>
      
                      </tbody> 
                  </table>   
          
        </div>
        </div>
  </div>

   

     

      
      <!-- /.container-fluid -->
<?php include('include/footer.php');?>