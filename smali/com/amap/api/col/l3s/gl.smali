.class public final Lcom/amap/api/col/l3s/gl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.amap.api.services"

    const-string v1, "com.amap.api.search.admic"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/gl;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Z)Lcom/amap/api/col/l3s/je;
    .locals 4

    const-string v0, "7.7.0"

    :try_start_0
    new-instance v1, Lcom/amap/api/col/l3s/je$a;

    const-string v2, "sea"

    const-string v3, "AMAP SDK Android Search 7.7.0"

    invoke-direct {v1, v2, v0, v3}, Lcom/amap/api/col/l3s/je$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/amap/api/col/l3s/gl;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/je$a;->a([Ljava/lang/String;)Lcom/amap/api/col/l3s/je$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/je$a;->a(Z)Lcom/amap/api/col/l3s/je$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/je$a;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/je$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/je$a;->a()Lcom/amap/api/col/l3s/je;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ConfigableConst"

    const-string v1, "getSDKInfo"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "http://restsdk.amap.com/v3"

    return-object v0

    :cond_0
    const-string v0, "https://restsdk.amap.com/v3"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "http://restsdk.amap.com/v4"

    return-object v0

    :cond_0
    const-string v0, "https://restsdk.amap.com/v4"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "http://yuntuapi.amap.com"

    return-object v0

    :cond_0
    const-string v0, "https://yuntuapi.amap.com"

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "http://restsdk.amap.com/rest/me/cpoint"

    return-object v0

    :cond_0
    const-string v0, "https://restsdk.amap.com/rest/me/cpoint"

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "http://m5.amap.com/ws/mapapi/shortaddress/transform"

    return-object v0

    :cond_0
    const-string v0, "https://m5.amap.com/ws/mapapi/shortaddress/transform"

    return-object v0
.end method
