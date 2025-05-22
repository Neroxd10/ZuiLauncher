.class public final Lcom/amap/api/col/l3s/pm;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/amap/api/col/l3s/pm;


# instance fields
.field a:Lcom/amap/api/col/l3s/kw;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/pm;->a:Lcom/amap/api/col/l3s/kw;

    iput-object v0, p0, Lcom/amap/api/col/l3s/pm;->c:Landroid/content/Context;

    sget v0, Lcom/amap/api/col/l3s/pq;->g:I

    iput v0, p0, Lcom/amap/api/col/l3s/pm;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/pm;->e:Z

    iput v0, p0, Lcom/amap/api/col/l3s/pm;->f:I

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ja;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/pm;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/kw;->a()Lcom/amap/api/col/l3s/kw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/pm;->a:Lcom/amap/api/col/l3s/kw;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3s/pm;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/pm;->b:Lcom/amap/api/col/l3s/pm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/pm;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/pm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/l3s/pm;->b:Lcom/amap/api/col/l3s/pm;

    :cond_0
    sget-object p0, Lcom/amap/api/col/l3s/pm;->b:Lcom/amap/api/col/l3s/pm;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/pn;)Lcom/amap/api/col/l3s/le;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/pm;->e:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/pm;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/pu;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p1, p0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;Z)Lcom/amap/api/col/l3s/le;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/l3s/pn;
    .locals 11

    const-string v0, "https:"

    const-string v1, "1"

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Lcom/amap/api/col/l3s/pn;

    invoke-static {}, Lcom/amap/api/col/l3s/pq;->c()Lcom/amap/api/col/l3s/je;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/amap/api/col/l3s/pn;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "Content-Type"

    const-string v6, "application/octet-stream"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "gzipped"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Connection"

    const-string v6, "Keep-Alive"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "User-Agent"

    const-string v6, "AMAP_Location_SDK_Android 4.9.0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "KEY"

    invoke-static {p1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "enginever"

    const-string v6, "5.1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/l3s/ix;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/amap/api/col/l3s/ix;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "scode"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "encr"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v4, Lcom/amap/api/col/l3s/pn;->f:Ljava/util/Map;

    const-string v1, "loc"

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/amap/api/col/l3s/pn;->n:Z

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "4.9.0"

    aput-object v10, v8, v9

    aput-object v1, v8, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v8, v7

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/amap/api/col/l3s/pn;->l:Ljava/lang/String;

    iput-boolean v2, v4, Lcom/amap/api/col/l3s/pn;->k:Z

    iput-object p3, v4, Lcom/amap/api/col/l3s/pn;->g:Ljava/lang/String;

    iput-object p4, v4, Lcom/amap/api/col/l3s/pn;->h:Ljava/lang/String;

    invoke-static {p2}, Lcom/amap/api/col/l3s/pu;->a([B)[B

    move-result-object p2

    iput-object p2, v4, Lcom/amap/api/col/l3s/pn;->i:[B

    invoke-static {p1}, Lcom/amap/api/col/l3s/jd;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/amap/api/col/l3s/ld;->setProxy(Ljava/net/Proxy;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string p4, "output"

    const-string v1, "bin"

    invoke-interface {p2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "policy"

    const-string v1, "3103"

    invoke-interface {p2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p4, p0, Lcom/amap/api/col/l3s/pm;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v1, "custom"

    if-eqz p4, :cond_0

    if-eq p4, v2, :cond_2

    if-eq p4, v7, :cond_1

    :cond_0
    :try_start_2
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p4, "language:en"

    :goto_0
    invoke-interface {p2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p4, "language:cn"

    goto :goto_0

    :goto_1
    iput-object p2, v4, Lcom/amap/api/col/l3s/pn;->m:Ljava/util/Map;

    iget p2, p0, Lcom/amap/api/col/l3s/pm;->d:I

    invoke-virtual {v4, p2}, Lcom/amap/api/col/l3s/ld;->setConnectionTimeout(I)V

    iget p2, p0, Lcom/amap/api/col/l3s/pm;->d:I

    invoke-virtual {v4, p2}, Lcom/amap/api/col/l3s/ld;->setSoTimeout(I)V

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/pm;->e:Z

    if-nez p0, :cond_3

    invoke-static {p1}, Lcom/amap/api/col/l3s/pu;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const-string p0, "http:"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/pn;->getURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/amap/api/col/l3s/pn;->g:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    const/4 v4, 0x0

    :catchall_1
    :cond_4
    :goto_2
    return-object v4
.end method

.method public final a(JZ)V
    .locals 1

    :try_start_0
    iput-boolean p3, p0, Lcom/amap/api/col/l3s/pm;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amap/api/col/l3s/ja;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/pm;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3s/pm;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const-string p1, "LocNetManager"

    const-string p2, "setOption"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
