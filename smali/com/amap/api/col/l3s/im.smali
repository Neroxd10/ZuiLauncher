.class public abstract Lcom/amap/api/col/l3s/im;
.super Lcom/amap/api/col/l3s/dw;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/col/l3s/dw;"
    }
.end annotation


# instance fields
.field protected d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:Landroid/content/Context;

.field protected g:Ljava/lang/String;

.field protected h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dw;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3s/im;->e:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/im;->h:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/im;->d:Ljava/lang/Object;

    iput v0, p0, Lcom/amap/api/col/l3s/im;->e:I

    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ld;->setSoTimeout(I)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ld;->setConnectionTimeout(I)V

    return-void
.end method

.method private f()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/amap/api/col/l3s/im;->e:I

    if-ge v1, v2, :cond_7

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3s/jd;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/ld;->setProxy(Ljava/net/Proxy;)V

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/im;->h:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dw;->makeHttpRequestNeedHeader()Lcom/amap/api/col/l3s/le;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/im;->a(Lcom/amap/api/col/l3s/le;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dw;->makeHttpRequest()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/im;->a([B)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    iget v1, p0, Lcom/amap/api/col/l3s/im;->e:I
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amap/api/col/l3s/il; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p0, Lcom/amap/api/col/l3s/il;

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/il;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/amap/api/col/l3s/im;->e:I

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/amap/api/col/l3s/il;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/il;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/il;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/amap/api/col/l3s/im;->e:I

    const-string v4, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    const-string v5, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    const-string v6, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    const-string v7, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    if-ge v1, v3, :cond_4

    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/amap/api/col/l3s/il;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/it;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/il;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    new-instance p0, Lcom/amap/api/col/l3s/il;

    invoke-direct {p0, v6}, Lcom/amap/api/col/l3s/il;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/it;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/amap/api/col/l3s/il;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/it;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/il;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    new-instance p0, Lcom/amap/api/col/l3s/il;

    invoke-direct {p0, v6}, Lcom/amap/api/col/l3s/il;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/amap/api/col/l3s/le;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3s/le;",
            ")TV;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation
.end method

.method protected a([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string p1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/amap/api/col/l3s/io;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/im;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/im;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/im;->f()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/il; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestHead()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/je;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sget-object v2, Lcom/amap/api/col/l3s/u;->c:Ljava/lang/String;

    const-string v3, "User-Agent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "3dmap"

    aput-object v4, v3, v0

    const-string v0, "platform=Android&sdkversion=%s&product=%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "platinfo"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ix;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-INFO"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/amap/api/col/l3s/im;->f:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "key"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "logversion"

    const-string v0, "2.1"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
