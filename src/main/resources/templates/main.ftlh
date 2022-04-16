<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div class="form-row mb-3">
        <div class="form-group col-5">
            <form method="get" action="/main" class="form-inline">
                <div class="input-group">
                    <input type="text" name="filter" value="${filter?ifExists}" class="form-control" placeholder="Search...">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </form>
        </div>
    </div>

    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new message
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group col-5">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group mb-3 mt-3">
                    <input type="text" name="text" class="form-control" placeholder="Enter a message..."/>
                </div>
                <div class="form-group mb-3">
                    <input type="text" name="tag" class="form-control" placeholder="Enter tag...">
                </div>
                <div class="input-group">
                    <input type="file" name="file" class="form-control" id="customFile">
                </div>
                <button type="submit" class="btn btn-primary mt-3">Add</button>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            </form>
        </div>
    </div>


    <div class="row row-cols-1 row-cols-md-3">
        <#list messages as message>
            <div class="card m-3" style="width: 18rem;">
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top">
                </#if>
                <div class="m-2">
                    <span>${message.text}</span>
                    <i>${message.tag}</i>
                </div>
                <div class="card-footer text-muted">
                    <strong>${message.authorName}</strong>
                </div>
            </div>
        <#else>
            No messages!
        </#list>
    </div>
</@c.page>