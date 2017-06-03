<%-- 
    Document   : sidebar_right
    Created on : Apr 9, 2017, 10:27:55 PM
    Author     : TranThiMinhTrang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<table class="table table-bordered table-hover text-center">
    <thead>
        <tr>
            <th class="text-center" colspan="3">
                <a href="#" title="Xem trực tiếp giá vàng thế giới"><span class="glyphicon glyphicon-adjust"></span>Giá vàng thế giới</a>
            </th>
        </tr>
    </thead>
    <tbody>
        <tr class="table-head">
            <td>Quy đổi</td>
            <td>Mua vào</td>
            <td>Bán ra</td>
        </tr>

        <tr>
            <td><small>USD/oz</small></td>
            <td><span>1139.94</span></td>
            <td><span>1140.39</span></td>
        </tr>

        <tr>
            <td><small>~ VND/lượng</small></td>
            <td>31,328.81</td>
            <td>31,437.42</td>
        </tr>  

        <tr>
            <td colspan="3">
                <i class="footer-mini-table">Cập nhật lúc 09:36:26 05/03/2017</i><br>
                <i><a href="#" title="Xem trực tiếp giá vàng thế giới">Xem giá vàng thế giới</a></i>
            </td>
        </tr>
    </tbody>
</table>

<table class="table table-bordered table-hover text-center">
    <thead>
        <tr>
            <th class="text-center" colspan="3">
                <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/jsp/currency_conversion.jsp" title="Tỷ giá ngoại tệ"><span class="glyphicon glyphicon-usd"></span>Tỷ giá ngoại tệ(Vietcombank)</a>
            </th>
        </tr>
    </thead>
    <tbody>
        <tr class="table-head">
            <td>Ngoại tệ</td>
            <td>Mua vào</td>
            <td>Bán ra</td>
        </tr>

        <tr>
                <td><span>USD</span></td>
                <td><span>22,795.00</span></td>
                <td><span>22,865.00</span></td>
        </tr>

        <tr>
            <td><span>EUR</span></td>
                <td><span>23,832.08</span></td>
                <td><span>24,116.91</span></td>
        </tr>

        <tr>
                <td><span>GBP</span></td>
                <td><span>27,650.04</span></td>
                <td><span>28,093.21</span></td>
        </tr>

        <tr>
                <td><span>JPY</span></td>
                <td><span>196.97</span></td>
                <td><span>200.73</span></td>
        </tr>

        <tr>
                <td><span>KRW</span></td>
                <td><span>18.20</span></td>
                <td><span>20.36</span></td>
        </tr>

        <tr>
            <td colspan="3" >
                <i class="footer-mini-table">Cập nhật lúc 09:36:26 05/03/2017</i><br>
                <i><a href="#" title="Tỷ giá ngoại tệ Vietcombank">Xem đầy đủ bảng tỷ giá ngoại tệ</a></i>
            </td>
        </tr>                
    </tbody>
</table>


<table class="table table-bordered table-hover text-center">
    <thead>
        <tr>
            <th class="text-center" colspan="3">
                    <a href="#" title="Giá bán lẻ xăng dầu hôm nay"><span class="glyphicon glyphicon-filter"></span>Giá bán lẻ xăng dầu</a>
            </th>
        </tr>
    </thead>

    <tbody>
        <tr class="table-head">
            <td>Sản phẩm</td>
            <td>Vùng 1</td>
            <td>Vùng 2</td>
        </tr>

        <tr>
                <td>Xăng RON 95-IV</td>
                <td>18,940</td>
                <td>19,310</td>
        </tr>

        <tr>
                <td>Xăng RON 95-II,III</td>
                <td>18,790</td>
                <td>19,160</td>
        </tr>

        <tr>
                <td>Xăng RON 92-II</td>
                <td>18,090</td>
                <td>18,450</td>
        </tr>

        <tr>
                <td>Xăng sinh học E5 RON 92-II</td>
                <td>17,810</td><td>18,160</td>
        </tr>

        <tr>
                <td>Điêzen 0,05S (DO 0.005S)</td>
                <td>14,300</td>
                <td>14,580</td>
        </tr>

        <tr>
                <td>Dầu hỏa</td>
                <td>12,750</td>
                <td>13,000</td>
        </tr>

        <tr>
                <td colspan="3">
                    <i class="footer-mini-table">Cập nhật lúc 09:57:56 05/03/2017</i><br/>
                    <i><a href="#" title="Giá bán lẻ xăng dầu">Xem đầy đủ bảng giá bán lẻ xăng dầu</a></i>
                </td>
            </tr>                
    </tbody>
</table>

<table class="table table-bordered table-hover text-center">
    <thead>
        <tr>
            <th class="text-center">
                    <a href="#" title="Giá dầu thô thế giới"><span class="glyphicon glyphicon-oil"></span> Giá dầu thô thế giới</a>
            </th>
        </tr>
    </thead>

    <tbody>
        <tr>
            <td>
                <div class="img-chart">
                    <a href="#">
                        <img class="img-oil" src="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/TyGiaVang-war/public/dist/img/chart-live-crude-oil.jpg" alt="Giá dầu thô thế giới" title="Giá dầu thô thế giới">
                    </a>
                </div>
            </td>
        </tr>

        <tr>
            <td>
                <i class="footer-mini-table">Cập nhật lúc 09:57:56 05/03/2017</i><br/>
                    <i><a href="#" title="Giá dầu thô thế giới">Xem chi tiết giá dầu thô thế giới</a></i>
            </td>
        </tr>
    </tbody>
</table>
