.class public final Lcom/amap/api/col/l3s/bj;
.super Lcom/amap/api/col/l3s/cf;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/cf<",
        "Ljava/lang/String;",
        "Lcom/amap/api/col/l3s/bi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/cf;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/amap/api/col/l3s/bi;
    .locals 4

    const-string v0, ""

    new-instance v1, Lcom/amap/api/col/l3s/bi;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/bi;-><init>()V

    :try_start_0
    const-string v2, "update"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/bi;->a(Z)V

    goto :goto_0

    :cond_0
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/bi;->a(Z)V

    :cond_1
    :goto_0
    const-string v2, "version"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/bi;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string v0, "OfflineInitHandlerAbstract"

    const-string v2, "loadData parseJson"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method


# virtual methods
.method protected final synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/l3s/bj;->b(Lorg/json/JSONObject;)Lcom/amap/api/col/l3s/bi;

    move-result-object p0

    return-object p0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "016"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final a(Lcom/amap/api/col/l3s/iv$b;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/amap/api/col/l3s/iv$b;->f:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string p1, "016"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/cf;->a:Ljava/lang/Object;

    const-string v1, "mapver"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
