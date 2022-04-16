<#macro login path>
    <form action="${path}" method="post">
        <div class="mb-3">
            <label class="form-label"> User Name</label>
            <div class="col-sm-5">
                <input type="text" name="username" class="form-control" placeholder="Enter user name..."/>
            </div>
        </div>
        <div class="mb-3">
            <label class="form-label"> Password</label>
            <div class="col-sm-5 mb-3">
                <input type="password" name="password" class="form-control" placeholder="Enter password..."/>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <a href="/registration">Add new user</a>
            <button type="submit" class="btn btn-primary">Sign In</button>
        </div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button type="submit" class="btn btn-primary">Sign Out</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</#macro>