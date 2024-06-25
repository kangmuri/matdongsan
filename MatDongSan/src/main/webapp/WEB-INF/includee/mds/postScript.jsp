<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 페이지의 하단에 로딩할 스크립트 관리 -->
   <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>
    


    <!-- ========================= JS here ========================= -->
    <script src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/js/tiny-slider.js"></script>
    <script src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/js/glightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/js/main.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/app/chat/chat.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<%--     <script src="${pageContext.request.contextPath}/resources/js/app/index/profile.js"></script> --%>
    <script type="text/javascript">
      //========= Category Slider 
        tns({
            container: '.category-slider',
            items: 3,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: false,
            controls: true,
            controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 2,
                },
                768: {
                    items: 4,
                },
                992: {
                    items: 5,
                },
                1170: {
                    items: 6,
                }
            }
        });
        
        //========= testimonial 
        tns({
            container: '.testimonial-slider',
            items: 3,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: true,
            controls: false,
            controlsText: ['<i class="lni lni-arrow-left"></i>', '<i class="lni lni-arrow-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 1,
                },
                768: {
                    items: 2,
                },
                992: {
                    items: 2,
                },
                1170: {
                    items: 2,
                }
            }
        });
    </script>