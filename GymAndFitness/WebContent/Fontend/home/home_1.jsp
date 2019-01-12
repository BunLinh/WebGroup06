
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Colorlib Fitnezz</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet">

   <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/owl.carousel.min.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/magnific-popup.css">


    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/style.css">
  </head>
  <body>
    
    <header role="banner">
      <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
          <a class="navbar-brand" href="index.html">Fitne<span>zz</span></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarsExample05">
            <ul class="navbar-nav mr-auto pl-lg-5 pl-0">
              <li class="nav-item">
                <a class="nav-link active" href="index.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="services.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
                <div class="dropdown-menu" aria-labelledby="dropdown04">
                  <a class="dropdown-item" href="services.html">Body Builder</a>
                  <a class="dropdown-item" href="services.html">Yoga Pilate</a>
                  <a class="dropdown-item" href="services.html">Healthy Life</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="news.html">News</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact</a>
              </li>
            </ul>

            <ul class="navbar-nav ml-auto">
              <li class="nav-item cta-btn">
                <a class="nav-link" href="member.html">Become a member</a>
              </li>
            </ul>
            
          </div>
        </div>
      </nav>
    </header>
    <!-- END header -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('img/slider-1.jpg');">
        
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-8 text-center col-sm-12 element-animate">
              <h1>Health is wealth</h1>
              <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi unde impedit, necessitatibus, soluta sit quam minima expedita atque corrupti reiciendis.</p>
              <p><a href="#" class="btn btn-white btn-outline-white">Get Started</a> <a href="#" class="btn btn-link btn-white">Download</a></p>
            </div>
          </div>
        </div>

      </div>

      <div class="slider-item" style="background-image: url('img/slider-2.jpg');">
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-8 text-center col-sm-12 element-animate">
              <h1>Join Fitnezz Today</h1>
              <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi unde impedit, necessitatibus, soluta sit quam minima expedita atque corrupti reiciendis.</p>
              <p><a href="#" class="btn btn-white btn-outline-white">Get Started</a> <a href="#" class="btn btn-link btn-white">Download</a></p>
            </div>
          </div>
        </div>
        
      </div>

    </section>
    <!-- END slider -->

    
    <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Featured Classes</h2>
              <span class="back-text">The Classes</span>
            </div>
          </div>
        </div>
      </div>

      <div class="owl-carousel centernonloop">
        <a href="#" class="item-class">
          <div class="text">
            <p class="class-price">$30.99</p>
            <h2 class="class-heading">Fitness Class Name Here</h2>
          </div>
          <img src="img/img_1_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="#" class="item-class">
          <div class="text">
            <p class="class-price">$30.99</p>
            <h2 class="class-heading">Fitness Class Name Here</h2>
          </div>
          <img src="img/img_2_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="#" class="item-class">
          <div class="text">
            <p class="class-price">$30.99</p>
            <h2 class="class-heading">Fitness Class Name Here</h2>
          </div>
          <img src="img/img_3_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="#" class="item-class">
          <div class="text">
            <p class="class-price">$30.99</p>
            <h2 class="class-heading">Fitness Class Name Here</h2>
          </div>
          <img src="img/img_4_square.jpg" alt="" class="img-fluid">
        </a>
      </div>
    </section> <!-- .section -->

    <section class="section bg-light element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Our Schedule</h2>
              <span class="back-text-dark">Schedule</span>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        
        <div class="row no-gutters">
          <div class="col-md-6">
            <div class="sched d-block d-lg-flex">
              <div class="bg-image order-2" style="background-image: url('img/img_1_square.jpg');"></div>
              <div class="text order-1">
                <h3>Fitness Class Name Here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                <p class="sched-time">
                  <span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p><a href="#" class="btn btn-primary btn-sm">Join from $15</a></p>
                
              </div>
              
            </div>

            <div class="sched d-block d-lg-flex">
              <div class="bg-image" style="background-image: url('Fontend/img/img_2_square.jpg');"></div>
              <div class="text">
                <h3>Fitness Class Name Here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                <p class="sched-time">
                  <span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p><a href="#" class="btn btn-primary btn-sm">Join from $15</a></p>
                
              </div>
              
            </div>

          </div>

          <div class="col-md-6">
            <div class="sched d-block d-lg-flex">
              <div class="bg-image order-2" style="background-image: url('img/img_4_square.jpg');"></div>
              <div class="text order-1">
                <h3>Fitness Class Name Here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                <p class="sched-time">
                  <span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p><a href="#" class="btn btn-primary btn-sm">Join from $15</a></p>
                
              </div>
              
            </div>

            <div class="sched d-block d-lg-flex">
              <div class="bg-image" style="background-image: url('img/img_3_square.jpg');"></div>
              <div class="text">
                <h3>Fitness Class Name Here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                <p class="sched-time">
                  <span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p><a href="#" class="btn btn-primary btn-sm">Join from $15</a></p>
                
              </div>
              
            </div>

          </div>
        </div>
        

      </div>
    </section> <!-- .section -->

    <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Expert Trainers</h2>
              <span class="back-text">Our Trainers</span>
            </div>
          </div>
        </div>
      </div>
        <div class="container">
          <div class="row">
            <div class="major-caousel js-carousel-1 owl-carousel">
              <div>
                <div class="media d-block media-custom text-center">
                  <a href="#"><img src="img/person_1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Mellisa Howard</h3>
                    <p class="lead">Gym Trainer</p>
                  </div>
                </div>
              </div>
              <div>
                <div class="media d-block media-custom text-center">
                  <a href="#"><img src="img/person_2.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Mike Richardson</h3>
                    <p class="lead">Gym Trainer</p>
                  </div>
                </div>
              </div>
              <div>
                <div class="media d-block media-custom text-center">
                  <a href="#"><img src="img/person_3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Charles White</h3>
                    <p class="lead">Gym Trainer</p>
                  </div>
                </div>
              </div>

               <div>
              <div class="media d-block media-custom text-center">
                <a href="#"><img src="img/person_1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Mellisa Howard</h3>
                  <p class="lead">Gym Trainer</p>
                </div>
              </div>
            </div>
            <div>
              <div class="media d-block media-custom text-center">
                <a href="#"><img src="img/person_2.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Mike Richardson</h3>
                  <p class="lead">Gym Trainer</p>
                </div>
              </div>
            </div>
            <div>
              <div class="media d-block media-custom text-center">
                <a href="#"><img src="img/person_3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Charles White</h3>
                  <p class="lead">Gym Trainer</p>
                </div>
              </div>
            </div>
            
              
          </div>
          <!-- END slider -->
          </div>
        </div>
      
    </section> <!-- .section -->

    <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Testimonial</h2>
              <span class="back-text">Testimonial</span>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <blockquote class="testimonial">
              <p>&ldquo; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, obcaecati? Quis eum minus, sequi atque quisquam ducimus aliquam veritatis nobis cum iusto neque enim explicabo maxime natus doloribus, fuga sunt. &rdquo;</p>
              <div class="d-flex author">
                <img src="img/person_1.jpg" alt="" class="mr-4">
                <div class="author-info">
                  <h4>Mellisa Howard</h4>
                  <p>CEO, XYZ Company</p>
                </div>
              </div>  
            </blockquote>
          </div>
          <div class="col-md-4">
            <blockquote class="testimonial">
              <p>&ldquo; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, obcaecati? Quis eum minus, sequi atque quisquam ducimus aliquam veritatis nobis cum iusto neque enim explicabo maxime natus doloribus, fuga sunt. &rdquo;</p>
              <div class="d-flex author">
                <img src="img/person_2.jpg" alt="" class="mr-4">
                <div class="author-info">
                  <h4>Mike Richardson</h4>
                  <p>CEO, XYZ Company</p>
                </div>
              </div>  
            </blockquote>
          </div>
          <div class="col-md-4">
            <blockquote class="testimonial">
              <p>&ldquo; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, obcaecati? Quis eum minus, sequi atque quisquam ducimus aliquam veritatis nobis cum iusto neque enim explicabo maxime natus doloribus, fuga sunt. &rdquo;</p>
              <div class="d-flex author">
                <img src="img/person_3.jpg" alt="" class="mr-4">
                <div class="author-info">
                  <h4>Charles White</h4>
                  <p>CEO, XYZ Company</p>
                </div>
              </div>  
            </blockquote>
          </div>
        </div>
      </div>
    </section> <!-- .section -->

    <section class="section element-animate">
      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Blog</h2>
              <span class="back-text">Our Blog</span>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="blog d-block d-lg-flex">
              <div class="bg-image" style="background-image: url('img/img_2_square.jpg');"></div>
              <div class="text">
                <h3>Fitness Class Name Here</h3>
                <p class="sched-time">
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                
                <p><a href="#" class="btn btn-primary btn-sm">Read More</a></p>
                
              </div>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="blog d-block d-lg-flex">
              <div class="bg-image" style="background-image: url('img/img_2_square.jpg');"></div>
              <div class="text">
                <h3>Fitness Class Name Here</h3>
                <p class="sched-time">
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                
                <p><a href="#" class="btn btn-primary btn-sm">Read More</a></p>
                
              </div>
              
            </div>
          </div>
        </div>
      </div>

    </section> <!-- .section -->

    
    


    <footer class="site-footer" role="contentinfo">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-4 mb-5">
            <h3>About Us</h3>
            <p class="mb-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus et dolor blanditiis consequuntur ex voluptates perspiciatis omnis unde minima expedita.</p>
            <ul class="list-unstyled footer-link d-flex footer-social">
              <li><a href="#" class="p-2"><span class="fa fa-twitter"></span></a></li>
              <li><a href="#" class="p-2"><span class="fa fa-facebook"></span></a></li>
              <li><a href="#" class="p-2"><span class="fa fa-linkedin"></span></a></li>
              <li><a href="#" class="p-2"><span class="fa fa-instagram"></span></a></li>
            </ul>

          </div>
          <div class="col-md-5 mb-5">
            <h3>Contact Info</h3>
            <ul class="list-unstyled footer-link">
              <li class="d-block">
                <span class="d-block">Address:</span>
                <span class="text-white">34 Street Name, City Name Here, United States</span></li>
              <li class="d-block"><span class="d-block">Telephone:</span><span class="text-white">+1 242 4942 290</span></li>
              <li class="d-block"><span class="d-block">Email:</span><span class="text-white">info@yourdomain.com</span></li>
            </ul>
          </div>
          <div class="col-md-3 mb-5">
            <h3>Quick Links</h3>
            <ul class="list-unstyled footer-link">
              <li><a href="#">About</a></li>
              <li><a href="#">Terms of Use</a></li>
              <li><a href="#">Disclaimers</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
          <div class="col-md-3">
          
          </div>
        </div>
        <div class="row">
          <div class="col-12 text-md-center text-left">
            <p>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> <br> Demo Images Unsplash</p>
          </div>
        </div>
      </div>
    </footer>
    <!-- END footer -->

    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

  <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/owl.carousel.min.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/magnific-popup.css">


    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/style.css">
  </body>
</html>