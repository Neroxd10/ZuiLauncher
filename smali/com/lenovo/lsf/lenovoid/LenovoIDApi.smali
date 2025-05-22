.class public Lcom/lenovo/lsf/lenovoid/LenovoIDApi;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LENOVOUSER_OFFLINE:Ljava/lang/String;

.field public static final LENOVOUSER_ONLINE:Ljava/lang/String;

.field public static final PRE_AUTO_ONEKEY_LOGIN:Ljava/lang/String; = "auto_onekey_login"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->LENOVOUSER_OFFLINE:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->LENOVOUSER_ONLINE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/CheckInfo;
    .locals 8

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "USS-0x0201"

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/c/d;->a()Lcom/lenovo/lsf/lenovoid/c/d;

    move-result-object v5

    if-eqz v5, :cond_4

    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/lsf/lenovoid/c/d;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/lsf/lenovoid/c/d;->a([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p2, 0x10

    new-array p2, p2, [Ljava/lang/String;

    const-string v5, "deviceid"

    const/4 v6, 0x0

    aput-object v5, p2, v6

    const/4 v5, 0x1

    aput-object v0, p2, v5

    const-string v0, "deviceidtype"

    const/4 v7, 0x2

    aput-object v0, p2, v7

    const/4 v0, 0x3

    aput-object p0, p2, v0

    const/4 p0, 0x4

    const-string v0, "lpsust"

    aput-object v0, p2, p0

    const/4 p0, 0x5

    aput-object p3, p2, p0

    const/4 p0, 0x6

    const-string p3, "password"

    aput-object p3, p2, p0

    const/4 p0, 0x7

    aput-object v1, p2, p0

    const/16 p0, 0x8

    const-string p3, "passwordEncryptionType"

    aput-object p3, p2, p0

    const/16 p0, 0x9

    const-string p3, "1"

    aput-object p3, p2, p0

    const/16 p0, 0xa

    const-string p3, "source"

    aput-object p3, p2, p0

    const/16 p0, 0xb

    aput-object v4, p2, p0

    const/16 p0, 0xc

    const-string p3, "lang"

    aput-object p3, p2, p0

    const/16 p0, 0xd

    aput-object v3, p2, p0

    const/16 p0, 0xe

    const-string p3, "realm"

    aput-object p3, p2, p0

    const/16 p0, 0xf

    aput-object p4, p2, p0

    if-eqz p1, :cond_1

    const-string p0, "@"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "email"

    goto :goto_0

    :cond_1
    const-string p0, "msisdn"

    :goto_0
    new-array p3, v7, [Ljava/lang/String;

    aput-object p0, p3, v6

    aput-object p1, p3, v5

    const-string p0, "https://uss.zui.com/"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "authen/1.2/user/checkLgState?"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/lenovo/lsf/lenovoid/b/b;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    sget-object p4, Lcom/lenovo/lsf/lenovoid/b/d;->b:Lcom/lenovo/lsf/lenovoid/b/d;

    invoke-static {p4, p0, p1, p2, p3}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;

    move-result-object p0
    :try_end_1
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->a()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "token"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseCheckResult json parse error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HttpJsonParser"

    invoke-static {p1, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Lcom/lenovo/lsf/lenovoid/b/e;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_2
    move-exception p0

    const-string p1, "LenovoIdServerApi"

    const-string p2, "checkLogState"

    invoke-static {p1, p2, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "USS-0x0203"

    goto :goto_1

    :cond_4
    throw v1

    :cond_5
    const-string v2, "USS-0x0305"

    :goto_1
    new-instance p0, Lcom/lenovo/lsf/lenovoid/CheckInfo;

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/CheckInfo;-><init>()V

    if-nez v2, :cond_6

    const-string p1, "USS-0x0200"

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/lenovoid/CheckInfo;->setError(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "USS-"

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v2}, Lcom/lenovo/lsf/lenovoid/CheckInfo;->setError(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2}, Lcom/lenovo/lsf/lenovoid/CheckInfo;->setToken(Ljava/lang/String;)V

    :goto_2
    return-object p0

    :cond_8
    throw v1
.end method

.method public static getAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/AccountInfo;
    .locals 3

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/lenovo/lsf/lenovoid/AccountInfo;

    invoke-direct {v0}, Lcom/lenovo/lsf/lenovoid/AccountInfo;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "USS-0x0305"

    :goto_0
    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/b/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/b/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0, p1}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/i;->e()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "USS-0x0203"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/i;->g()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setActivated(Z)V

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/i;->f()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setPassworSet(Z)V

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/i;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setBinded(Z)V

    invoke-virtual {v0, p1}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/i;->a()Lcom/lenovo/lsf/lenovoid/b/a;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/a;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/a;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return-object v0

    :cond_7
    const/4 p0, 0x0

    throw p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static getRegistLogcation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Userloc"

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/userauth/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/a/a;->a()Lcom/lenovo/lsf/lenovoid/a/a;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/lenovoid/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/b/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/lsf/lenovoid/b/i;->b()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/a/a;->a()Lcom/lenovo/lsf/lenovoid/a/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lenovo/lsf/lenovoid/b/i;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    :try_start_1
    invoke-static {p0, v0, v1, v3}, Lcom/lenovo/lsf/lenovoid/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    throw v2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/lenovo/lsf/lenovoid/b/i;->c()Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3

    :cond_3
    throw v2

    :cond_4
    throw v2
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V
    .locals 6

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Z)V
    .locals 6

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method public static getStDataByQuickLogin(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "UserAuthManager"

    const-string v1, "getStDataByQuickLogin"

    invoke-static {v0, v1}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lenovo/lsf/lenovoid/userauth/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLandroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static getStatus(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object p0

    return-object p0
.end method

.method public static getTransferToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "SSOSingleUserAuth"

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "USS-0x0305"

    goto/16 :goto_2

    :cond_0
    sget-object v3, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object v1

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncGetTransferToken realmid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.lenovo.lsf.account"

    invoke-static {p0, v1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    :goto_0
    const-string v2, "USS-0x0202"

    goto :goto_2

    :cond_2
    :try_start_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "source"

    :try_start_2
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "androidPackageName"

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "transfer_device"

    const/4 v3, 0x1

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v3 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez p0, :cond_3

    const-string p0, "syncGetTransferToken result == null"

    :try_start_4
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p1, "authtoken"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz p1, :cond_4

    :goto_1
    const-string v2, "USS-0x1000"

    goto :goto_2

    :cond_4
    move-object v2, p0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncGetTransferToken exception === "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2

    :cond_5
    throw v2
.end method

.method public static getUkiInfo(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;)V

    return-void
.end method

.method public static getUkiInfo(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V

    return-void
.end method

.method public static getUkiInfoCache(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/UkiInfo;
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->c(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/UkiInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/AccountInfo;
    .locals 9

    const-string v0, "Userid"

    new-instance v1, Lcom/lenovo/lsf/lenovoid/AccountInfo;

    invoke-direct {v1}, Lcom/lenovo/lsf/lenovoid/AccountInfo;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "USS-0x0202"

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setErrorMessage(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "SSOSingleUserAuth"

    const-string v4, "getUserId-new  case 1"

    invoke-static {v2, v4}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "getUserId  case 2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.lenovo.lsf.account"

    invoke-static {p0, v4}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/lenovo/lsf/lenovoid/a/a;->a()Lcom/lenovo/lsf/lenovoid/a/a;

    move-result-object v5

    if-eqz v5, :cond_8

    :try_start_0
    invoke-static {p0, v0, v4}, Lcom/lenovo/lsf/lenovoid/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v3

    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "#"

    if-nez v6, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 p0, 0x0

    aget-object v3, v5, p0

    goto :goto_5

    :cond_2
    const-string v5, "getUserId  case 3"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/b/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/b/i;

    move-result-object p2

    goto :goto_3

    :cond_4
    :goto_2
    move-object p2, v3

    :goto_3
    if-eqz p2, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lsf/lenovoid/b/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/lenovo/lsf/lenovoid/b/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string p2, "getUserId  case 4"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/a/a;->a()Lcom/lenovo/lsf/lenovoid/a/a;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_5

    :try_start_1
    invoke-static {p0, v0, v4, p1}, Lcom/lenovo/lsf/lenovoid/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    move-object v3, v5

    goto :goto_5

    :cond_5
    throw v3

    :cond_6
    invoke-virtual {p2}, Lcom/lenovo/lsf/lenovoid/b/i;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    const-string v3, "USS-0x0206"

    goto :goto_5

    :cond_8
    throw v3

    :cond_9
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "USS-0x1000"

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const-string p0, "USS-"

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v1, v3}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v1, v3}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->setUserId(Ljava/lang/String;)V

    :goto_6
    return-object v1

    :cond_c
    throw v3
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;)V

    return-void
.end method

.method public static setLogoutFinishListener(Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;)V

    return-void
.end method

.method public static showAccountPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.lenovo.lsf"

    const-string v4, "com.lenovo.lsf.account.PsUserSettingActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_1

    const-string v3, "account"

    :try_start_2
    new-instance v4, Landroid/accounts/Account;

    const-string v5, "com.lenovo.lsf.account"

    invoke-direct {v4, v0, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string v0, "appName"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "rid"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p1, "source"

    :try_start_3
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "UserAuthManager"

    const-string p1, "start PsUserSettingActivity error"

    invoke-static {p0, p1}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    throw v1
.end method

.method public static showPhoneBindPage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    sget-object v1, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-virtual {p1, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const-string v0, "USS-0x0202"

    goto :goto_1

    :cond_1
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "USS-0x0212"

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.lenovo.lsf"

    const-string v3, "com.lenovo.lsf.lenovoid.ui.SetSafemailOrBindPhoneNumActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "current_account"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    const-string v0, "USS-0x0305"

    goto :goto_1

    :catch_0
    const-string v0, "USS-0x0306"

    :goto_1
    return-object v0

    :cond_4
    throw v0
.end method

.method public static showProfilePage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const-string v1, "USS-0x0202"

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.lenovo.lsf"

    const-string v5, "com.lenovo.lsf.lenovoid.ui.AccountProfileActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_1

    const-string v4, "account"

    :try_start_2
    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.lenovo.lsf.account"

    invoke-direct {v5, v0, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string v0, "appName"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "rid"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p1, "source"

    :try_start_3
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_2
    const-string v1, "USS-0x0305"

    goto :goto_1

    :catch_1
    const-string v1, "USS-0x0306"

    :goto_1
    return-object v1

    :cond_3
    throw v1
.end method

.method public static showRealNamePage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const-string v1, "USS-0x0202"

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.lenovo.lsf"

    const-string v5, "com.lenovo.lsf.lenovoid.ui.RealNameActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_1

    const-string v4, "account"

    :try_start_2
    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.lenovo.lsf.account"

    invoke-direct {v5, v0, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string v0, "appName"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "rid"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p1, "source"

    :try_start_3
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_2
    const-string v1, "USS-0x0305"

    goto :goto_1

    :catch_1
    const-string v1, "USS-0x0306"

    :goto_1
    return-object v1

    :cond_3
    throw v1
.end method

.method public static showRealNameState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/lenovoid/RealNameInfo;
    .locals 13

    const-string v0, "_"

    const-string v1, "LenovoIdServerApi"

    const-string v2, "USS-0x0203"

    new-instance v3, Lcom/lenovo/lsf/lenovoid/RealNameInfo;

    invoke-direct {v3}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;-><init>()V

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, "UserAuthManager"

    const-string v5, "getifRealNameStat"

    invoke-static {v4, v5}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/String;

    const-string v4, "realm"

    const/4 v11, 0x0

    aput-object v4, v9, v11

    const/4 v4, 0x1

    aput-object p1, v9, v4

    const-string p1, "lpsust"

    const/4 v12, 0x2

    aput-object p1, v9, v12

    const/4 p1, 0x3

    aput-object p2, v9, p1

    const-string v7, "https://uss.zui.com/"

    const-string v8, "user/ifUserAuthenticated"

    :try_start_0
    sget-object v6, Lcom/lenovo/lsf/lenovoid/b/d;->b:Lcom/lenovo/lsf/lenovoid/b/d;

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/b/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/b/e;

    move-result-object p0
    :try_end_0
    .catch Lcom/lenovo/lsf/lenovoid/b/f; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->a()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/b/e;->b()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rt = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "result"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "realMobile"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/b;->a(Lcom/lenovo/lsf/lenovoid/b/e;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "isRealName"

    invoke-static {v1, p1, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    move-object p0, v2

    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "USS-0x1000"

    if-eqz p1, :cond_2

    invoke-virtual {v3, p2}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->setErrorMessage(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const-string v0, "1"

    if-ne p1, v12, :cond_4

    aget-object p1, p0, v11

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3, v4}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->setRealName(Z)V

    aget-object p0, p0, v4

    invoke-virtual {v3, p0}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v2}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    array-length p1, p0

    if-ne p1, v4, :cond_7

    aget-object p1, p0, v11

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v3, v4}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->setOversea(Z)V

    goto :goto_2

    :cond_5
    aget-object p1, p0, v11

    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v3, v11}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->setRealName(Z)V

    goto :goto_2

    :cond_6
    aget-object p0, p0, v11

    invoke-virtual {v3, p0}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3, p2}, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->setErrorMessage(Ljava/lang/String;)V

    :goto_2
    return-object v3

    :cond_8
    const/4 p0, 0x0

    throw p0
.end method

.method public static showSettingPage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const-string v1, "USS-0x0202"

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.lenovo.lsf"

    const-string v5, "com.lenovo.lsf.lenovoid.ui.AccountSettingActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_1

    const-string v4, "account"

    :try_start_2
    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.lenovo.lsf.account"

    invoke-direct {v5, v0, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string v0, "appName"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "rid"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p1, "source"

    :try_start_3
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_2
    const-string v1, "USS-0x0305"

    goto :goto_1

    :catch_1
    const-string v1, "USS-0x0306"

    :goto_1
    return-object v1

    :cond_3
    throw v1
.end method

.method public static transfer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V
    .locals 6

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V

    return-void
.end method

.method public static unInit(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->a(Landroid/content/Context;)V

    return-void
.end method
