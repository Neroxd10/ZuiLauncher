.class public final Lcom/amap/api/col/l3s/or;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/amap/api/col/l3s/or;


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

    iput-object v0, p0, Lcom/amap/api/col/l3s/or;->a:Lcom/amap/api/col/l3s/kw;

    iput-object v0, p0, Lcom/amap/api/col/l3s/or;->c:Landroid/content/Context;

    sget v0, Lcom/amap/api/col/l3s/ow;->g:I

    iput v0, p0, Lcom/amap/api/col/l3s/or;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/or;->e:Z

    iput v0, p0, Lcom/amap/api/col/l3s/or;->f:I

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ja;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/or;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/kw;->a()Lcom/amap/api/col/l3s/kw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/or;->a:Lcom/amap/api/col/l3s/kw;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3s/or;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/or;->b:Lcom/amap/api/col/l3s/or;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/or;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/or;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/l3s/or;->b:Lcom/amap/api/col/l3s/or;

    :cond_0
    sget-object p0, Lcom/amap/api/col/l3s/or;->b:Lcom/amap/api/col/l3s/or;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/or;->d:I

    return p0
.end method

.method public final a(Lcom/amap/api/col/l3s/os;)Lcom/amap/api/col/l3s/le;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/or;->e:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/or;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->k(Landroid/content/Context;)Z

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

