.class public final Lcom/amap/api/col/l3s/r;
.super Lcom/amap/api/col/l3s/im;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3s/im<",
        "Ljava/lang/String;",
        "Lcom/amap/api/col/l3s/r$a;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Z

.field private j:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/im;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/r;->i:Z

    const/16 p2, 0x8

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/amap/api/col/l3s/r;->j:[I

    const-string p2, "/feedback"

    iput-object p2, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/dw;->isPostFlag:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/r;->i:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x2710
        0x0
        0x2722
        0x2723
        0x2724
        0x2725
        0x2726
        0x2727
    .end array-data
.end method

.method private b(Ljava/lang/String;)Lcom/amap/api/col/l3s/r$a;
    .locals 4

    const-string v0, "errcode"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "errmsg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "errdetail"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    new-instance v1, Lcom/amap/api/col/l3s/r$a;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/r$a;-><init>()V

    iput p1, v1, Lcom/amap/api/col/l3s/r$a;->a:I

    iput-object v3, v1, Lcom/amap/api/col/l3s/r$a;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/col/l3s/r$a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/r$a;->d:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/r;->j:[I

    array-length v2, p0

    :goto_1
    if-ge v0, v2, :cond_2

    aget v3, p0, v0

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/amap/api/col/l3s/r$a;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/r;->b(Ljava/lang/String;)Lcom/amap/api/col/l3s/r$a;

    move-result-object p0

    return-object p0
.end method

.method protected final a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIPV6URL()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/r;->getURL()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 3
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

    iget-object v1, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/r;->i:Z

    if-eqz v1, :cond_0

    const-string v1, "pname"

    const-string v2, "3dmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/ix;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/jf;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ix;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://restsdk.amap.com/v4"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/im;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isSupportIPV6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
