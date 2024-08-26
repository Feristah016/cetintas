<cfif structKeyExists(form, "submit")>
    <cfquery datasource="database.sql">
        INSERT INTO calisanlar (ad, soyad, yas, birim, maas)
        VALUES (
            <cfqueryparam value="#form.ad#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#form.soyad#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#form.yas#" cfsqltype="cf_sql_integer">,
            <cfqueryparam value="#form.birim#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#form.maas#" cfsqltype="cf_sql_decimal">
        )
    </cfquery>
    <cfoutput>kaydedildi</cfoutput>
</cfif>

<form method="post" action="calisan_form.cfm">
    Ad: <input type="text" name="ad"><br>
    Soyad: <input type="text" name="soyad"><br>
    Yaş: <input type="number" name="yas"><br>
    Birim: <input type="text" name="birim"><br>
    Maaş: <input type="text" name="maas"><br>
    <input type="submit" name="submit" value="Kaydet">
</form>
