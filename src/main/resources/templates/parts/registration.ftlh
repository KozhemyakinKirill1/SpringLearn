<#macro registration path>
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
            <div class="mb-3">
                <label class="form-label"> Email</label>
                <div class="col-sm-5">
                    <input type="email" name="email" class="form-control" placeholder="Enter email..."/>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit" class="btn btn-primary">Sign Up</button>
        </div>
    </form>
</#macro>