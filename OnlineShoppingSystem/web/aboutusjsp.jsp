<%-- 
    Document   : aboutusjsp
    Created on : Dec 29, 2023, 6:46:16 AM
    Author     : Raveen Gunawardana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Super Market</title>
    <style>
        *{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    box-sizing: border-box;
}
body{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #f1f1f1;
}
.about-section{
    background: url(uploads/foodcity.jpg) no-repeat left;
    background-size: 55%;
    background-color: #fdfdfd;
    overflow: hidden;
    padding: 100px 0;
}

.inner-container{
    width: 55%;
    float: right;
    background-color: #fdfdfd;
    padding: 150px;
    
}
.inner-container h1{
    margin-bottom: 30px;
    font-size: 30px;
    font-weight: 900;
}
.text{
    font-size: 13px;
    color: #545454;
    line-height: 30px;
    text-align: justify;
    margin-bottom: 40px;
}

@media screen and (max-width:1200px){
    .inner-container{
        padding: 80px;
    }
}
@media screen and (max-width:1000px){
    .about-section{
        background-size:100%;
        padding:100px 40px;
    }
    
    .inner-container{
        width: 100%;
    }
}

@media screen and (max-width:600px){
    .about-section{
       
        padding:0;
    }
    
    .inner-container{
        padding: 60px;
    }
}
    </style>
</head>
<body>
    <div class="about-section">
        <div class="inner-container">
            <h1>About Us</h1>
            <p class="text">
                Step into the world of Green Super Supermarket, where our commitment to customer care and eco-friendliness sets us apart. As your go-to destination for sustainable shopping, we take pride in curating a diverse selection of products that align with our green values. From fresh produce to household essentials, every item reflects our dedication to environmental responsibility. Our knowledgeable staff is here to assist you, ensuring a personalized and eco-conscious shopping experience. Join us on the journey towards a greener tomorrow as we redefine the supermarket experience with a touch of environmental mindfulness.
                
            </p>
            
        </div>
    </div>
      <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>