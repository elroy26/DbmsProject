<?php include('include/header.php'); ?>

        <div class="container sign-in-up">
          <div class="row">
            <div class="col-md-6">
              <br><br><br>
              <h1>BrookWood Furnitures</h1>
              
            </div>
            
            <div class="col-md-6">
              <div class="card">
                <div class="card-body">
                  <h1 class="text-center mt-5">Register Account</h1>
                  
                  
                  <form method="post" class="mt-5 p-3">
                    
                    <?php 
                      if(isset($_POST['register'])){
                          
                          $fullname = $_POST['fullname'];
                          $email = $_POST['email'];
                          $password = $_POST['password'];
                          $conf_pass = $_POST['confirm-password'];
                          $address = $_POST['address'];
                          $city = $_POST['city'];
                          $postal_code = $_POST['code'];
                          $number = $_POST['phone_number'];
                          
                          if(!empty($fullname) and !empty($email) and !empty($password) and !empty($conf_pass) and !empty($address) and !empty($city) and !empty($postal_code) and !empty(strlen($number)===10)){

                            if($password === $conf_pass){

                              $cust_query="INSERT INTO customer(`cust_name`,`cust_email`,`cust_pass`,`cust_add`,`cust_city`,`cust_postalcode`,`cust_number`) VALUES('$fullname','$email','$password','$address','$city','$postal_code','$number')";


                              if(mysqli_query($con,$cust_query)){
                                  $message="You Are Registered Successfully!";
                              }
                              
                              
                              
                            } 
                            else{
                                $error="Passwords do not Match";
                            }
                          }
                            else{
                          $error="Please enter the details correctly!!! ";
                      }
                      }
                    
                      ?>
                      <?php
                      if(isset($error)){
                      
                        echo "<div class='alert bg-danger' role='alert'>
                                <span class='text-white text-center'> $error</span>
                              </div>";
                    
                        }
                      else if(isset($message)){
                      
                        echo "<div class='alert bg-success' role='alert'>
                                <span class='text-white text-center'> $message</span>
                              </div>";
                    
                        }
                      
                      ?>
                    <div class="form-group">
                    
                      <input type="text" name="fullname" placeholder="Full Name" class="form-control"  value="<?php echo 
isset($_POST['fullname']) ? $_POST['fullname']:'';?>">
                     </div>

                    <div class="form-group">
                      <input type="text" name="email" placeholder="Email" class="form-control" value="<?php echo 
isset($_POST['email']) ? $_POST['email']:'';?>" >
                     </div>

                      <div class="row">
                        <div class="col-md-6 col-sm-6 col-12">
                          <div class="form-group">
                            <input type="password" name="password" placeholder="password" class="form-control" >
                          </div>
                        </div>
                        <div class="col-sm-6 col-12 col-md-6 ">
                          <div class="form-group">
                            <input type="password" name="confirm-password" placeholder="Confirm password" class="form-control" >
                          </div>
                        </div>
                      </div>
                  

                      <div class="form-group">
                        <input type="text" name="address" placeholder="Address" class="form-control" value="<?php echo 
isset($_POST['address']) ? $_POST['address']:'';?>" >
                    </div>
                     
                    <div class="row">
                      <div class="col-md-6 col-6">
                        <div class="form-group">
                          <input type="text" name="city" placeholder="City" class="form-control" value="<?php echo 
isset($_POST['city']) ? $_POST['city']:'';?>">
                       </div>
                      </div>
                      
                      <div class="col-md-6 col-6">
                        <div class="form-group">
                          <input type="number" name="code" placeholder="Postal code" class="form-control" value="<?php echo 
isset($_POST['code']) ? $_POST['code']:'';?>">
                       </div>
                      </div>

                    </div>

                    <div class="form-group">
                      <input type="telephone" name="phone_number" placeholder="Phone Number" class="form-control" pattern="[0,1,2,3,4,5,6,7,8,9]{10}" maxlength="10" value="<?php echo 
isset($_POST['phone_number']) ? $_POST['phone_number']:'';?>" >
                   </div>

                      <div class="form-group text-center mt-4">
                        <input type="submit" name="register" class="btn btn-primary" value="Register">
                      </div>

                      <div class="text-center mt-4"> Already a Member? <a href="sign-in.php"> Sign in </a></div>

                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
   
        <?php include('include/footer.php');?>