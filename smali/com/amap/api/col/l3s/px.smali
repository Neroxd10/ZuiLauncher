.class public final Lcom/amap/api/col/l3s/px;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/amap/api/col/l3s/px;


# instance fields
.field a:J

.field private c:Lcom/amap/api/col/l3s/qb;

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/px;->d:J

    iput-wide v0, p0, Lcom/amap/api/col/l3s/px;->e:J

    iput-wide v0, p0, Lcom/amap/api/col/l3s/px;->a:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/col/l3s/px;
    .locals 2

    const-class v0, Lcom/amap/api/col/l3s/px;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/px;->b:Lcom/amap/api/col/l3s/px;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/px;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/px;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/px;->b:Lcom/amap/api/col/l3s/px;

    :cond_0
    sget-object v1, Lcom/amap/api/col/l3s/px;->b:Lcom/amap/api/col/l3s/px;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/qb;)Lcom/amap/api/col/l3s/qb;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/amap/api/col/l3s/px;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/col/l3s/px;->a:J

    iget-object v0, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/px;->a:J

    iget-object v2, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    invoke-static {v2}, Lcom/amap/api/col/l3s/qf;->a(Lcom/amap/api/col/l3s/qb;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/qf;->a(Lcom/amap/api/col/l3s/qb;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v2, v2, v6

    const/high16 v3, 0x43960000    # 300.0f

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAccuracy()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v6, "gps"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/qb;->c()I

    move-result v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/qb;->c()I

    move-result v6

    if-eq v2, v6, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBuildingId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v1

    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v7

    aput-wide v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v7

    aput-wide v7, v2, v6

    const/4 v6, 0x2

    iget-object v7, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v7

    aput-wide v7, v2, v6

    const/4 v6, 0x3

    iget-object v7, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v7

    aput-wide v7, v2, v6

    invoke-static {v2}, Lcom/amap/api/col/l3s/pu;->a([D)F

    move-result v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAccuracy()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAccuracy()F

    move-result v7

    sub-float v8, v7, v6

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/amap/api/col/l3s/px;->d:J

    sub-long v11, v9, v11

    const/high16 v13, 0x42ca0000    # 101.0f

    cmpg-float v14, v6, v13

    const-wide/16 v3, 0x0

    const v15, 0x43958000    # 299.0f

    if-gez v14, :cond_6

    cmpl-float v14, v7, v15

    if-gtz v14, :cond_7

    :cond_6
    cmpl-float v14, v6, v15

    if-lez v14, :cond_a

    cmpl-float v16, v7, v15

    if-lez v16, :cond_a

    :cond_7
    iget-wide v5, v0, Lcom/amap/api/col/l3s/px;->e:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_8

    iput-wide v9, v0, Lcom/amap/api/col/l3s/px;->e:J

    goto :goto_0

    :cond_8
    sub-long v5, v9, v5

    const-wide/16 v7, 0x7530

    cmp-long v2, v5, v7

    if-lez v2, :cond_9

    iput-wide v9, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    iput-wide v3, v0, Lcom/amap/api/col/l3s/px;->e:J

    return-object v1

    :cond_9
    :goto_0
    iget-object v0, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v0

    :cond_a
    cmpg-float v13, v7, v13

    if-gez v13, :cond_b

    if-lez v14, :cond_b

    iput-wide v9, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    iput-wide v3, v0, Lcom/amap/api/col/l3s/px;->e:J

    return-object v1

    :cond_b
    cmpg-float v13, v7, v15

    if-gtz v13, :cond_c

    iput-wide v3, v0, Lcom/amap/api/col/l3s/px;->e:J

    :cond_c
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_f

    float-to-double v2, v2

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v2, v13

    if-lez v2, :cond_f

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v7, v2

    if-lez v2, :cond_f

    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_d

    iget-object v0, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v0

    :cond_d
    div-float/2addr v6, v7

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_e

    iput-wide v9, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v1

    :cond_e
    iget-object v0, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v0

    :cond_f
    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_11

    const-wide/16 v2, 0x7530

    cmp-long v2, v11, v2

    if-ltz v2, :cond_10

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v1

    :cond_10
    iget-object v0, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v0

    :cond_11
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v1

    :cond_12
    :goto_1
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/px;->d:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/px;->c:Lcom/amap/api/col/l3s/qb;

    return-object v1
.end method
