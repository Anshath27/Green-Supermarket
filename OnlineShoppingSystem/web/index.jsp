<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <!-- Importing all ui libs -->
   
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/simpleCart.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="js/jquery.easing.min.js"></script>
    <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
</head>
<body style="background: #fff">
<body>
    <div class="ban-top" style="background: #1B4F72;">
        <div class="container" >
            <div class="top_nav_left">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed"
                                    data-toggle="collapse"
                                    data-target="#bs-example-navbar-collapse-1"
                                    aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                            </button>
                        </div>
                        <jsp:include page="header.jsp"></jsp:include>
                        </div>
                    </nav>
                </div>
                <div class="top_nav_right" >
                    <div class="cart box_1" style="background: #1B4F72;">
                        <a href="checkout.jsp"> 
                        <%
                            //Getting all cart details of the customer
                            ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                            resultCount.next();
                            int count = resultCount.getInt(1);
                        %>
                        <h3>
                            <div class="total">
                                <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                (
                                <%=count%>
                                items )
                            </div>
                        </h3>
                    </a>
                    <p>
                        <a href="javascript:;" class="simpleCart_empty" >Your Cart</a>
                    </p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    
                                
                                
                                
                                
                                
                                
                                
                                
                                
                   <div
      class="max-w-md mx-auto mt-4 overflow-hidden sm md:grid md:grid-cols-4 lg:max-w-full lg:mx-16 md:max-w-5xl md:mx-3 sm:max-w-2xl scroll group/carousel"
    >
      <div
        class="hidden p-6 bg-green-800 max-h-fit md:block text-end rounded-tl-2xl rounded-bl-2xl"
      >
        <div class="md:max-h-11 lg:flex lg:flex-col">
          <h1
            class="md:text-[50px] lg:text-[110px] font-bold text-yellow-400 -rotate-12 group-hover/carousel:rotate-0"
          >
            25%
          </h1>
          <h1
            class="font-semibold text-white lg:text-3xl md:text-2xl group-hover/carousel:scale-105"
          >
            Christmas discount
          </h1>
          <p
            class="font-light text-gray-100 lg:text-xs md:text-xs group-hover/carousel:rotate-0"
          >
            We are giving a 25% discount for each bill that is over the LKR
            5000/=
          </p>
          <p
            class="invisible font-light text-red-500 lg:text-xs md:text-xs group-hover/carousel:visible"
          >
            *This discount will expire on 31 Dec.
          </p>
        </div>
      </div>

      <div
        class="flex items-center col-span-3 overflow-hidden bg-green-800 rounded-2xl md:rounded-tl-none md:rounded-bl-none place-content-center h-fit"
      >
        <!-- carosel image slide  -->

        <div class="relative z-10 mt-4 md:mt-4 md:mr-4">
          <div
            x-data="{
          currentSlide: 0,
          skip: 1,
          atBeginning: false,
          atEnd: false,
          autoSlideInterval: null,
          startAutoSlide() {
              this.autoSlideInterval = setInterval(() => {
                  this.next();
              }, 2500);
          },
          stopAutoSlide() {
              clearInterval(this.autoSlideInterval);
          },
          goToSlide(index) {
              let slider = this.$refs.slider;
              let offset = slider.firstElementChild.getBoundingClientRect().width;
              slider.scrollTo({ left: offset * index, behavior: 'smooth' });
          },
          next() {
              let slider = this.$refs.slider;
              let current = slider.scrollLeft;
              let offset = slider.firstElementChild.getBoundingClientRect().width;
              let maxScroll = offset * (slider.children.length - 1);
    
              current + offset >= maxScroll ? slider.scrollTo({ left: 0, behavior: 'smooth' }) : slider.scrollBy({ left: offset * this.skip, behavior: 'smooth' });
          },
          prev() {
              let slider = this.$refs.slider;
              let current = slider.scrollLeft;
              let offset = slider.firstElementChild.getBoundingClientRect().width;
              let maxScroll = offset * (slider.children.length - 1);
    
              current = 0 ? slider.scrollTo({ left: maxScroll, behavior: 'smooth' }) : slider.scrollBy({ left: -offset * this.skip, behavior: 'smooth' });
          },
          updateButtonStates() {
              let slideEls = this.$el.parentElement.children;
              this.atBeginning = slideEls[0] === this.$el;
              this.atEnd = slideEls[slideEls.length-1] === this.$el;
          },
          focusableWhenVisible: {
              'x-intersect:enter'() { this.$el.removeAttribute('tabindex'); },
              'x-intersect:leave'() { this.$el.setAttribute('tabindex', '-1'); }
          },
          disableNextAndPreviousButtons: {
              'x-intersect:enter.threshold.05'() { this.updateButtonStates(); },
              'x-intersect:leave.threshold.05'() { this.updateButtonStates(); }
          },
          updateCurrentSlide() {
              let slider = this.$refs.slider;
              let offset = slider.firstElementChild.getBoundingClientRect().width;
              this.currentSlide = Math.round(slider.scrollLeft / offset);
          }
      }"
            x-init="startAutoSlide()"
            @mouseover="stopAutoSlide()"
            @mouseout="startAutoSlide()"
            class="flex flex-col w-full"
          >
            <div
              x-on:keydown.right="next"
              x-on:keydown.left="prev"
              tabindex="0"
              role="region"
              aria-labelledby="carousel-label"
              class="z-0 flex"
            >
              <h2 id="carousel-label" class="sr-only max-h-fit" hidden>
                Carousel
              </h2>

              <span id="carousel-content-label" class="sr-only h-fit" hidden
                >Carousel</span
              >

              <ul
                x-ref="slider"
                @scroll="updateCurrentSlide"
                tabindex="0"
                role="listbox"
                aria-labelledby="carousel-content-label"
                class="flex w-full overflow-x-hidden snap-x snap-mandatory"
              >
               
                  

                

                <li
                  x-bind="disableNextAndPreviousButtons"
                  class="flex flex-col items-center justify-center w-full p-0 shrink-0 snap-start"
                  role="option"
                >
                  <img
                    class="w-full rounded-2xl"
                    src="https://essstr.blob.core.windows.net/uiimg/Carousel/DirectImportCarousel.jpg"
                    alt="placeholder image"
                  />

                  
                </li>

                

                

                
              </ul>
            </div>
            <!-- Prev / Next Buttons -->
            <!-- <div class="absolute z-10 flex justify-between w-full h-full px-4"> -->
            <!-- Prev Button -->
            <!-- <button x-on:click="prev" class="text-6xl" :aria-disabled="atBeginning" :tabindex="atEnd ? -1 : 0">
                  <span aria-hidden="true">
                      <svg xmlns="http://www.w3.org/2000/svg" class="w-auto h-5 text-gray-300 lg:h-8 hover:text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="3">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7" />
                      </svg>
                  </span>
                  <span class="sr-only">Skip to previous slide page</span>
              </button> -->

            <!-- Next Button -->
            <!-- <button x-on:click="next" class="text-6xl" :aria-disabled="atEnd" :tabindex="atEnd ? -1 : 0">
                  <span aria-hidden="true">
                      <svg xmlns="http://www.w3.org/2000/svg" class="w-auto h-5 text-gray-300 lg:h-8 hover:text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="3">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7" />
                      </svg>
                  </span>
                  <span class="sr-only">Skip to next slide page</span>
              </button>
          </div> -->

            <!-- Indicators -->

            <div class="absolute w-full bottom-3 lg:bottom-6">
              <div class="flex justify-center space-x-2">
                <template
                  x-for="(slide, index) in Array.from($refs.slider.children)"
                  :key="index"
                >
                  <button
                    @click="goToSlide(index)"
                    :class="{'bg-green-400': currentSlide === index, 'bg-gray-300': currentSlide !== index}"
                    class="w-3 h-1 rounded-full lg:w-5 hover:bg-gray-400 focus:outline-none focus:bg-gray-400"
                  ></button>
                </template>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--Image slide end-->
      <!--Carousel end-->
    </div>
                                
                                <div>
                                    <h1 style="text-align: center; font-family: 'poppins';padding: 40px" ><b><i>
                                        "Discover fresh flavors and unbeatable deals ? your one-stop shop for a delightful grocery shopping experience."
                                            </i> </b> </h1>
                                </div>     
                                              
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
    <br/>
    
    <div class="product-easy">
        <div class="container">
            <div class="container">
                <h2 style="font-size: 40px; font-weight: 500;">
                    <span><center>Our Products</center></span>
                </h2>
            </div>
            <%
                ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                while (retriveProduct.next()) {
            %>
            <form action="AddToCart" method="post">
                <div class="single-pro">
                    <div class="col-md-3 product-men">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <input type="hidden" name="productId"
                                       value="<%=retriveProduct.getInt("id")%>"> <img
                                       src="uploads/<%=retriveProduct.getString("image_name")%>"
                                       alt="" class="pro-image-front"> <img
                                       src="uploads/<%=retriveProduct.getString("image_name")%>"
                                       alt="" class="pro-image-back"> <span
                                       class="product-new-top">New</span>
                            </div>
                            <div class="item-info-product ">
                                <h4>
                                    <a href=""  style="color: #52BE80 "><%=retriveProduct.getString("name")%></a>
                                </h4>
                                <h5>
                                    Category: <%=retriveProduct.getString("product_category")%>
                                </h5>
                                <div class="info-product-price">
                                    <input type="hidden" name="price"
                                           value="<%=retriveProduct.getString("price")%>"> <input
                                           type="hidden" name="mrp_price"
                                           value="<%=retriveProduct.getString("mrp_price")%>"> <span
                                           class="item_price">Rs.<%=retriveProduct.getString("price")%> </span>
                                    <del><%=retriveProduct.getString("mrp_price")%> </del>
                                </div>
                                <input type="submit" value="Add to cart" class="btn btn-warning" onclick="return confirm('Are you sure Do you want to add this item in cart?');">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <%
                }
            %>
        </div>
    </div>
       
        
        

        
    <jsp:include page="footer.jsp"></jsp:include>
        
        
        
        
</body>
</html>