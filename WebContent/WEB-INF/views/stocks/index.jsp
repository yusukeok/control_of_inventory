<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
         </c:if>

         <div class="search-area">
           <script src="index.js"></script>
           <form method="get" action="">
           <select id="manufacturing_company" name="">
                  <option value="">メーカーで絞り込み
                  <option value="Apple">Apple
                  <option value="Samsung">Samsung
                  <option value="Xiaomi">Xiaomi
           </select>
           <input type="button" value="絞り込む" id="button"> <input type="button" value="すべて表示" id="button2">
           </form>
         </div>

         <p><a href="${pageContext.request.contextPath}/new">新規登録</a></p>

         <table id="data">
              <thead>
                <tr>
                   <th>製品名</th>
                   <th>メーカー</th>
                   <th>発売日</th>
                   <th>在庫</th>
                </tr>
              </thead>

            <c:forEach var="smartphonelist" items="${smartphonelists}">
                        <tbody>
                         <tr>
                            <td><a href="${pageContext.request.contextPath}/show?id=${smartphonelist.id}">
                            <c:out value="${smartphonelist.product_name}" /></a></td>
                            <td><c:out value="${smartphonelist.manufacturing_company}" /></td>
                            <td><c:out value="${smartphonelist.release_date}" /></td>
                            <td><c:out value="${smartphonelist.stock}" /></td>
                         </tr>
                        </tbody>
             </c:forEach>
         </table>

     </c:param>
</c:import>