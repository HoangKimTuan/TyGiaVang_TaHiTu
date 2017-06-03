<%-- 
    Document   : link
    Created on : Apr 9, 2017, 10:50:13 PM
    Author     : TranThiMinhTrang
--%>
<%request.setCharacterEncoding("utf-8");%>
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/dist/js/jquery-3.1.0.min.js"></script>
<!-- jQuery 2.2.3 -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/lib/bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/dist/js/app.min.js"></script>
<!-- Sparkline -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/chartjs/Chart.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/dist/js/demo.js"></script>
<!-- DataTables -->
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/plugins/datatables/dataTables.bootstrap.min.js"></script>

<script>
    $(function () {
        $('#example1').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
</script>

<script>
    $(document).ready(function(){
        if ("${user.role}" == "1") {
            $("#member").show();
        }
        else {
            $("#member").hide();
        }
    });
</script>