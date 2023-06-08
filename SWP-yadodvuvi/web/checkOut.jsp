<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.*"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Yadovuvi</title>
        <link rel="stylesheet" href="style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link
            href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700&family=Poppins:wght@400;500;600&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="stylesheet" href="css/common.css">
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.css"
            rel="stylesheet"
            />
        <style>
            .check-form {
                margin-top: -50px;
                z-index: 2;
                position: relative;
            }
            @media (min-width: 1025px) {
                .h-custom {
                    height: 100vh !important;
                }
            }
        </style>

    </head>

    <body class="bg-light">
        !<!-- navbar include by components -->
        <%@include file="conponents/navbar.jsp" %>


        <section class="h-100 h-custom" border="1">
            <div class="container h-100 py-5">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">

                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col" class="h5">Shopping Bag</th>
                                        <th scope="col">Format</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">
                                            <div class="d-flex align-items-center">
                                                <img src="https://i.imgur.com/2DsA49b.webp" class="img-fluid rounded-3"
                                                     style="width: 120px;" alt="Book">
                                                <div class="flex-column ms-4">
                                                    <p class="mb-2">Thinking, Fast and Slow</p>
                                                    <p class="mb-0">Daniel Kahneman</p>
                                                </div>
                                            </div>
                                        </th>
                                        <td class="align-middle">
                                            <p class="mb-0" style="font-weight: 500;">Digital</p>
                                        </td>
                                        <td class="align-middle">
                                            <div class="d-flex flex-row">
                                                <button class="btn btn-link px-2"
                                                        onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                    <i class="fas fa-minus"></i>
                                                </button>

                                                <input id="form1" min="0" name="quantity" value="2" type="number"
                                                       class="form-control form-control-sm" style="width: 50px;" />

                                                <button class="btn btn-link px-2"
                                                        onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                    <i class="fas fa-plus"></i>
                                                </button>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            <p class="mb-0" style="font-weight: 500;">$9.99</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="border-bottom-0">
                                            <div class="d-flex align-items-center">
                                                <img src="https://i.imgur.com/Oj1iQUX.webp" class="img-fluid rounded-3"
                                                     style="width: 120px;" alt="Book">
                                                <div class="flex-column ms-4">
                                                    <p class="mb-2">Homo Deus: A Brief History of Tomorrow</p>
                                                    <p class="mb-0">Yuval Noah Harari</p>
                                                </div>
                                            </div>
                                        </th>
                                        <td class="align-middle border-bottom-0">
                                            <p class="mb-0" style="font-weight: 500;">Paperback</p>
                                        </td>
                                        <td class="align-middle border-bottom-0">
                                            <div class="d-flex flex-row">
                                                <button class="btn btn-link px-2"
                                                        onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                    <i class="fas fa-minus"></i>
                                                </button>

                                                <input id="form1" min="0" name="quantity" value="1" type="number"
                                                       class="form-control form-control-sm" style="width: 50px;" />

                                                <button class="btn btn-link px-2"
                                                        onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                    <i class="fas fa-plus"></i>
                                                </button>
                                            </div>
                                        </td>
                                        <td class="align-middle border-bottom-0">
                                            <p class="mb-0" style="font-weight: 500;">$13.50</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                            <div class="card-body p-4">

                                <div class="row">
                                    <div class="col-md-6 col-lg-4 col-xl-3 mb-4 mb-md-0">
                                        <form>
                                            <div class="d-flex flex-row pb-3">
                                                <div class="d-flex align-items-center pe-2">
                                                    <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1v"
                                                           value="" aria-label="..." checked />
                                                </div>
                                                <div class="rounded border w-100 p-3">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <i class="fab fa-cc-mastercard fa-2x text-dark pe-2"></i>Credit
                                                        Card
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row pb-3">
                                                <div class="d-flex align-items-center pe-2">
                                                    <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel2v"
                                                           value="" aria-label="..." />
                                                </div>
                                                <div class="rounded border w-100 p-3">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <i class="fab fa-cc-visa fa-2x fa-lg text-dark pe-2"></i>Debit Card
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row">
                                                <div class="d-flex align-items-center pe-2">
                                                    <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel3v"
                                                           value="" aria-label="..." />
                                                </div>
                                                <div class="rounded border w-100 p-3">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <i class="fab fa-cc-paypal fa-2x fa-lg text-dark pe-2"></i>PayPal
                                                    </p>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-6">
                                        <div class="row">
                                            <div class="col-12 col-xl-6">
                                                <div class="form-outline mb-4 mb-xl-5">
                                                    <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
                                                           placeholder="John Smith" />
                                                    <label class="form-label" for="typeName">Name on card</label>
                                                </div>

                                                <div class="form-outline mb-4 mb-xl-5">
                                                    <input type="text" id="typeExp" class="form-control form-control-lg" placeholder="MM/YY"
                                                           size="7" id="exp" minlength="7" maxlength="7" />
                                                    <label class="form-label" for="typeExp">Expiration</label>
                                                </div>
                                            </div>
                                            <div class="col-12 col-xl-6">
                                                <div class="form-outline mb-4 mb-xl-5">
                                                    <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                                                           placeholder="1111 2222 3333 4444" minlength="19" maxlength="19" />
                                                    <label class="form-label" for="typeText">Card Number</label>
                                                </div>

                                                <div class="form-outline mb-4 mb-xl-5">
                                                    <input type="password" id="typeText" class="form-control form-control-lg"
                                                           placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" />
                                                    <label class="form-label" for="typeText">Cvv</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-3">
                                        <div class="d-flex justify-content-between" style="font-weight: 500;">
                                            <p class="mb-2">Subtotal</p>
                                            <p class="mb-2">$23.49</p>
                                        </div>

                                        <div class="d-flex justify-content-between" style="font-weight: 500;">
                                            <p class="mb-0">Shipping</p>
                                            <p class="mb-0">$2.99</p>
                                        </div>

                                        <hr class="my-4">

                                        <div class="d-flex justify-content-between mb-4" style="font-weight: 500;">
                                            <p class="mb-2">Total (tax included)</p>
                                            <p class="mb-2">$26.48</p>
                                        </div>

                                        <button type="button" class="btn btn-primary btn-block btn-lg">
                                            <div class="d-flex justify-content-between">
                                                <span>Checkout</span>
                                                <span>$26.48</span>
                                            </div>
                                        </button>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!--popular-->
        <div class="container">
            <h1 class=" mt-5 pt-4 mb-4 text-center">Tour dành cho các bạn</h1>
            <p class="mb-4 text-center">Hãy cùng trải nghiệm với chúng tôi</p>
            <div class="row popular-list">
                <c:forEach var="i" items="${requestScope.tour}">

                    <div class="col-lg-4 col-md-6 my-3">
                        <div class="popular-card">
                            <img src="${i.getImg()}" alt="Image description">

                            <div class="card-content">

                                <div class="card-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                </div>
                                <p class="card-subtitle">
                                    <a href="#">${i.getCity_ID()}</a>
                                </p>
                                <h3 class="h3 card-title">
                                    <a href="#">${i.getHotel()}</a>
                                </h3>
                                <p class="card-text">
                                    ${i.getContent()}
                                </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                <div class="col-lg-12 text-center mt-5">
                    <a href="#" class="btn btn-sm btn-outline-dark rounded-0 fw-bold shadow-none">More >>></a>
                </div>
            </div>




            <!-- <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4">
                        <div class="card border-0 shadow" style="max-width: 350px; margin: auto;">
                            <img src="images/tours/1.jfif" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Tour TÃ¢y NguyÃªn 3N2Ä: KhÃ¡m PhÃ¡ TÃ  ÄÃ¹ng - BuÃ´n MÃª Thuá»t - ThÃ¡c
                                    Draysap
                                </h5>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 v-margin-bottom-5 ">
        
                                    <ul class="tourListPros list-inline" style="font-size: 13px;">
                                        <li>KDL Há» TÃ  ÄÃ¹ng</li>
                                        <li>KhÃ¡m PhÃ¡ Xá»© Sá» TÃ¢y NguyÃªn</li>
                                        <li>áº¨m Thá»±c TÃ¢y NguyÃªn</li>
                                        <li>Báº£o TÃ ng Tháº¿ Giá»i CÃ  PhÃª</li>
                                    </ul>
                                </div>
                                <span class="price vcolor-info">73.999.000 <small class="textCurrency">VND</small></span>
                            </div>
        
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- footer -->
            <%@include file="conponents/footer.jsp" %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
            <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
            <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
            <script src="js/call_api.js"></script>
            <script>
                                                            var swiper = new Swiper(".swiper-container", {
                                                                spaceBetween: 30,
                                                                effect: "fade",
                                                                loop: true,
                                                                autoplay: {
                                                                    delay: 3500,
                                                                    disableOnInteraction: false,
                                                                }
                                                            });
            </script>
            <!-- MDB -->
            <script
                type="text/javascript"
                src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.js"
            ></script>

    </body>

</html>