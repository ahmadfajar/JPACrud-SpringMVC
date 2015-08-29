<#import "/spring.ftl" as spring />
<#assign xhtmlCompliant = true in spring>
<!doctype html>
<html>
<head>
<#include "../head-meta.ftl"/>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
              aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<@spring.url "/"/>">JPA-Crud Project</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a href="<@spring.url "/"/>">Home</a></li>
        <li class="active"><a href="<@spring.url "/employee"/>">Employee</a></li>
        <li><a href="<@spring.url "/department"/>">Department</a></li>
      </ul>
    </div>
  </div>
</nav>

<#assign caret>
<span class="pull-right glyphicon glyphicon-triangle-<#if employeeGrid.sortDir == "asc">top<#else>bottom</#if>"></span>
</#assign>
<section class="container">
  <div class="page-header">
    <h1>Daftar Employee</h1>
  </div>
<#include "../messages.ftl"/>
  <form method="post" action="<@spring.url "/employee"/>" id="tableForm" class="form-horizontal">
    <div class="clearfix">
      <div class="col-xs-5 col-sm-4 col-md-3 col-lg-2 pull-right">
        <div class="row">
          <select id="departments" name="departments">
            <option value="">-- Pilih Departemen --</option>
          <#list departments as dept>
            <option value="${dept.deptId}">${dept.deptName}</option>
          </#list>
          </select>
        </div>
      </div>
      <div class="col-xs-6 col-sm-4">
        <div class="row">
          <div class="input-group input-group">
          <@spring.formInput "employeeGrid.term", "class=\"form-control\" data-toggle=\"tooltip\" placeholder=\"Ketik nama employee\""/>
            <span class="input-group-btn">
                  <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i>
                  </button>
              </span>
          </div>
        </div>
      </div>
    </div>
    <article class="table-responsive">
      <table class="table htgrid">
        <thead>
        <tr>
          <th class="htgrid-cell-header text-right">#</th>
          <th class="htgrid-cell-header text-center"><label><input type="checkbox" id="toggle-check"/></label>
          </th>
          <th class="htgrid-cell-header">
            <div class="cell-header-inner" title="Klik untuk mengurutkan" data-toggle="tooltip" rel="fullname">
            <#if employeeGrid.sortField == "fullname">${caret}</#if>Nama Lengkap
            </div>
          </th>
          <th class="htgrid-cell-header">
            <div class="cell-header-inner" title="Klik untuk mengurutkan" data-toggle="tooltip"
                 rel="department.deptName"><#if employeeGrid.sortField == "department.deptName">${caret}</#if>Departemen
            </div>
          </th>
          <th class="htgrid-cell-header hidden-xs">
            <div class="cell-header-inner" title="Klik untuk mengurutkan" data-toggle="tooltip" rel="email">
            <#if employeeGrid.sortField == "email">${caret}</#if>Email
            </div>
          </th>
          <th class="htgrid-cell-header hidden-xs hidden-sm">Alamat</th>
          <th class="htgrid-cell-header">
            <div class="cell-header-inner" title="Klik untuk mengurutkan" data-toggle="tooltip" rel="province">
            <#if employeeGrid.sortField == "province">${caret}</#if>Propinsi
            </div>
          </th>
          <th class="htgrid-cell-header hidden-xs">
            <div class="cell-header-inner" title="Klik untuk mengurutkan" data-toggle="tooltip" rel="birthPlace">
            <#if employeeGrid.sortField == "birthPlace">${caret}</#if>Tempat Lahir
            </div>
          </th>
          <th class="htgrid-cell-header text-center hidden-xs hidden-sm">
            <div class="cell-header-inner" title="Klik untuk mengurutkan" data-toggle="tooltip" rel="birthDate">
            <#if employeeGrid.sortField == "birthDate">${caret}</#if>Tgl. Lahir
            </div>
          </th>
          <th class="htgrid-cell-header text-center hidden-xs hidden-sm">
            <div class="cell-header-inner" title="Klik untuk mengurutkan" data-toggle="tooltip" rel="tsCreated">
            <#if employeeGrid.sortField == "tsCreated">${caret}</#if>Tgl. Terdaftar
            </div>
          </th>
        </tr>
        </thead>
        <tbody>
        <#escape x as x?html>
            <#assign startNumber="${(employeeGrid.page - 1) * employeeGrid.pageSize}"/>
            <#list employeeGrid.entries as person>
            <tr>
                <#assign offset="${startNumber + person_index + 1}">
              <td class="text-right">${offset}</td>
              <td class="text-center"><label>
                <input type="checkbox" id="cb${offset}" name="pid" value="${person.personId}"/></label></td>
              <td>${person.fullname}</td>
              <td>${person.department.deptName}</td>
              <td class="hidden-xs">${person.email}</td>
              <td class="hidden-xs hidden-sm">${person.address}</td>
              <td>${person.province}</td>
              <td class="hidden-xs">${person.birthPlace}</td>
              <td class="text-center hidden-xs hidden-sm">${person.birthDate}</td>
              <td class="text-center">${person.tsCreated}</td>
            </tr>
            </#list>
        </#escape>
        </tbody>
      </table>
    </article>
  <#include "../tablegrid-footer.ftl"/>
  </form>
  <div class="row">
    <div class="pull-right">
      <a class="btn btn-default" href="<@spring.url "/employee/create"/>" role="button">
        <span class="glyphicon glyphicon-plus"></span>New Employee</a>
      <button type="button" id="delete-employee" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>
        Delete Employee
      </button>
    </div>
  </div>
</section>
<#include "../footer.ftl"/>
<script type="text/javascript">
  $(document).ready(function () {
    $("#delete-employee").click(function () {
      $("#tableForm").attr("action", "<@spring.url "/employee/delete"/>").submit();
    });
  });
</script>
</body>
</html>