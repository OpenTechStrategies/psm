 <%--
  - Author: TCSASSEMBLER
  - Version: 1.0
  - Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
  -
  - Description: This is the enrollments rejected page.
--%>
<%@ include file="/WEB-INF/pages/admin/includes/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en-US">
  <c:set var="title" value="Denied Enrollments"/>
  <c:set var="adminPage" value="true" />
  <h:handlebars template="includes/html_head" context="${pageContext}" />
  <body>
    <div id="wrapper">
      <h:handlebars template="includes/header" context="${pageContext}"/>
      <div id="mainContent">
        <div class="contentWidth">
          <div class="mainNav">
            <h:handlebars template="includes/logo" context="${pageContext}"/>
            <c:set var="activeTabEnrollments" value="true"></c:set>
            <h:handlebars template="includes/nav" context="${pageContext}"/>
          </div>
          <!-- /.mainNav -->
          <div class="breadCrumb">
            <a href="<c:url value='/provider/dashboard/drafts' />">Enrollments</a>
            <span>Denied Enrollments</span>
          </div>
          <h1>Denied Enrollments</h1>
          <div class="tabSection" id="enrollmentSection">
            <c:set var="active_enrollment_tab" value="rejected"/>
            <c:set var="enrollmentSearchFormAction" value="${ctx}/provider/search/rejected?statuses=Rejected"/>
            <c:set var="searchResult" value="${results}"/>
            <%@ include file="/WEB-INF/pages/admin/includes/enrollment_tab_section.jsp" %>
            <%@ include file="/WEB-INF/pages/admin/includes/enrollment_search_form.jsp" %>
            <!-- /.tabHead -->
            <div class="tabContent">
              <div class="pagination">
                <%@ include file="/WEB-INF/pages/admin/includes/page_left_navigation.jsp" %>
                <%@ include file="/WEB-INF/pages/admin/includes/enrollment_buttons.jsp" %>
              </div>
              <%@ include file="/WEB-INF/pages/admin/includes/enrollment_search_filter_panel.jsp" %>
              <c:choose>
              <c:when test="${searchResult.total == 0}">
                <div class="tableWrapper">
                  <div class="tableContainer"></div>
                  <div class="tabFoot">
                    <div class="tabR">
                      <div class="tabM red">
                        No matched data found.
                      </div>
                    </div>
                  </div>
                </div>
              </c:when>
              <c:otherwise>
                <div class="tableWrapper">
                  <div class="tableContainer">
                    <%@ include file="/WEB-INF/pages/admin/includes/enrollment_search_result_table.jsp" %>
                  </div>
                  <!-- /.tableContainer -->
                  <div class="tabFoot">
                    <div class="tabR">
                      <div class="tabM">
                        <%@ include file="/WEB-INF/pages/admin/includes/page_navigation.jsp" %>
                      </div>
                    </div>
                  </div>
                  <!-- /.tabFoot -->
                </div>
              </c:otherwise>
              </c:choose>
            </div>
          </div>
          <!-- /.tabSection -->
        </div>
      </div>
      <!-- /#mainContent -->
      <h:handlebars template="includes/footer" context="${pageContext}"/>
      <!-- #footer -->
    </div>
    <!-- /#wrapper -->
  </body>
</html>
