.class public Lcom/lenovo/lsf/lenovoid/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accessing server url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HttpUtil"

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/lenovo/lsf/lenovoid/b/b;->e(Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "streamRequest exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/lenovo/lsf/lenovoid/b/f;

    const-string p1, "HTTP_EXCEPTION"

    invoke-direct {p0, p1}, Lcom/lenovo/lsf/lenovoid/b/f;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lenovo/lsf/lenovoid/b/b;->e(Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "streamRequest exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HttpUtil"

    invoke-static {p1, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/lenovo/lsf/lenovoid/b/f;

    const-string p1, "HTTP_EXCEPTION"

    invoke-direct {p0, p1}, Lcom/lenovo/lsf/lenovoid/b/f;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/b/h;
    .locals 10

    const-string v0, "NICKNAME"

    new-instance v1, Lcom/lenovo/lsf/lenovoid/b/h;

    invoke-direct {v1}, Lcom/lenovo/lsf/lenovoid/b/h;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "USS-0x0201"

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/b/h;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "https://uss.zui.com/"

    const-string v7, "uki/1.0/getukiuserinfohtml"

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "deviceidtype"

    aput-object v5, v8, v4

    const/4 v4, 0x1

    aput-object v3, v8, v4

    const/4 v3, 0x2

    const-string v4, "deviceid"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    aput-object v2, v8, v3

    const/4 v2, 0x4

    const-string v3, "lpsust"

    aput-object v3, v8, v2

    const/4 v2, 0x5

    aput-object p2, v8, v2

    const/4 p2, 0x6

    const-string v2, "realm"

    aput-object v2, v8, p2

    const/4 p2, 0x7

    aput-object p1, v8, p2

    const/16 p1, 0x8

    const-string p2, "items"

    aput-object p2, v8, p1

    const/16 p1, 0x9

    const-string p2, "username;sex;nickname"

    aput-object p2, v8, p1

    :try_start_0
    sget-object v5, Lcom/lenovo/lsf/lenovoid/b/d;->b:Lcom/lenovo/lsf/lenovoid/b/d;

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->a()I

    move-result p1
    :try_end_0
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p2, 0xc8

    const-string v2, "USS-0x0200"

    if-ne p1, p2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->b()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "INFO"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "USERNAME"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "SEX"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lenovo/lsf/lenovoid/b/h;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/b/h;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/lenovoid/b/h;->a(Ljava/lang/String;)V

    const-string p0, "HttpJsonParser"

    const-string p1, "parseUKI JSONException"

    invoke-static {p0, p1}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/b;->b(Lcom/lenovo/lsf/lenovoid/b/e;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/lenovoid/b/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/b/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "USS-0x0203"

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/b/h;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static a(Lcom/lenovo/lsf/lenovoid/b/e;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->b(Lcom/lenovo/lsf/lenovoid/b/e;)I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorRetStr code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpUtil"

    invoke-static {v2, v1}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "USS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USS-0xh"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleErrorRetStr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/b/i;
    .locals 10

    const-string v0, "Alias"

    const-string v1, "location"

    const-string v2, "DeviceID"

    const-string v3, "HttpJsonParser"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "lang"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 p0, 0x2

    const-string v7, "realm"

    aput-object v7, v4, p0

    const/4 p0, 0x3

    aput-object p2, v4, p0

    const/4 p0, 0x4

    const-string p2, "lpsust"

    aput-object p2, v4, p0

    const/4 p0, 0x5

    aput-object p1, v4, p0

    new-instance p0, Lcom/lenovo/lsf/lenovoid/b/i;

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/b/i;-><init>()V

    const-string p1, "https://uss.zui.com/"

    const-string p2, "verifyst/1.2/getuserinfo"

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-object v7, Lcom/lenovo/lsf/lenovoid/b/d;->b:Lcom/lenovo/lsf/lenovoid/b/d;

    const/4 v8, 0x0

    invoke-static {v7, p1, p2, v4, v8}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;

    move-result-object p1
    :try_end_0
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lcom/lenovo/lsf/lenovoid/b/e;->a()I

    move-result p2

    const/16 v4, 0xc8

    const-string v7, "USS-0x0200"

    if-ne p2, v4, :cond_3

    :try_start_1
    invoke-virtual {p1}, Lcom/lenovo/lsf/lenovoid/b/e;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "IdentityInfo"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "AccountID"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lenovo/lsf/lenovoid/b/i;->c(Ljava/lang/String;)V

    const-string p2, "Username"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lenovo/lsf/lenovoid/b/i;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string p2, "verified"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v5}, Lcom/lenovo/lsf/lenovoid/b/i;->b(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v6}, Lcom/lenovo/lsf/lenovoid/b/i;->b(Z)V

    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lenovo/lsf/lenovoid/b/i;->b(Ljava/lang/String;)V

    :cond_2
    const-string p2, "toModify"

    invoke-virtual {p1, p2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    xor-int/2addr p2, v5

    invoke-virtual {p0, p2}, Lcom/lenovo/lsf/lenovoid/b/i;->a(Z)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HHHHHHHH jsonArray.length = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/lenovo/lsf/lenovoid/b/a;

    invoke-direct {p2}, Lcom/lenovo/lsf/lenovoid/b/a;-><init>()V

    const-string v0, "AliasName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/lsf/lenovoid/b/a;->a(Ljava/lang/String;)V

    const-string v0, "AliasVerified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/lenovo/lsf/lenovoid/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/lenovo/lsf/lenovoid/b/i;->a(Lcom/lenovo/lsf/lenovoid/b/a;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "parseUserInfo JSONException"

    invoke-static {v3, p1}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/b;->b(Lcom/lenovo/lsf/lenovoid/b/e;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    invoke-virtual {p0, v7}, Lcom/lenovo/lsf/lenovoid/b/i;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/lenovoid/b/i;->a(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object p0

    :catch_1
    move-exception p1

    const-string p2, "LenovoIdServerApi"

    const-string v0, "getUserInfoByToken"

    invoke-static {p2, v0, p1}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "USS-0x0203"

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/lenovoid/b/i;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(Lcom/lenovo/lsf/lenovoid/b/e;)Ljava/lang/String;
    .locals 4

    const-string v0, "HttpJsonParser"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "Error"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "Code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "parseError JSONException"

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/lenovo/lsf/lenovoid/b/b;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p2, "+"

    const-string v0, "%20"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "*"

    const-string v0, "%2A"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "UTF-8"

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    move v4, v1

    :goto_0
    :try_start_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    aget-object v6, p0, v5

    if-eqz v6, :cond_1

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v4

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v5

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    const-string p0, "*"

    const-string v0, "%2A"

    invoke-virtual {v3, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Params must have an even number of elements."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c([Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_3

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    array-length v2, p0

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, p0, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    const-string p0, "HttpUtil"

    const-string v1, "make params error"

    invoke-static {p0, v1}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static d(Ljava/util/Map;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static e(Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;
    .locals 8

    sget-object v0, Lcom/lenovo/lsf/lenovoid/b/d;->a:Lcom/lenovo/lsf/lenovoid/b/d;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x400

    const/16 v4, 0x190

    const-string v5, "code = "

    const-string v6, "HttpUtil"

    const/4 v7, 0x0

    if-ne p0, v0, :cond_3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/lenovo/lsf/lenovoid/b/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p4, p0}, Lcom/lenovo/lsf/lenovoid/b/b;->d(Ljava/util/Map;Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    new-instance p1, Lcom/lenovo/lsf/lenovoid/b/e;

    invoke-direct {p1}, Lcom/lenovo/lsf/lenovoid/b/e;-><init>()V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/lenovo/lsf/lenovoid/b/e;->c(Lcom/lenovo/lsf/lenovoid/b/e;I)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/e;->b(Lcom/lenovo/lsf/lenovoid/b/e;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/e;->b(Lcom/lenovo/lsf/lenovoid/b/e;)I

    move-result p2

    if-lt p2, v4, :cond_0

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array p4, v3, [B

    :goto_1
    invoke-virtual {p2, p4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p3, p4, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lenovo/lsf/lenovoid/b/e;->d(Lcom/lenovo/lsf/lenovoid/b/e;[B)[B

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, p1

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v7

    :cond_3
    :try_start_1
    invoke-static {p1, p2, v7}, Lcom/lenovo/lsf/lenovoid/b/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p4, p0}, Lcom/lenovo/lsf/lenovoid/b/b;->d(Ljava/util/Map;Ljavax/net/ssl/HttpsURLConnection;)V

    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p1, 0x4e20

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-static {p3}, Lcom/lenovo/lsf/lenovoid/b/b;->c([Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-nez p1, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "str_params length = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "UTF-8"

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Lcom/lenovo/lsf/lenovoid/b/e;

    invoke-direct {p1}, Lcom/lenovo/lsf/lenovoid/b/e;-><init>()V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/lenovo/lsf/lenovoid/b/e;->c(Lcom/lenovo/lsf/lenovoid/b/e;I)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/e;->b(Lcom/lenovo/lsf/lenovoid/b/e;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/e;->b(Lcom/lenovo/lsf/lenovoid/b/e;)I

    move-result p2

    if-lt p2, v4, :cond_5

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_7

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array p4, v3, [B

    :goto_4
    invoke-virtual {p2, p4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p3, p4, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lenovo/lsf/lenovoid/b/e;->d(Lcom/lenovo/lsf/lenovoid/b/e;[B)[B

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p1

    goto :goto_5

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-object v7
.end method