.method public final a(Lcom/amap/api/col/l3s/os;I)Lcom/amap/api/col/l3s/le;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/or;->e:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/or;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/pc;->k(Landroid/content/Context;)Z

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
    invoke-static {p1, p0, p2}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;ZI)Lcom/amap/api/col/l3s/le;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/amap/api/col/l3s/os;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p5

    const-string v4, "https:"

    const-string v5, "1"

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    new-instance v8, Lcom/amap/api/col/l3s/os;

    invoke-static {}, Lcom/amap/api/col/l3s/ow;->c()Lcom/amap/api/col/l3s/je;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Lcom/amap/api/col/l3s/os;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v9, "Content-Type"

    const-string v10, "application/octet-stream"

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Accept-Encoding"

    const-string v10, "gzip"

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "gzipped"

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Connection"

    const-string v10, "Keep-Alive"

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "User-Agent"

    const-string v10, "AMAP_Location_SDK_Android 5.2.0"

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "KEY"

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "enginever"

    const-string v10, "5.1"

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/l3s/ix;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "key="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v9, v10}, Lcom/amap/api/col/l3s/ix;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ts"

    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "scode"

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "encr"

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v8, Lcom/amap/api/col/l3s/os;->f:Ljava/util/Map;

    const-string v5, "loc"

    if-nez v3, :cond_0

    const-string v5, "locf"

    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, v8, Lcom/amap/api/col/l3s/os;->n:Z

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "5.2.0"

    aput-object v14, v12, v13

    aput-object v5, v12, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x2

    aput-object v5, v12, v11

    invoke-static {v9, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/amap/api/col/l3s/os;->l:Ljava/lang/String;

    iput-boolean v3, v8, Lcom/amap/api/col/l3s/os;->k:Z

    iput-object v2, v8, Lcom/amap/api/col/l3s/os;->g:Ljava/lang/String;

    move-object/from16 v3, p4

    iput-object v3, v8, Lcom/amap/api/col/l3s/os;->h:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/amap/api/col/l3s/pc;->a([B)[B

    move-result-object v3

    iput-object v3, v8, Lcom/amap/api/col/l3s/os;->i:[B

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/jd;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/amap/api/col/l3s/ld;->setProxy(Ljava/net/Proxy;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "output"

    const-string v7, "bin"

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "policy"

    const-string v7, "3103"

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v0, Lcom/amap/api/col/l3s/or;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, "custom"

    if-eqz v5, :cond_1

    if-eq v5, v6, :cond_3

    if-eq v5, v11, :cond_2

    :cond_1
    :try_start_2
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v5, "language:en"

    :goto_0
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v5, "language:cn"

    goto :goto_0

    :goto_1
    iput-object v3, v8, Lcom/amap/api/col/l3s/os;->m:Ljava/util/Map;

    iget v3, v0, Lcom/amap/api/col/l3s/or;->d:I

    invoke-virtual {v8, v3}, Lcom/amap/api/col/l3s/ld;->setConnectionTimeout(I)V

    iget v3, v0, Lcom/amap/api/col/l3s/or;->d:I

    invoke-virtual {v8, v3}, Lcom/amap/api/col/l3s/ld;->setSoTimeout(I)V

    iget-boolean v0, v0, Lcom/amap/api/col/l3s/or;->e:Z

    if-nez v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/pc;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "http:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/amap/api/col/l3s/os;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/amap/api/col/l3s/os;->g:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    const/4 v8, 0x0

    :catchall_1
    :cond_5
    :goto_2
    return-object v8
.end method

.method public final a(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Lcom/amap/api/col/l3s/os;

    invoke-static {}, Lcom/amap/api/col/l3s/ow;->c()Lcom/amap/api/col/l3s/je;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/amap/api/col/l3s/os;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)V

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "User-Agent"

    const-string v5, "AMAP_Location_SDK_Android 5.2.0"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "custom"

    const-string v5, "26260A1F00020002"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key"

    invoke-static {p1}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/amap/api/col/l3s/or;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "language"

    if-eqz v2, :cond_0

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    :cond_0
    :try_start_1
    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v2, "en"

    :goto_0
    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v2, "zh-CN"

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/amap/api/col/l3s/ix;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/amap/api/col/l3s/jf;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v2, v7}, Lcom/amap/api/col/l3s/ix;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ts"

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "scode"

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "output=json&radius=1000&extensions=all&location="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_3

    :try_start_3
    array-length p4, p2

    invoke-static {p4}, Lcom/amap/api/col/l3s/jf;->a(I)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p3, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_3
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, v3, Lcom/amap/api/col/l3s/os;->j:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_5
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p3, v0

    :goto_2
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p3, :cond_4

    :try_start_7
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_4
    :goto_3
    const/4 p2, 0x0

    :try_start_8
    iput-boolean p2, v3, Lcom/amap/api/col/l3s/os;->n:Z

    iput-boolean v6, v3, Lcom/amap/api/col/l3s/os;->k:Z

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p4, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 p5, 0x3

    new-array v2, p5, [Ljava/lang/Object;

    const-string v7, "5.2.0"

    aput-object v7, v2, p2

    const-string p2, "loc"

    aput-object p2, v2, v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-static {p3, p4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/amap/api/col/l3s/os;->l:Ljava/lang/String;

    iput-object v4, v3, Lcom/amap/api/col/l3s/os;->m:Ljava/util/Map;

    iput-object v1, v3, Lcom/amap/api/col/l3s/os;->f:Ljava/util/Map;

    invoke-static {p1}, Lcom/amap/api/col/l3s/jd;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/amap/api/col/l3s/ld;->setProxy(Ljava/net/Proxy;)V

    sget p2, Lcom/amap/api/col/l3s/ow;->g:I

    invoke-virtual {v3, p2}, Lcom/amap/api/col/l3s/ld;->setConnectionTimeout(I)V

    sget p2, Lcom/amap/api/col/l3s/ow;->g:I

    invoke-virtual {v3, p2}, Lcom/amap/api/col/l3s/ld;->setSoTimeout(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    const-string p2, "http://restsdk.amap.com/v3/geocode/regeo"

    const-string p3, "http://dualstack-restsdk.amap.com/v3/geocode/regeo"

    iput-object p3, v3, Lcom/amap/api/col/l3s/os;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/col/l3s/pc;->k(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "http:"

    const-string p1, "https:"

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/amap/api/col/l3s/os;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    goto :goto_4

    :cond_5
    iput-object p2, v3, Lcom/amap/api/col/l3s/os;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/col/l3s/or;->a:Lcom/amap/api/col/l3s/kw;

    invoke-virtual {p0, v3}, Lcom/amap/api/col/l3s/kw;->b(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object p0

    :goto_4
    new-instance p1, Ljava/lang/String;

    const-string p2, "utf-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v0, p1

    goto :goto_6

    :catchall_2
    move-exception p0

    :try_start_a
    const-string p1, "LocNetManager"

    const-string p2, "post"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_6

    :catchall_3
    move-exception p0

    if-eqz p3, :cond_6

    :try_start_b
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    :catch_1
    move-exception p1

    :try_start_c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_5
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    :goto_6
    return-object v0
.end method

.method public final a(JZI)V
    .locals 1

    :try_start_0
    iput-boolean p3, p0, Lcom/amap/api/col/l3s/or;->e:Z
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

    iput p1, p0, Lcom/amap/api/col/l3s/or;->d:I

    iput p4, p0, Lcom/amap/api/col/l3s/or;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const-string p1, "LocNetManager"

    const-string p2, "setOption"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
