<cfif structKeyExists(form, "login")>
    <cfquery name="checkUser" datasource="database.sql">
        SELECT * FROM mudur WHERE kullanici_adi = <cfqueryparam value="#form.kullanici_adi#" cfsqltype="cf_sql_varchar">
        AND sifre = <cfqueryparam value="#form.sifre#" cfsqltype="cf_sql_varchar">
    </cfquery>

    <cfif checkUser.recordCount>
        <cfset session.mudurID = checkUser.id>
        <cflocation url="mudur_panel.cfm">
    <cfelse>
        <cfoutput>Hatalı kullanıcı adı veya şifre</cfoutput>
    </cfif>
</cfif>

<form method="post" action="mudur_giris.cfm">
    Kullanıcı Adı: <input type="text" name="kullanici_adi"><br>
    Şifre: <input type="password" name="sifre"><br>
    <input type="submit" name="login" value="Giriş Yap">
</form>
