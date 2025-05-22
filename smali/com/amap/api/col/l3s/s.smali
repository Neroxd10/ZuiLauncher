.class public final Lcom/amap/api/col/l3s/s;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/s;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/StringBuilder;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")",
            "Landroid/util/Pair<",
            "Lorg/json/JSONObject;",
            "Lcom/amap/api/col/l3s/iv$b$a;",
            ">;"
        }
    .end annotation

    const-string v0, "cloud_config_pull_timestamp"

    const-string v1, "cloud_config_pull"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v1, v0, v4}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v7, 0x5265c00

    cmp-long v3, v3, v7

    const-string v4, ""

    if-ltz v3, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, ";;"

    const-string v7, ";"

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v3, v1, v0, v7}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v1

    invoke-static {v0, v1, p1, v2}, Lcom/amap/api/col/l3s/iv;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/col/l3s/iv$b;

    move-result-object v0

    sget v1, Lcom/amap/api/col/l3s/iv;->a:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq p1, v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, v0, Lcom/amap/api/col/l3s/iv$b;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/amap/api/col/l3s/iv$b;->c:Ljava/lang/String;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/authCustomConfigName"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/amap/api/col/l3s/iv$b;->f:Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/amap/api/col/l3s/iv$b;->f:Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/amap/api/col/l3s/iv$b;->f:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->writeDatasToFile(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/authLogConfigName"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "IsExceptionUpdate"

    const-string v4, "mOfflineLoc"

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    :try_start_2
    iget-object p1, v0, Lcom/amap/api/col/l3s/iv$b;->g:Lcom/amap/api/col/l3s/iv$b$a;

    if-eqz p1, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v0, Lcom/amap/api/col/l3s/iv$b;->g:Lcom/amap/api/col/l3s/iv$b$a;

    iget-boolean v5, v5, Lcom/amap/api/col/l3s/iv$b$a;->a:Z

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/amap/api/col/l3s/iv$b;->g:Lcom/amap/api/col/l3s/iv$b$a;

    iget-object v1, v1, Lcom/amap/api/col/l3s/iv$b$a;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->writeDatasToFile(Ljava/lang/String;[B)V

    iget-object p0, v0, Lcom/amap/api/col/l3s/iv$b;->g:Lcom/amap/api/col/l3s/iv$b$a;

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lcom/amap/api/col/l3s/iv$b$a;

    invoke-direct {p1}, Lcom/amap/api/col/l3s/iv$b$a;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/amap/api/col/l3s/iv$b$a;->a:Z

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, p1, Lcom/amap/api/col/l3s/iv$b$a;->c:Lorg/json/JSONObject;

    :cond_5
    move-object p0, p1

    :goto_2
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p1

    :catchall_0
    return-object v2
.end method


# virtual methods
.method public final interrupt()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 22

    move-object/from16 v10, p0

    const-string v1, "time"

    const-string v0, "si"

    const-string v2, "mc"

    const-string v3, "maploc"

    const-string v11, "17E"

    const-string v12, "17W"

    const-string v13, "16G"

    const-string v4, "15C"

    const-string v5, "156"

    const-string v6, "154"

    const-string v7, "16V"

    const-string v8, "14L"

    const-string v9, "14M"

    const-string v14, ";"

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v15

    if-nez v15, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object v15

    move-object/from16 v16, v1

    iget-object v1, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    invoke-virtual {v15, v1}, Lcom/amap/api/col/l3s/ja;->a(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "14S"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "11K"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "001"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "14Z"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    :try_start_1
    iget-object v15, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    if-eqz v15, :cond_2

    iget-object v15, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_2

    iget-object v15, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v15}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getAMapExtraInterfaceManager()Lcom/amap/api/col/l3s/pf;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-interface {v15}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getAMapExtraInterfaceManager()Lcom/amap/api/col/l3s/pf;

    move-result-object v15

    invoke-virtual {v15}, Lcom/amap/api/col/l3s/pf;->g()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_1

    :goto_0
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    :goto_1
    :try_start_2
    invoke-direct {v10, v1}, Lcom/amap/api/col/l3s/s;->a(Ljava/lang/StringBuilder;)Landroid/util/Pair;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    const-string v1, "able"

    if-eqz v14, :cond_4

    :try_start_3
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v15, :cond_4

    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lorg/json/JSONObject;

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v11

    const/4 v11, 0x1

    invoke-static {v15, v11}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move-object/from16 v19, v12

    const-string v12, "approval_number"

    if-nez v15, :cond_3

    :try_start_4
    iget-object v15, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    invoke-static {v15, v12, v2, v11}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    invoke-static {v2, v12, v0, v6}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object/from16 v18, v11

    :cond_5
    move-object/from16 v19, v12

    :cond_6
    :goto_2
    if-eqz v14, :cond_7

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/col/l3s/iv$b$a;

    iget-boolean v2, v2, Lcom/amap/api/col/l3s/iv$b$a;->a:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3s/je;->a(Z)V

    :cond_7
    const/16 v2, 0x3e8

    const/4 v11, 0x0

    if-eqz v14, :cond_a

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/l3s/iv$b$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    if-eqz v0, :cond_a

    :try_start_5
    iget-boolean v6, v0, Lcom/amap/api/col/l3s/iv$b$a;->a:Z

    iget-object v12, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    const-string v15, "ue"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v12, v3, v15, v6}, Lcom/amap/api/col/l3s/eu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/amap/api/col/l3s/iv$b$a;->c:Lorg/json/JSONObject;

    const-string v6, "fn"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v12, "mpn"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const/16 v15, 0x1f4

    if-le v12, v15, :cond_8

    move v12, v15

    :cond_8
    const/16 v15, 0x1e

    if-ge v12, v15, :cond_9

    move v12, v15

    :cond_9
    const-string v15, "igu"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v6, v0}, Lcom/amap/api/col/l3s/lk;->a(IZ)V

    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    const-string v6, "opn"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v0, v3, v6, v12}, Lcom/amap/api/col/l3s/eu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    const-string v3, "AuthUtil"

    const-string v6, "loadConfigDataUploadException"

    invoke-static {v0, v3, v6}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    :cond_a
    :goto_3
    if-eqz v14, :cond_c

    :try_start_7
    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    const v3, 0x278d00

    move-object/from16 v6, v16

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x3c

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_b
    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    const-string v9, "Map3DCache"

    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v0, v9, v6, v12}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v15

    mul-int/2addr v3, v2

    int-to-long v2, v3

    cmp-long v0, v20, v2

    if-lez v0, :cond_c

    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->clearTileCache()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_4
    if-eqz v14, :cond_e

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-eqz v0, :cond_e

    :try_start_9
    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_e

    iget-object v2, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_5

    :cond_d
    move v0, v11

    :goto_5
    invoke-interface {v2, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setHideLogoEnble(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_6
    if-eqz v14, :cond_f

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/eh;->a(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :cond_f
    const-string v0, ""

    if-eqz v14, :cond_11

    :try_start_b
    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_11

    iget-object v2, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v3

    iget-object v5, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eqz v5, :cond_11

    :try_start_c
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "di"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "dis"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "isFilter"

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/4 v12, 0x1

    :try_start_d
    invoke-static {v5, v12}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v6, :cond_10

    invoke-static {v7}, Lcom/amap/api/col/l3s/jf;->f(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {v3}, Lcom/amap/api/col/l3s/ki;->a(Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/ki;

    move-result-object v3

    invoke-virtual {v3, v2, v8, v5}, Lcom/amap/api/col/l3s/ki;->a(Landroid/content/Context;ZZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    :catchall_4
    :cond_11
    const/4 v12, 0x1

    :catchall_5
    :goto_7
    if-eqz v14, :cond_12

    :try_start_e
    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_12

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v5

    const-string v3, "logo_day_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "logo_day_md5"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "logo_night_url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "logo_night_md5"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "logo_day_ipv6_url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "logo_night_ipv6_url"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/amap/api/col/l3s/ew;->a()Lcom/amap/api/col/l3s/ew;

    move-result-object v15

    new-instance v2, Lcom/amap/api/col/l3s/s$1;

    move-object v12, v1

    move-object v1, v2

    move-object v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3s/s$1;-><init>(Lcom/amap/api/col/l3s/s;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Lcom/amap/api/col/l3s/ew;->a(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_8

    :cond_12
    move-object v12, v1

    :goto_8
    if-eqz v14, :cond_13

    :try_start_f
    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_13

    iget-object v1, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    iget-object v1, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getAMapExtraInterfaceManager()Lcom/amap/api/col/l3s/pf;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getAMapExtraInterfaceManager()Lcom/amap/api/col/l3s/pf;

    move-result-object v1

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/pf;->h()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    :cond_13
    if-eqz v14, :cond_14

    :try_start_10
    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_14

    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-eqz v1, :cond_14

    :try_start_11
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "removeCache"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "uploadInfo"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v2}, Lcom/amap/api/col/l3s/eo;->a(Z)V

    invoke-static {v4}, Lcom/amap/api/col/l3s/eo;->b(Z)V

    invoke-static {v1}, Lcom/amap/api/col/l3s/eo;->c(Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    :cond_14
    if-eqz v14, :cond_16

    :try_start_12
    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_16

    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    if-eqz v1, :cond_16

    move-object/from16 v2, v19

    :try_start_13
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    const-string v2, "amap_param"

    const-string v3, "overlay_use_old_type"

    if-nez v0, :cond_15

    const/4 v15, 0x1

    goto :goto_9

    :cond_15
    const/4 v15, 0x0

    :goto_9
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :catchall_8
    :cond_16
    if-eqz v14, :cond_17

    :try_start_14
    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    if-eqz v0, :cond_17

    move-object/from16 v1, v18

    :try_start_15
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/fd;->a(Lorg/json/JSONObject;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_9
    :cond_17
    :try_start_16
    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->b:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ka;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/ka;

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/s;->interrupt()V

    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, v10, Lcom/amap/api/col/l3s/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :cond_18
    return-void

    :catchall_a
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/s;->interrupt()V

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/amap/api/col/l3s/fc;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amap/api/col/l3s/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
