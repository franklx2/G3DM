<h2>Find a user</h2>
<form action="SearchHandler.jsp" method="post">
 <div id="custom-search-input">
     <div class="input-group col-md-12">
         <input name="username" type="text" class="form-control input-md" placeholder="Username" />
         <span class="input-group-btn">
             <button class="btn btn-info btn-md" type="submit">Search</button>
                 <i class="glyphicon glyphicon-search"></i>
             </input>
         </span>
     </div>
 </div>
 <c:if test="${param.found eq 0 }">
  <small class='text-muted' style='color:red;'>User not found</small>
 </c:if>
</form>