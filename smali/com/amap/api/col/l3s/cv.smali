.class public final Lcom/amap/api/col/l3s/cv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IArcDelegate;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:Lcom/amap/api/maps/model/LatLng;

.field private g:Lcom/amap/api/maps/model/LatLng;

.field private h:F

.field private i:I

.field private j:F

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private n:[F

.field private o:I

.field private p:Z

.field private q:D

.field private r:D

.field private s:D

.field private t:D

.field private u:D


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/col/l3s/cv;->h:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/col/l3s/cv;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/cv;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cv;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/cv;->o:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cv;->p:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cv;->q:D

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cv;->r:D

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cv;->s:D

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cv;->t:D

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cv;->u:D

    iput-object p1, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cv;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cv;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ArcDelegateImp"

    const-string v0, "create"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private a(DDDD)D
    .locals 2

    sub-double/2addr p3, p7

    iget-wide p7, p0, Lcom/amap/api/col/l3s/cv;->q:D

    div-double/2addr p3, p7

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, p7, v0

    if-lez p0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    move-result-wide p3

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    const-wide/16 p7, 0x0

    cmpl-double p0, p3, p7

    const-wide p7, 0x400921fb54442d18L    # Math.PI

    if-ltz p0, :cond_1

    cmpg-double p0, p5, p1

    if-gez p0, :cond_3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    sub-double p3, p7, p0

    goto :goto_0

    :cond_1
    cmpg-double p0, p5, p1

    if-gez p0, :cond_2

    sub-double p3, p7, p3

    goto :goto_0

    :cond_2
    const-wide p0, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr p3, p0

    :cond_3
    :goto_0
    return-wide p3
.end method

.method private a(DDD)Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/cv;->q:D

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    neg-double p1, p1

    iget-wide v2, p0, Lcom/amap/api/col/l3s/cv;->q:D

    mul-double/2addr p1, v2

    add-double/2addr p3, v0

    double-to-int p3, p3

    add-double/2addr p5, p1

    double-to-int p1, p5

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p2

    iget-object p0, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide p4

    double-to-int p4, p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    iput p3, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide p3

    double-to-int p0, p3

    sub-int/2addr p1, p0

    int-to-float p0, p1

    iput p0, p2, Landroid/graphics/PointF;->y:F

    :cond_0
    return-object p2
.end method

.method private a()V
    .locals 11

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/autonavi/base/amap/mapcore/FPoint;

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/amap/api/col/l3s/cv;->n:[F

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v4, p0, Lcom/amap/api/col/l3s/cv;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    iget-object v4, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v5, p0, Lcom/amap/api/col/l3s/cv;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v5, v6

    move-wide v7, v8

    move-object v9, v2

    invoke-interface/range {v4 .. v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    iget-object v5, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v4, p0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v10, v2

    invoke-interface/range {v5 .. v10}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/cv;->n:[F

    mul-int/lit8 v5, v3, 0x3

    aget-object v6, v1, v3

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aput v6, v2, v5

    add-int/lit8 v6, v5, 0x1

    aget-object v7, v1, v3

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v2, v6

    add-int/2addr v5, v4

    const/4 v6, 0x0

    aput v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/amap/api/col/l3s/cv;->o:I

    return-void
.end method


# virtual methods
.method public final calMapFPoint()Z
    .locals 45

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->e:Lcom/amap/api/maps/model/LatLng;

    const/4 v10, 0x0

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/cv;->k:Z

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    iput-boolean v10, v0, Lcom/amap/api/col/l3s/cv;->p:Z

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v11

    iget-object v2, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v7, v11

    invoke-interface/range {v2 .. v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    iget-object v12, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v13, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v15, v1

    move-object/from16 v17, v8

    invoke-interface/range {v12 .. v17}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v12

    iget-object v15, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v3, v0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-object/from16 v20, v12

    invoke-interface/range {v15 .. v20}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-double v6, v1

    iget v1, v11, Landroid/graphics/Point;->y:I

    int-to-double v13, v1

    iget v1, v8, Landroid/graphics/Point;->x:I

    int-to-double v4, v1

    iget v1, v8, Landroid/graphics/Point;->y:I

    int-to-double v2, v1

    iget v1, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v16, v11

    int-to-double v10, v1

    iget v1, v12, Landroid/graphics/Point;->y:I

    move-object/from16 v17, v8

    int-to-double v8, v1

    sub-double v18, v4, v6

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v22, v18, v20

    sub-double v24, v8, v13

    mul-double v22, v22, v24

    sub-double v26, v10, v6

    mul-double v28, v26, v20

    sub-double v30, v2, v13

    mul-double v28, v28, v30

    sub-double v22, v22, v28

    mul-double v28, v30, v20

    mul-double v28, v28, v26

    mul-double v20, v20, v24

    mul-double v20, v20, v18

    sub-double v28, v28, v20

    const-wide/16 v20, 0x0

    cmpl-double v1, v22, v20

    const/16 v32, 0x1

    if-eqz v1, :cond_7

    cmpl-double v1, v28, v20

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    mul-double v20, v2, v2

    mul-double v33, v13, v13

    sub-double v35, v20, v33

    mul-double v37, v4, v4

    add-double v35, v35, v37

    mul-double v39, v6, v6

    sub-double v35, v35, v39

    mul-double v24, v24, v35

    mul-double v35, v8, v8

    sub-double v41, v33, v35

    add-double v41, v41, v39

    mul-double v43, v10, v10

    sub-double v41, v41, v43

    mul-double v30, v30, v41

    add-double v24, v24, v30

    move-wide/from16 v30, v2

    div-double v1, v24, v22

    iput-wide v1, v0, Lcom/amap/api/col/l3s/cv;->t:D

    sub-double v37, v37, v39

    add-double v37, v37, v20

    sub-double v37, v37, v33

    mul-double v26, v26, v37

    sub-double v39, v39, v43

    add-double v39, v39, v33

    sub-double v39, v39, v35

    mul-double v18, v18, v39

    add-double v26, v26, v18

    move-wide/from16 v18, v4

    div-double v3, v26, v28

    iput-wide v3, v0, Lcom/amap/api/col/l3s/cv;->u:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->u:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->t:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_7

    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->u:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->t:D

    sub-double v1, v6, v1

    iget-wide v3, v0, Lcom/amap/api/col/l3s/cv;->t:D

    sub-double v3, v6, v3

    mul-double/2addr v1, v3

    iget-wide v3, v0, Lcom/amap/api/col/l3s/cv;->u:D

    sub-double v3, v13, v3

    move-wide/from16 v20, v8

    iget-wide v8, v0, Lcom/amap/api/col/l3s/cv;->u:D

    sub-double v8, v13, v8

    mul-double/2addr v3, v8

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/col/l3s/cv;->q:D

    iget-wide v2, v0, Lcom/amap/api/col/l3s/cv;->t:D

    iget-wide v4, v0, Lcom/amap/api/col/l3s/cv;->u:D

    move-object/from16 v1, p0

    move-wide/from16 v22, v30

    move-wide v8, v13

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3s/cv;->a(DDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/col/l3s/cv;->r:D

    iget-wide v2, v0, Lcom/amap/api/col/l3s/cv;->t:D

    iget-wide v4, v0, Lcom/amap/api/col/l3s/cv;->u:D

    move-object/from16 v1, p0

    move-wide/from16 v6, v18

    move-wide/from16 v8, v22

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3s/cv;->a(DDDD)D

    move-result-wide v13

    iget-wide v2, v0, Lcom/amap/api/col/l3s/cv;->t:D

    iget-wide v4, v0, Lcom/amap/api/col/l3s/cv;->u:D

    move-object/from16 v1, p0

    move-wide v6, v10

    move-wide/from16 v8, v20

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3s/cv;->a(DDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/col/l3s/cv;->s:D

    iget-wide v3, v0, Lcom/amap/api/col/l3s/cv;->r:D

    cmpg-double v3, v3, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v3, :cond_4

    iget-wide v6, v0, Lcom/amap/api/col/l3s/cv;->r:D

    cmpl-double v3, v13, v6

    if-lez v3, :cond_3

    cmpg-double v1, v13, v1

    if-ltz v1, :cond_6

    :cond_3
    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->s:D

    sub-double/2addr v1, v4

    iput-wide v1, v0, Lcom/amap/api/col/l3s/cv;->s:D

    goto :goto_0

    :cond_4
    cmpl-double v1, v13, v1

    if-lez v1, :cond_5

    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->r:D

    cmpg-double v1, v13, v1

    if-ltz v1, :cond_6

    :cond_5
    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->s:D

    add-double/2addr v1, v4

    iput-wide v1, v0, Lcom/amap/api/col/l3s/cv;->s:D

    :cond_6
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual/range {v17 .. v17}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v12}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    move/from16 v1, v32

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/cv;->a()V

    return v32

    :cond_8
    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->t:D

    iget-wide v3, v0, Lcom/amap/api/col/l3s/cv;->u:D

    invoke-static {v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v8

    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->s:D

    iget-wide v3, v0, Lcom/amap/api/col/l3s/cv;->r:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v9, v1

    if-nez v9, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/cv;->a()V

    return v32

    :cond_9
    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->s:D

    iget-wide v3, v0, Lcom/amap/api/col/l3s/cv;->r:D

    sub-double/2addr v1, v3

    int-to-double v3, v9

    div-double v10, v1, v3

    add-int/lit8 v12, v9, 0x1

    new-array v13, v12, [Lcom/autonavi/base/amap/mapcore/FPoint;

    mul-int/lit8 v1, v12, 0x3

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/amap/api/col/l3s/cv;->n:[F

    const/4 v14, 0x0

    :goto_3
    if-gt v14, v9, :cond_b

    if-ne v14, v9, :cond_a

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v7

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v2, v0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, v0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V

    aput-object v7, v13, v14

    goto :goto_4

    :cond_a
    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->r:D

    int-to-double v3, v14

    mul-double/2addr v3, v10

    add-double v2, v1, v3

    iget-wide v4, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/col/l3s/cv;->a(DDD)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    aput-object v1, v13, v14

    :goto_4
    iget-wide v1, v0, Lcom/amap/api/col/l3s/cv;->r:D

    int-to-double v3, v14

    mul-double/2addr v3, v10

    add-double v2, v1, v3

    iget-wide v4, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/col/l3s/cv;->a(DDD)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    aput-object v1, v13, v14

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->n:[F

    mul-int/lit8 v2, v14, 0x3

    aget-object v3, v13, v14

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v1, v2

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->n:[F

    add-int/lit8 v3, v2, 0x1

    aget-object v4, v13, v14

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, v1, v3

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->n:[F

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    iput v12, v0, Lcom/amap/api/col/l3s/cv;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v32

    :catchall_0
    move-exception v0

    const-string v1, "ArcDelegateImp"

    const-string v2, "calMapFPoint"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return v1

    :cond_c
    :goto_5
    move v1, v10

    return v1
.end method

.method public final checkInBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/cv;->e:Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cv;->f:Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ArcDelegateImp"

    const-string v1, "destroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "destroy erro"

    const-string v0, "ArcDelegateImp destroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/cv;->k:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/cv;->calMapFPoint()Z

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->n:[F

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/amap/api/col/l3s/cv;->o:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    iget v3, v0, Lcom/amap/api/col/l3s/cv;->h:F

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v6

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    iget-object v4, v0, Lcom/amap/api/col/l3s/cv;->n:[F

    array-length v5, v4

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v7

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v8

    iget v9, v0, Lcom/amap/api/col/l3s/cv;->b:F

    iget v10, v0, Lcom/amap/api/col/l3s/cv;->c:F

    iget v11, v0, Lcom/amap/api/col/l3s/cv;->d:F

    iget v12, v0, Lcom/amap/api/col/l3s/cv;->a:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x0

    invoke-static/range {v4 .. v19}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFFZZZ[FII)V

    :cond_1
    iput-boolean v2, v0, Lcom/amap/api/col/l3s/cv;->p:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cv;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cv;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const-string v1, "Arc"

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cv;->l:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cv;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cv;->i:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cv;->h:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cv;->j:F

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isAboveMaskLayer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDrawFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cv;->p:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cv;->k:Z

    return p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cv;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setEnd(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cv;->g:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public final setPassed(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cv;->f:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public final setStart(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cv;->e:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 2

    iput p1, p0, Lcom/amap/api/col/l3s/cv;->i:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/cv;->a:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/cv;->b:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/cv;->c:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/amap/api/col/l3s/cv;->d:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cv;->h:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cv;->k:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cv;->j:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/cv;->m:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
