
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="script/employeedetails.js"></script> 

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.15/css/jquery.dataTables.css">
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<c:if test="${deletecode == 'success'}">
<script>
  alert("Deleted Successfully");
</script>
</c:if>
<c:if test="${deletecode == 'failure'}">
<script>
  alert("Error Deleting the data");
</script>
</c:if>
<c:if test="${updatecode == 'success'}">
<script>
  alert("Updated Successfully");
</script>
</c:if>
<c:if test="${updatecode == 'failure'}">
<script>
  alert("Error Updating the data");
</script>
</c:if>
<script type="text/javascript">
function confirm_alert(node) {
    return confirm("Please click on OK to continue.");
}
</script>
<script>
$(document).ready(function(){
    $('#programtable').DataTable();
});
</script>


 </head>
<body>
	
	<div class="container" id="main">
	<center><h1><b>PROGRAM DETAILS</b></h1></center>
		<div class="row">
			<div class="col-md-12">

				<div id="empData">
					<table class="display jqueryDataTable" id="programtable">
					<thead>
						<tr>
							<th>#</th>
							<th>Program Name</th>
							<th>Portfolio Name</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						
						<c:forEach items="${programs}" var = "program" varStatus = "loop">
					<tr>
						<th scope="row"><c:out value = "${loop.count }"></c:out></th>
						<td><c:out value = "${program.programName}"/></td>
						<td><c:out value = "${program.portfolio.portfolioName}"/></td> 
						<td>
							<a href="fetchProgramDetails.htm?programId=${program.programId}">
  								<img src="css/images/update.jpg" alt="update portfolio" style="width:30px;height:28px;border:0;">
							</a>
						</td> 
						<td>
								<a href="deleteProgram.htm?programId=${program.programId}" onclick="return confirm_alert(this);">
  									<img src="css/images/delete.png" alt="delete technology" style="width:30px;height:28px;border:0;">
								</a>
						</td> 
					</tr>
					
				</c:forEach>
											
					</tbody>
				</table>
				<a href="getportfolio.htm" class="btn btn-info dropdown-toggle">Add New Program</a>&nbsp;&nbsp;<a href="redirect.htm?pageName=programExcel" class="btn btn-info dropdown-toggle">Program Report</a>
				</div>

			</div>
		</div>
	</div>

	
</body>

</html>