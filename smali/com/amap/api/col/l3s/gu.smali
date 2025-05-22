.class public final Lcom/amap/api/col/l3s/gu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/gu$a;
    }
.end annotation


# static fields
.field public static a:Lcom/amap/api/col/l3s/je;

.field private static b:Lcom/amap/api/col/l3s/gu;

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Lcom/amap/api/col/l3s/gu$a;

.field private e:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3s/gu$1;

    const-string v1, "manifestThread"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/gu$1;-><init>(Lcom/amap/api/col/l3s/gu;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/gu;->e:Landroid/os/HandlerThread;

    sput-object p1, Lcom/amap/api/col/l3s/gu;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/amap/api/col/l3s/gl;->a(Z)Lcom/amap/api/col/l3s/je;

    move-result-object p1

    sput-object p1, Lcom/amap/api/col/l3s/gu;->a:Lcom/amap/api/col/l3s/je;

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hg;->a()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/amap/api/col/l3s/gu$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/gu$a;-><init>(Lcom/amap/api/col/l3s/gu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/gu;->d:Lcom/amap/api/col/l3s/gu$a;

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu;->e:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ManifestConfig"

    invoke-static {p0, p1, p1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/gu;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/gu;)Lcom/amap/api/col/l3s/gu$a;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu;->d:Lcom/amap/api/col/l3s/gu$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/gu;->b:Lcom/amap/api/col/l3s/gu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/gu;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/gu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/l3s/gu;->b:Lcom/amap/api/col/l3s/gu;

    :cond_0
    sget-object p0, Lcom/amap/api/col/l3s/gu;->b:Lcom/amap/api/col/l3s/gu;

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;ZLcom/amap/api/col/l3s/hh$a;)Lcom/amap/api/col/l3s/hh$a;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    :try_start_0
    new-instance v1, Lcom/amap/api/col/l3s/hh$a;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/hh$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, "able"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/hh$a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/hh$a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_0
    const-string v0, "timeoffset"

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/hh$a;->b()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_1

    :cond_5
    const v2, 0x15180

    :goto_1
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "num"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/hh$a;->c()I

    move-result v3

    goto :goto_2

    :cond_6
    const/16 v3, 0xa

    :goto_2
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "limitDistance"

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/hh$a;->d()D

    move-result-wide v4

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    :goto_3
    invoke-virtual {p0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3s/hh$a;->a(Z)V

    int-to-long p0, v0

    invoke-virtual {v1, p0, p1}, Lcom/amap/api/col/l3s/hh$a;->a(J)V

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/hh$a;->a(I)V

    invoke-virtual {v1, v3, v4}, Lcom/amap/api/col/l3s/hh$a;->a(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_5
    return-object v0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/amap/api/col/l3s/hh$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/amap/api/col/l3s/gu;->a(Lorg/json/JSONObject;ZLcom/amap/api/col/l3s/hh$a;)Lcom/amap/api/col/l3s/hh$a;

    move-result-object p1

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/amap/api/col/l3s/hh;->a(Ljava/lang/String;Lcom/amap/api/col/l3s/hh$a;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0}, Lcom/amap/api/col/l3s/gu;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 4

    const-string v0, ""

    const-string v1, "amap_search"

    :try_start_0
    const-string v2, "cache_control"

    invoke-static {p0, v1, v2, v0}, Lcom/amap/api/col/l3s/hp;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amap/api/col/l3s/gu;->d(Lorg/json/JSONObject;)V

    :cond_0
    const-string v2, "parm_control"

    invoke-static {p0, v1, v2, v0}, Lcom/amap/api/col/l3s/hp;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ManifestConfig"

    const-string v1, "ManifestConfig-readAuthFromCache"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0}, Lcom/amap/api/col/l3s/gu;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static c(Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v0, p0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "passAreaAble"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "truckAble"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "poiPageAble"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "rideAble"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "walkAble"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "passPointAble"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "keyWordLenAble"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/amap/api/col/l3s/iv;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v8, "poiPageMaxSize"

    const/16 v9, 0x19

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "passAreaMaxCount"

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v11, "walkMaxLength"

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "passPointMaxCount"

    const/4 v13, 0x6

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "poiPageMaxNum"

    invoke-virtual {v0, v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "truckMaxLength"

    const/16 v15, 0x1388

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "rideMaxLength"

    const/16 v10, 0x4b0

    invoke-virtual {v0, v15, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v15, "passAreaMaxArea"

    move/from16 v16, v12

    const v12, 0x5f5e100

    invoke-virtual {v0, v15, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v15, "passAreaPointCount"

    move/from16 v17, v7

    const/16 v7, 0x10

    invoke-virtual {v0, v15, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v15, "keyWordLenMaxNum"

    move/from16 v18, v11

    const/16 v11, 0x64

    invoke-virtual {v0, v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v11

    iput-boolean v1, v11, Lcom/amap/api/col/l3s/hk;->a:Z

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput v9, v1, Lcom/amap/api/col/l3s/hk;->j:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput v12, v1, Lcom/amap/api/col/l3s/hk;->p:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput v7, v1, Lcom/amap/api/col/l3s/hk;->q:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput-boolean v3, v1, Lcom/amap/api/col/l3s/hk;->c:Z

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput v14, v1, Lcom/amap/api/col/l3s/hk;->n:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput-boolean v4, v1, Lcom/amap/api/col/l3s/hk;->d:Z

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput v13, v1, Lcom/amap/api/col/l3s/hk;->m:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput v8, v1, Lcom/amap/api/col/l3s/hk;->h:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v1

    iput v0, v1, Lcom/amap/api/col/l3s/hk;->i:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    iput-boolean v2, v0, Lcom/amap/api/col/l3s/hk;->b:Z

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    iput-boolean v5, v0, Lcom/amap/api/col/l3s/hk;->e:Z

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    iput v10, v0, Lcom/amap/api/col/l3s/hk;->o:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    iput-boolean v6, v0, Lcom/amap/api/col/l3s/hk;->f:Z

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    move/from16 v1, v18

    iput v1, v0, Lcom/amap/api/col/l3s/hk;->k:I

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    move/from16 v1, v17

    iput-boolean v1, v0, Lcom/amap/api/col/l3s/hk;->g:Z

    invoke-static {}, Lcom/amap/api/col/l3s/hk;->a()Lcom/amap/api/col/l3s/hk;

    move-result-object v0

    move/from16 v1, v16

    iput v1, v0, Lcom/amap/api/col/l3s/hk;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static d(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "able"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gu;->a(Lorg/json/JSONObject;ZLcom/amap/api/col/l3s/hh$a;)Lcom/amap/api/col/l3s/hh$a;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/hh;->a(Lcom/amap/api/col/l3s/hh$a;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/hh$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "regeo"

    invoke-static {v1, p0, v0}, Lcom/amap/api/col/l3s/gu;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/amap/api/col/l3s/hh$a;)V

    const-string v1, "geo"

    invoke-static {v1, p0, v0}, Lcom/amap/api/col/l3s/gu;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/amap/api/col/l3s/hh$a;)V

    const-string v1, "placeText"

    invoke-static {v1, p0, v0}, Lcom/amap/api/col/l3s/gu;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/amap/api/col/l3s/hh$a;)V

    const-string v1, "placeAround"

    invoke-static {v1, p0, v0}, Lcom/amap/api/col/l3s/gu;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/amap/api/col/l3s/hh$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
