<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.*"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="vn">

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

        <form action="BookingTour" method="post">
            <section class="h-100 h-custom" border="1">
                <div class="container h-100 py-5">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="h5">My tour</th>
                                            <th scope="col">Hotel</th>
                                            <th scope="col">Discount</th>
                                            <th scope="col">People</th>
                                            <th scope="col">Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">
                                                <div class="d-flex align-items-center">
                                                    <img src="https://th.bing.com/th/id/R.fb6b35850162d68870d9841ee258bc48?rik=6aec7zalVnxxzA&pid=ImgRaw&r=0" class="img-fluid rounded-3" style="width: 120px;" alt="Book">
                                                    <div class="flex-column ms-4">
                                                        <h5 class="mb-2">Du Lịch: ${city}</h5>
                                                    </div>
                                                </div>
                                            </th>
                                            <td class="align-middle">
                                                <p class="mb-0" style="font-weight: 500;">${hotel}</p>
                                            </td>
                                            <td class="align-middle">
                                                <p class="mb-0" style="font-weight: 500;">${discount}</p>
                                            </td>
                                            <td class="align-middle">
                                                <div class="d-flex flex-row">
                                                    <input type="hidden" name="id" value="${id}" />
                                                    <button type="submit" class="btn btn-link px-2" name="action" value="DOWN">
                                                        <i class="fas fa-minus"></i>
                                                    </button>
                                                    <input  name="people" value="${people}" type="number" class="form-control form-control-sm" style="width: 50px;" readonly />
                                                    <button type="submit" class="btn btn-link px-2" name="action" value="UP">
                                                        <i class="fas fa-plus"></i>
                                                    </button>
                                                </div>
                                            </td>
                                            <td id="priceCell" class="align-middle">
                                                <p class="mb-0" style="font-weight: 500;">${String.format("%.1f", t.getTotalPrice() )}VND</p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                                <div class="card-body p-4">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-4 col-xl-3 mb-4 mb-md-0">
                                            <div class="payment-options ">
                                                <h2>Payment Options</h2>
                                                <label>
                                                    <input type="radio" name="paymentMethod" value="bank-transfer" onclick="handlePaymentMethod()">
                                                    Bank Transfer
                                                </label>
                                                <br>
                                                <label>
                                                    <input type="radio" name="paymentMethod" value="qr-code" onclick="handlePaymentMethod()">
                                                    QR Code
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-8 col-xl-3">
                                            <div id="bankInfo" style="display: none;">
                                                <!-- Bank transfer information -->
                                                Bank Name: AAA<br>
                                                Account Number: 111111111111<br>
                                                Nôi Dung: ${city}-${totalPrice}VND
                                            </div>

                                            <div id="qrCodeImage" style="display: none;">
                                                <!-- QR code image -->
                                                <img src="path_to_qr_code_image" alt="QR Code">
                                            </div>
                                        </div>
                                        <script>
                                            function handlePaymentMethod() {
                                                var selectedMethod = document.querySelector('input[name="paymentMethod"]:checked').value;

                                                if (selectedMethod === "bank-transfer") {
                                                    // Show bank transfer information and hide QR code
                                                    document.getElementById("bankInfo").style.display = "block";
                                                    document.getElementById("qrCodeImage").style.display = "none";
                                                } else if (selectedMethod === "qr-code") {
                                                    // Show QR code image and hide bank transfer information
                                                    document.getElementById("bankInfo").style.display = "none";
                                                    document.getElementById("qrCodeImage").style.display = "block";
                                                }
                                            }
                                        </script>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <!-- Remaining code for card details inputs -->
                                        </div>
                                        <div class="col-lg-4 col-xl-3">
                                            <div class="d-flex justify-content-between" style="margin-top: 6rem;">
                                                <div>
                                                    <p class="mb-0">People:</p>
                                                    <c:if test="${discount != null}">
                                                        <p style="color: red">Discount: </p>
                                                    </c:if>
                                                    <h5 class="mb-0">Total:</h5>
                                                </div>
                                                <div>
                                                    <p class="mb-0" id="peopleValue">${people}</p>
                                                    <c:if test="${discount != null}">
                                                        <p style="color: red">Discount: <span id="discountValue">${discount}%</span></p>
                                                    </c:if>
                                                    <h5 class="mb-0" id="totalPriceValue">${String.format("%.1f",totalPrice)}VND</h5>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-between mt-5">
                                                <button class="btn btn-primary btn-lg" style="width: 100%;" name="action" value="Book">Book now</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </section>
        </form> 


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