.class public final Lcom/amap/api/col/l3s/cz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IGroundOverlayDelegate;


# instance fields
.field a:[F

.field b:Lcom/amap/api/col/l3s/dl$c;

.field private c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private d:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:F

.field private g:F

.field private h:Lcom/amap/api/maps/model/LatLngBounds;

.field private i:F

.field private j:F

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:Ljava/lang/String;

.field private q:Ljava/nio/FloatBuffer;

.field private r:Ljava/nio/FloatBuffer;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/af;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;


# direct methods
.method private constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cz;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/cz;->l:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/l3s/cz;->m:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/col/l3s/cz;->n:F

    iput v0, p0, Lcom/amap/api/col/l3s/cz;->o:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cz;->q:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/cz;->t:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/cz;->u:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cz;->a:[F

    iput-object p1, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cz;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cz;->p:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "GroundOverlayDelegateImp"

    const-string v0, "create"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/maps/interfaces/IGlOverlayLayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/cz;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/cz;->w:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    return-void
.end method

.method private a()V
    .locals 14

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3s/cz;->f:F

    float-to-double v1, v1

    const-wide v3, 0x41584dae328f5c29L    # 6371000.79

    iget-wide v5, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v7, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v7

    div-double/2addr v1, v5

    iget v0, p0, Lcom/amap/api/col/l3s/cz;->g:F

    float-to-double v3, v0

    const-wide v5, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v3, v5

    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v8, p0, Lcom/amap/api/col/l3s/cz;->o:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    float-to-double v10, v8

    mul-double/2addr v10, v3

    sub-double/2addr v6, v10

    iget-object v8, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v8, p0, Lcom/amap/api/col/l3s/cz;->n:F

    float-to-double v12, v8

    mul-double/2addr v12, v1

    sub-double/2addr v10, v12

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v10, p0, Lcom/amap/api/col/l3s/cz;->o:F

    float-to-double v10, v10

    mul-double/2addr v10, v3

    add-double/2addr v7, v10

    iget-object v3, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v10, p0, Lcom/amap/api/col/l3s/cz;->n:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    mul-double/2addr v9, v1

    add-double/2addr v3, v9

    invoke-direct {v6, v7, v8, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v5, v6}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->c()V

    return-void
.end method

.method private a(Lcom/amap/api/col/l3s/af;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/af;->n()V

    :cond_0
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    iget v0, p0, Lcom/amap/api/col/l3s/cz;->n:F

    float-to-double v0, v0

    mul-double/2addr p6, v0

    sub-double/2addr p2, p6

    iget p6, p0, Lcom/amap/api/col/l3s/cz;->o:F

    const/high16 p7, 0x3f800000    # 1.0f

    sub-float/2addr p7, p6

    float-to-double p6, p7

    mul-double/2addr p8, p6

    sub-double/2addr p8, p4

    iget p0, p0, Lcom/amap/api/col/l3s/cz;->i:F

    neg-float p0, p0

    float-to-double p4, p0

    const-wide p6, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr p4, p6

    iget-wide p6, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p8

    add-double/2addr v0, v2

    add-double/2addr p6, v0

    double-to-int p0, p6

    iput p0, p10, Landroid/graphics/Point;->x:I

    iget-wide p0, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    mul-double/2addr p8, p6

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double/2addr p2, p4

    sub-double/2addr p8, p2

    add-double/2addr p0, p8

    double-to-int p0, p0

    iput p0, p10, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private declared-synchronized b()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/amap/api/col/l3s/cz;->o:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget-wide v7, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v9, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/col/l3s/cz;->n:F

    float-to-double v7, v7

    iget-wide v9, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v11, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double/2addr v2, v6

    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    mul-double/2addr v2, v8

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/col/l3s/cz;->f:F

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v1, v8

    mul-double/2addr v1, v6

    mul-double/2addr v1, v4

    double-to-float v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/cz;->g:F

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 21

    move-object/from16 v12, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/16 v0, 0x10

    :try_start_1
    new-array v0, v0, [F

    iput-object v0, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v13

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v14

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v15

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v13}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v14}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v12, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v15}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v12, Lcom/amap/api/col/l3s/cz;->i:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, v13, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-double v9, v1

    iget v1, v13, Landroid/graphics/Point;->y:I

    iget v2, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-double v7, v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v11

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iget v3, v12, Lcom/amap/api/col/l3s/cz;->n:F

    float-to-double v3, v3

    mul-double/2addr v3, v9

    add-double/2addr v1, v3

    iput-wide v1, v11, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v12, Lcom/amap/api/col/l3s/cz;->o:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v3, v7

    sub-double/2addr v1, v3

    iput-wide v1, v11, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide/from16 v16, v7

    move-wide v7, v9

    move-wide/from16 v18, v9

    move-wide/from16 v9, v16

    move-object/from16 v20, v11

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lcom/amap/api/col/l3s/cz;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v18

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/amap/api/col/l3s/cz;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v18

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v14

    invoke-direct/range {v1 .. v11}, Lcom/amap/api/col/l3s/cz;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v15

    invoke-direct/range {v1 .. v11}, Lcom/amap/api/col/l3s/cz;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_1
    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Point;->x:I

    div-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Point;->y:I

    div-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/Point;->x:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/Point;->y:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v2, 0x4

    iget v3, v13, Landroid/graphics/Point;->x:I

    div-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v2, 0x5

    iget v3, v13, Landroid/graphics/Point;->y:I

    div-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v2, 0x6

    iget v3, v13, Landroid/graphics/Point;->x:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v2, 0x7

    iget v3, v13, Landroid/graphics/Point;->y:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/16 v2, 0x8

    iget v3, v14, Landroid/graphics/Point;->x:I

    div-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/16 v2, 0x9

    iget v3, v14, Landroid/graphics/Point;->y:I

    div-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/16 v2, 0xa

    iget v3, v14, Landroid/graphics/Point;->x:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/16 v2, 0xb

    iget v3, v14, Landroid/graphics/Point;->y:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/16 v2, 0xc

    iget v3, v15, Landroid/graphics/Point;->x:I

    div-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/16 v2, 0xd

    iget v3, v15, Landroid/graphics/Point;->y:I

    div-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/16 v2, 0xe

    iget v3, v15, Landroid/graphics/Point;->x:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    const/16 v2, 0xf

    iget v3, v15, Landroid/graphics/Point;->y:I

    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->q:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_2

    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    :goto_0
    iput-object v1, v12, Lcom/amap/api/col/l3s/cz;->q:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_2
    iget-object v1, v12, Lcom/amap/api/col/l3s/cz;->a:[F

    iget-object v2, v12, Lcom/amap/api/col/l3s/cz;->q:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/ex;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v13}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v14}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final calMapFPoint()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->a:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/cz;->u:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->a()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->c()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final checkInBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final destroy()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cz;->remove()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/af;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/cz;->w:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/cz;->w:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v2, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addRecycleTextureIds(Lcom/amap/api/col/l3s/af;)V

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->r:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->r:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3s/cz;->r:Ljava/nio/FloatBuffer;

    :cond_5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->q:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3s/cz;->q:Ljava/nio/FloatBuffer;

    :cond_6
    iput-object v1, p0, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "destroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/cz;->k:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/cz;->calMapFPoint()Z

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/cz;->t:Z

    if-nez v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v0, v4, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    iget-object v4, v1, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v5, v1, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/col/l3s/af;

    if-eqz v6, :cond_5

    iget-object v7, v1, Lcom/amap/api/col/l3s/cz;->w:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v7, :cond_5

    invoke-interface {v7, v6}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->addRecycleTextureIds(Lcom/amap/api/col/l3s/af;)V

    goto :goto_3

    :cond_6
    iget-object v5, v1, Lcom/amap/api/col/l3s/cz;->v:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_7
    const/4 v5, 0x0

    if-eqz v0, :cond_8

    iget-object v5, v1, Lcom/amap/api/col/l3s/cz;->w:Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    invoke-interface {v5, v4}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3s/af;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v0

    invoke-direct {v1, v5}, Lcom/amap/api/col/l3s/cz;->a(Lcom/amap/api/col/l3s/af;)V

    goto :goto_4

    :cond_8
    if-nez v5, :cond_9

    new-instance v5, Lcom/amap/api/col/l3s/af;

    invoke-direct {v5, v4, v3}, Lcom/amap/api/col/l3s/af;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_9
    invoke-virtual {v4}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_b

    new-array v6, v2, [I

    aput v3, v6, v3

    invoke-static {v2, v6, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/amap/api/col/l3s/af;->a(I)V

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/col/l3s/af;)V

    :cond_a
    invoke-direct {v1, v5}, Lcom/amap/api/col/l3s/cz;->a(Lcom/amap/api/col/l3s/af;)V

    invoke-static {v6, v4, v2}, Lcom/amap/api/col/l3s/ex;->a(ILandroid/graphics/Bitmap;Z)I

    move v0, v6

    goto :goto_4

    :cond_b
    move v0, v3

    :goto_4
    iput v0, v1, Lcom/amap/api/col/l3s/cz;->s:I

    iput-boolean v2, v1, Lcom/amap/api/col/l3s/cz;->t:Z

    :cond_c
    iget v0, v1, Lcom/amap/api/col/l3s/cz;->f:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_d

    iget v0, v1, Lcom/amap/api/col/l3s/cz;->g:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_d

    return-void

    :cond_d
    monitor-enter p0

    :try_start_1
    iget v0, v1, Lcom/amap/api/col/l3s/cz;->s:I

    iget-object v9, v1, Lcom/amap/api/col/l3s/cz;->q:Ljava/nio/FloatBuffer;

    iget-object v15, v1, Lcom/amap/api/col/l3s/cz;->r:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_11

    if-nez v15, :cond_e

    goto/16 :goto_5

    :cond_e
    iget-object v4, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    iget-object v4, v1, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/col/l3s/dk;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3s/dl$c;

    iput-object v4, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    :cond_10
    iget-object v4, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v4, v4, Lcom/amap/api/col/l3s/dk;->d:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v16, 0xbe2

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget v4, v1, Lcom/amap/api/col/l3s/cz;->m:F

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v4, v4, v17

    iget v5, v1, Lcom/amap/api/col/l3s/cz;->m:F

    mul-float v5, v5, v17

    iget v6, v1, Lcom/amap/api/col/l3s/cz;->m:F

    mul-float v6, v6, v17

    iget v7, v1, Lcom/amap/api/col/l3s/cz;->m:F

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v14, 0xde1

    invoke-static {v14, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$c;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v4, v0, Lcom/amap/api/col/l3s/dl$c;->b:I

    const/4 v5, 0x4

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$c;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v10, v0, Lcom/amap/api/col/l3s/dl$c;->c:I

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v0, 0x8

    move v4, v14

    move v14, v0

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$c;->g:I

    iget-object v5, v1, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v5

    double-to-int v5, v5

    div-int/lit16 v5, v5, 0x2710

    int-to-float v5, v5

    iget-object v6, v1, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v6

    double-to-int v6, v6

    div-int/lit16 v6, v6, 0x2710

    int-to-float v6, v6

    iget-object v7, v1, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v7

    double-to-int v7, v7

    rem-int/lit16 v7, v7, 0x2710

    int-to-float v7, v7

    iget-object v8, v1, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v8

    double-to-int v8, v8

    rem-int/lit16 v8, v8, 0x2710

    int-to-float v8, v8

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$c;->h:I

    iget v5, v1, Lcom/amap/api/col/l3s/cz;->m:F

    mul-float v5, v5, v17

    iget v6, v1, Lcom/amap/api/col/l3s/cz;->m:F

    mul-float v6, v6, v17

    iget v7, v1, Lcom/amap/api/col/l3s/cz;->m:F

    mul-float v7, v7, v17

    iget v8, v1, Lcom/amap/api/col/l3s/cz;->m:F

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$c;->a:I

    iget-object v5, v1, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    const/4 v5, 0x4

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$c;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3s/cz;->b:Lcom/amap/api/col/l3s/dl$c;

    iget v0, v0, Lcom/amap/api/col/l3s/dl$c;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_11
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, v1, Lcom/amap/api/col/l3s/cz;->u:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cz;->getId()Ljava/lang/String;

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

.method public final getBearing()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cz;->i:F

    return p0
.end method

.method public final getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    return-object p0
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cz;->g:F

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const-string v1, "GroundOverlay"

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cz;->p:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getTransparency()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cz;->l:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cz;->f:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cz;->j:F

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isAboveMaskLayer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDrawFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cz;->u:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cz;->k:Z

    return p0
.end method

.method public final reLoadTexture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cz;->t:Z

    iput v0, p0, Lcom/amap/api/col/l3s/cz;->s:I

    return-void
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cz;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setAnchor(FF)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cz;->n:F

    iput p2, p0, Lcom/amap/api/col/l3s/cz;->o:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setBearing(F)V
    .locals 4

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    iget v0, p0, Lcom/amap/api/col/l3s/cz;->i:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iput p1, p0, Lcom/amap/api/col/l3s/cz;->i:F

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->c()V

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setDimensions(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width must be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/cz;->t:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/l3s/cz;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/amap/api/col/l3s/cz;->f:F

    iput p1, p0, Lcom/amap/api/col/l3s/cz;->g:F

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->a()V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/amap/api/col/l3s/cz;->f:F

    iput p1, p0, Lcom/amap/api/col/l3s/cz;->g:F

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setDimensions(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width and Height must be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/cz;->t:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/l3s/cz;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/l3s/cz;->g:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/amap/api/col/l3s/cz;->f:F

    iput p2, p0, Lcom/amap/api/col/l3s/cz;->g:F

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->a()V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/amap/api/col/l3s/cz;->f:F

    iput p2, p0, Lcom/amap/api/col/l3s/cz;->g:F

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/cz;->d:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float p1, p1

    int-to-float v3, v3

    div-float/2addr p1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    const/4 v4, 0x1

    aput v1, v2, v4

    const/4 v4, 0x2

    aput p1, v2, v4

    const/4 v4, 0x3

    aput v1, v2, v4

    const/4 v1, 0x4

    aput p1, v2, v1

    const/4 p1, 0x5

    aput v3, v2, p1

    const/4 p1, 0x6

    aput v3, v2, p1

    const/4 p1, 0x7

    aput v3, v2, p1

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cz;->r:Ljava/nio/FloatBuffer;

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/cz;->t:Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cz;->t:Z

    :cond_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cz;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->a()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/cz;->h:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cz;->b()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setTransparency(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/col/l3s/cz;->l:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/amap/api/col/l3s/cz;->m:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cz;->k:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cz;->j:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/cz;->c:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
