<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <h3>Login, please!</h3>
    ${message?ifExists}
<@l.login "/login"/>
</@c.page>