.class public abstract Lcom/amap/api/col/l3s/ld;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_RETRY_TIMEOUT:I = 0x1388


# instance fields
.field a:I

.field b:I

.field c:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/amap/api/col/l3s/ld;->a:I

    iput v0, p0, Lcom/amap/api/col/l3s/ld;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ld;->c:Ljava/net/Proxy;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getEntityBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getParams()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, Lcom/amap/api/col/l3s/la;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/ld;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getIPV6URL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/ld;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method d()[B
    .locals 2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getEntityBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/la;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/amap/api/col/l3s/jf;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getConntectionTimeout()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/ld;->a:I

    return p0
.end method

.method public getEntityBytes()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getIPDNSName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getIPV6URL()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getURL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestHead()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getSDKName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSoTimeout()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/ld;->b:I

    return p0
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method protected isIPRequest()Z
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getIPDNSName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIgnoreGZip()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportIPV6()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/ld;->a:I

    return-void
.end method

.method public final setProxy(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ld;->c:Ljava/net/Proxy;

    return-void
.end method

.method public final setSoTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/ld;->b:I

    return-void
.end method
