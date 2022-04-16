<#import "parts/common.ftlh" as c>
<#import "parts/registration.ftlh" as r>
<@c.page>
    <h3>Registration</h3>
${message?ifExists}
<@r.registration "/registration"/>
</@c.page>