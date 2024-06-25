<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer id="footer" class="footer">
  <div class="copyright">
    &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
  </div>
  <div class="credits">
    <!-- All the links in the footer should remain intact. -->
    <!-- You can delete the links only if you purchased the pro version. -->
    <!-- Licensing information: https://bootstrapmade.com/license/ -->
    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
  </div>
</footer>
<script>
//===header의 마이페이지 드롭다운 -요한- === //
var dropdown = document.querySelector(".dropdown_bar");
var dropdownContent = document.querySelector(".dropdown_content");
var drop_icon1 = document.querySelector(".drop_icon1");
var drop_icon2 = document.querySelector(".drop_icon2");

//console.log("drop_icon1==>",drop_icon1);
//console.log("drop_icon2==>",drop_icon2);

dropdown.addEventListener("click", function() {
  if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
      drop_icon1.style.display = "inline-flex";
      drop_icon2.style.display = "none";
  } else {
      dropdownContent.style.display = "block";
      drop_icon1.style.display = "none";
      drop_icon2.style.display = "inline-flex";
  }
});
</script>