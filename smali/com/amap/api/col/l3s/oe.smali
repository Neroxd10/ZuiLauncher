.class public final Lcom/amap/api/col/l3s/oe;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/amap/api/col/l3s/of;

.field b:J

.field c:J

.field d:I

.field e:J

.field f:Lcom/amap/api/location/AMapLocation;

.field g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-wide v1, p0, Lcom/amap/api/col/l3s/oe;->c:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/oe;->h:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/amap/api/col/l3s/oe;->d:I

    iput-wide v1, p0, Lcom/amap/api/col/l3s/oe;->e:J

    iput-object v0, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    iput-wide v1, p0, Lcom/amap/api/col/l3s/oe;->g:J

    return-void
.end method

.method private b(Lcom/amap/api/col/l3s/of;)Lcom/amap/api/col/l3s/of;
    .locals 2

    invoke-static {p1}, Lcom/amap/api/col/l3s/pc;->a(Lcom/amap/api/col/l3s/of;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/oe;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ov;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    :cond_0
    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/amap/api/col/l3s/oe;->d:I

    :goto_0
    invoke-virtual {p1, p0}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/of;)Lcom/amap/api/col/l3s/of;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/amap/api/col/l3s/oe;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/col/l3s/oe;->e:J

    iget-object v0, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/oe;->e:J

    iget-object v2, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-static {v2}, Lcom/amap/api/col/l3s/pc;->a(Lcom/amap/api/col/l3s/of;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3s/pc;->a(Lcom/amap/api/col/l3s/of;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v2, v2, v6

    const/high16 v3, 0x43960000    # 300.0f

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v6, "gps"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3s/of;->c()I

    move-result v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/of;->c()I

    move-result v6

    if-eq v2, v6, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocation;->getBuildingId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    iput v2, v0, Lcom/amap/api/col/l3s/oe;->d:I

    iget-object v2, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/pc;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v7

    sub-float v8, v7, v6

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/amap/api/col/l3s/oe;->b:J

    sub-long v11, v9, v11

    const/high16 v13, 0x42c80000    # 100.0f

    cmpg-float v14, v6, v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const v17, 0x43958000    # 299.0f

    if-gtz v14, :cond_6

    cmpl-float v14, v7, v17

    if-lez v14, :cond_6

    move v14, v15

    goto :goto_0

    :cond_6
    move/from16 v14, v16

    :goto_0
    cmpl-float v18, v6, v17

    if-lez v18, :cond_7

    cmpl-float v19, v7, v17

    if-lez v19, :cond_7

    goto :goto_1

    :cond_7
    move/from16 v15, v16

    :goto_1
    const-wide/16 v4, 0x0

    if-nez v14, :cond_10

    if-eqz v15, :cond_8

    goto :goto_2

    :cond_8
    cmpg-float v13, v7, v13

    if-gez v13, :cond_9

    if-lez v18, :cond_9

    iput-wide v9, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    iput-wide v4, v0, Lcom/amap/api/col/l3s/oe;->c:J

    return-object v1

    :cond_9
    cmpg-float v13, v7, v17

    if-gtz v13, :cond_a

    iput-wide v4, v0, Lcom/amap/api/col/l3s/oe;->c:J

    :cond_a
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_d

    float-to-double v4, v2

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v4, v13

    if-lez v2, :cond_d

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v7, v2

    if-lez v2, :cond_d

    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_b

    iget-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/oe;->b(Lcom/amap/api/col/l3s/of;)Lcom/amap/api/col/l3s/of;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_b
    div-float/2addr v6, v7

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_c

    iput-wide v9, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/oe;->b(Lcom/amap/api/col/l3s/of;)Lcom/amap/api/col/l3s/of;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_d
    cmpl-float v2, v8, v3

    if-ltz v2, :cond_f

    const-wide/16 v2, 0x7530

    cmp-long v2, v11, v2

    if-ltz v2, :cond_e

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_e
    iget-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/oe;->b(Lcom/amap/api/col/l3s/of;)Lcom/amap/api/col/l3s/of;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_f
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_10
    :goto_2
    iget-wide v2, v0, Lcom/amap/api/col/l3s/oe;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_11

    iput-wide v9, v0, Lcom/amap/api/col/l3s/oe;->c:J

    goto :goto_3

    :cond_11
    sub-long v2, v9, v2

    const-wide/16 v6, 0x7530

    cmp-long v2, v2, v6

    if-lez v2, :cond_12

    iput-wide v9, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    iput-wide v4, v0, Lcom/amap/api/col/l3s/oe;->c:J

    return-object v1

    :cond_12
    :goto_3
    iget-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/oe;->b(Lcom/amap/api/col/l3s/of;)Lcom/amap/api/col/l3s/of;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1

    :cond_13
    :goto_4
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-object v1, v0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    return-object v1
.end method

.method public final a(Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 5

    invoke-static {p1}, Lcom/amap/api/col/l3s/pc;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/oe;->g:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/l3s/oe;->g:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    return-object p1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    return-object p1

    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v2, v2, v0

    if-gez v2, :cond_5

    iput-object p1, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    return-object p1

    :cond_5
    iget-object v2, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    add-float/2addr v2, v3

    long-to-float v0, v0

    mul-float/2addr v2, v0

    const/high16 v0, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/pc;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const v1, 0x453b8000    # 3000.0f

    add-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iget-object p0, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    return-object p0

    :cond_6
    iput-object p1, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/oe;->a:Lcom/amap/api/col/l3s/of;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amap/api/col/l3s/oe;->b:J

    iput-wide v1, p0, Lcom/amap/api/col/l3s/oe;->c:J

    iput-object v0, p0, Lcom/amap/api/col/l3s/oe;->f:Lcom/amap/api/location/AMapLocation;

    iput-wide v1, p0, Lcom/amap/api/col/l3s/oe;->g:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/oe;->h:Z

    return-void
.end method
