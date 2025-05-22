.class public final Lcom/amap/api/col/l3s/df;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IPolygonDelegate;


# static fields
.field private static A:F = 4.0075016E7f

.field private static B:I = 0x100

.field private static C:I = 0x14

.field private static H:D = 1.0E10


# instance fields
.field private D:I

.field private E:I

.field private F:Ljava/nio/FloatBuffer;

.field private G:Ljava/nio/FloatBuffer;

.field a:Landroid/graphics/Rect;

.field private b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:F

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/nio/FloatBuffer;

.field private p:Ljava/nio/FloatBuffer;

.field private q:I

.field private r:I

.field private s:Z

.field private t:F

.field private u:Ljava/lang/Object;

.field private v:Z

.field private w:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

.field private x:Lcom/amap/api/maps/model/AMapPara$LineCapType;

.field private y:F

.field private z:Lcom/amap/api/col/l3s/dl$e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/df;->c:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/df;->d:Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3s/df;->q:I

    iput v1, p0, Lcom/amap/api/col/l3s/df;->r:I

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/df;->s:Z

    iput v0, p0, Lcom/amap/api/col/l3s/df;->t:F

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/df;->u:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/df;->v:Z

    sget-object v1, Lcom/amap/api/maps/model/AMapPara$LineJoinType;->LineJoinBevel:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->w:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    sget-object v1, Lcom/amap/api/maps/model/AMapPara$LineCapType;->LineCapRound:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->x:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    iput v0, p0, Lcom/amap/api/col/l3s/df;->y:F

    iput-object p1, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/df;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/df;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "PolygonDelegateImp"

    const-string v0, "create"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    sget v0, Lcom/amap/api/col/l3s/df;->A:F

    float-to-double v0, v0

    mul-double/2addr p0, v0

    sget v0, Lcom/amap/api/col/l3s/df;->B:I

    sget v1, Lcom/amap/api/col/l3s/df;->C:I

    shl-int/2addr v0, v1

    int-to-double v0, v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4, v1}, Lcom/amap/api/col/l3s/ex;->b(Landroid/graphics/Rect;II)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    sub-int/2addr p0, p1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_2

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-ne v1, p1, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/col/l3s/dk;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/dl$e;

    iput-object v0, p0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    :cond_0
    return-void
.end method

.method private a(Lcom/amap/api/maps/model/CircleHoleOptions;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4, v5, v6, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/16 v3, 0x43e

    new-array v3, v3, [F

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/df;->a(D)D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v7, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v7

    double-to-int v7, v7

    iget v8, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    iput v8, v2, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v7

    int-to-float v9, v9

    iput v9, v2, Landroid/graphics/PointF;->y:F

    const/4 v10, 0x0

    aput v8, v3, v10

    const/4 v8, 0x1

    aput v9, v3, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v3, v8

    :goto_0
    const/16 v11, 0x169

    if-ge v10, v11, :cond_0

    int-to-double v11, v10

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v11, v13

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v4

    iget v15, v1, Landroid/graphics/Point;->x:I

    int-to-double v8, v15

    add-double/2addr v8, v13

    double-to-int v8, v8

    iget v9, v1, Landroid/graphics/Point;->y:I

    int-to-double v13, v9

    add-double/2addr v13, v11

    double-to-int v9, v13

    sub-int v11, v8, v6

    int-to-float v11, v11

    iput v11, v2, Landroid/graphics/PointF;->x:F

    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, v2, Landroid/graphics/PointF;->y:F

    iget-object v11, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v11}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v11

    double-to-int v11, v11

    sub-int/2addr v8, v11

    int-to-float v8, v8

    iput v8, v2, Landroid/graphics/PointF;->x:F

    iget-object v8, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v11

    double-to-int v8, v11

    sub-int/2addr v9, v8

    int-to-float v8, v9

    iput v8, v2, Landroid/graphics/PointF;->y:F

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v9, v10, 0x3

    iget v11, v2, Landroid/graphics/PointF;->x:F

    aput v11, v3, v9

    add-int/lit8 v11, v9, 0x1

    aput v8, v3, v11

    const/4 v8, 0x2

    add-int/2addr v9, v8

    const/4 v11, 0x0

    aput v11, v3, v9

    move v9, v11

    goto :goto_0

    :cond_0
    const/16 v4, 0x16a

    iput v4, v0, Lcom/amap/api/col/l3s/df;->D:I

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lcom/autonavi/amap/mapcore/IPoint;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/amap/mapcore/IPoint;

    mul-int/lit8 v8, v5, 0x3

    iget v9, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, p2

    int-to-float v9, v9

    aput v9, v0, v8

    add-int/lit8 v9, v8, 0x1

    iget v10, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, p3

    int-to-float v10, v10

    aput v10, v0, v9

    add-int/2addr v8, v1

    aput v7, v0, v8

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/amap/api/col/l3s/df;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    array-length v5, p1

    if-nez v5, :cond_3

    sget-wide v5, Lcom/amap/api/col/l3s/df;->H:D

    const-wide v8, 0x4202a05f20000000L    # 1.0E10

    cmpl-double p1, v5, v8

    if-nez p1, :cond_2

    const-wide v5, 0x4197d78400000000L    # 1.0E8

    sput-wide v5, Lcom/amap/api/col/l3s/df;->H:D

    goto :goto_1

    :cond_2
    sput-wide v8, Lcom/amap/api/col/l3s/df;->H:D

    :goto_1
    invoke-static {v3}, Lcom/amap/api/col/l3s/df;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    :cond_3
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    array-length v5, p1

    move v6, v4

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v8, p1, v4

    mul-int/lit8 v9, v6, 0x3

    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, p2

    int-to-float v10, v10

    aput v10, v3, v9

    add-int/lit8 v10, v9, 0x1

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, p3

    int-to-float v8, v8

    aput v8, v3, v10

    add-int/2addr v9, v1

    aput v7, v3, v9

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iput v2, p0, Lcom/amap/api/col/l3s/df;->D:I

    array-length p1, p1

    iput p1, p0, Lcom/amap/api/col/l3s/df;->E:I

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/df;->G:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/df;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "PolygonDelegateImp"

    const-string v1, "isPolygonInPolygon"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v0
.end method

.method private a(Lcom/autonavi/base/amap/mapcore/Rectangle;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/df;->y:F

    invoke-direct {p0}, Lcom/amap/api/col/l3s/df;->c()V

    iget v0, p0, Lcom/amap/api/col/l3s/df;->y:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(Landroid/graphics/Rect;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_2
    return v1
.end method

.method private static a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 9

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x2

    aget-object v5, p0, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    sget-wide v7, Lcom/amap/api/col/l3s/df;->H:D

    mul-double/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p0, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    mul-double/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/amap/api/col/l3s/ec;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ec;-><init>()V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/ec;->a([D)Lcom/amap/api/col/l3s/et;

    move-result-object p0

    iget v0, p0, Lcom/amap/api/col/l3s/et;->b:I

    new-array v3, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    :goto_1
    if-ge v2, v0, :cond_1

    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    aput-object v4, v3, v2

    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/et;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/col/l3s/df;->H:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/et;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/col/l3s/df;->H:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private b()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v2, 0x400

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v2, 0xb90

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v2, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    :goto_0
    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v4, v3, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v4, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v5}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/amap/api/col/l3s/df;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v7

    double-to-int v7, v7

    invoke-direct {v0, v5, v6, v7}, Lcom/amap/api/col/l3s/df;->a(Ljava/util/List;II)V

    goto :goto_1

    :cond_0
    instance-of v5, v3, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v6, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    invoke-direct {v0, v5}, Lcom/amap/api/col/l3s/df;->a(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    :cond_1
    :goto_1
    iget-object v5, v0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/amap/api/col/l3s/df;->D:I

    if-lez v5, :cond_5

    iget-object v5, v0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/df;->a()V

    :cond_3
    if-eqz v4, :cond_4

    iget-object v6, v0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    iget v7, v0, Lcom/amap/api/col/l3s/df;->i:I

    iget-object v8, v0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    iget v9, v0, Lcom/amap/api/col/l3s/df;->g:F

    iget v10, v0, Lcom/amap/api/col/l3s/df;->D:I

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMvpMatrix()[F

    move-result-object v11

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v12

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v13

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v14

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->x:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/AMapPara$LineCapType;->getTypeValue()I

    move-result v15

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->w:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/AMapPara$LineJoinType;->getTypeValue()I

    move-result v16

    iget-boolean v3, v0, Lcom/amap/api/col/l3s/df;->v:Z

    move/from16 v17, v3

    invoke-static/range {v6 .. v17}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[FIFFIIZ)V

    goto :goto_2

    :cond_4
    instance-of v3, v3, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v3, :cond_5

    iget-object v4, v0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    iget v5, v0, Lcom/amap/api/col/l3s/df;->i:I

    iget-object v6, v0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    iget v7, v0, Lcom/amap/api/col/l3s/df;->g:F

    iget v8, v0, Lcom/amap/api/col/l3s/df;->D:I

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v9

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v10

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v11

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v12

    iget-boolean v13, v0, Lcom/amap/api/col/l3s/df;->v:Z

    invoke-static/range {v4 .. v13}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[FFIFZ)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private b(Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/df;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amap/api/col/l3s/ex;->b(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/df;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "PolygonDelegateImp"

    const-string v0, "isCircleInPolygon"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_2

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3s/df;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    float-to-int v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/df;->t:F

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    const/16 v1, 0xa

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    const/4 v1, 0x2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/amap/api/maps/model/AMapPara$LineJoinType;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/df;->w:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/df;->v:Z

    return-void
.end method

.method public final calMapFPoint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final checkInBounds()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    invoke-static {v2, p1}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/df;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "PolygonDelegateImp"

    const-string v1, "contains"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->o:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->o:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->p:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->p:Ljava/nio/FloatBuffer;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->G:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->G:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->G:Ljava/nio/FloatBuffer;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->n:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->n:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "PolygonDelegateImp"

    const-string v1, "destroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v2, v0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/df;->a(Lcom/autonavi/base/amap/mapcore/Rectangle;)Z

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    iget-object v3, v0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-static {v4}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v3, 0xff

    invoke-static {v3}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const/16 v6, 0x400

    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    const/16 v6, 0xb90

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v6, 0x200

    invoke-static {v6, v5, v3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/16 v6, 0x1e01

    const/16 v7, 0x1e00

    invoke-static {v6, v7, v7}, Landroid/opengl/GLES20;->glStencilOp(III)V

    move v6, v4

    :goto_0
    iget-object v7, v0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, v0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v8, v7, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v8, :cond_1

    move-object v9, v7

    check-cast v9, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v9}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/amap/api/col/l3s/df;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v11

    double-to-int v11, v11

    invoke-direct {v0, v9, v10, v11}, Lcom/amap/api/col/l3s/df;->a(Ljava/util/List;II)V

    goto :goto_1

    :cond_1
    instance-of v9, v7, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v9, :cond_2

    move-object v9, v7

    check-cast v9, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v10, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v10}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    invoke-direct {v0, v9}, Lcom/amap/api/col/l3s/df;->a(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    :cond_2
    :goto_1
    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/amap/api/col/l3s/df;->D:I

    if-lez v9, :cond_6

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/df;->a()V

    :cond_4
    if-eqz v8, :cond_5

    iget-object v10, v0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    const/4 v11, -0x1

    const/high16 v12, -0x1000000

    iget-object v13, v0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    iget v14, v0, Lcom/amap/api/col/l3s/df;->g:F

    iget-object v15, v0, Lcom/amap/api/col/l3s/df;->G:Ljava/nio/FloatBuffer;

    iget v7, v0, Lcom/amap/api/col/l3s/df;->D:I

    iget v8, v0, Lcom/amap/api/col/l3s/df;->E:I

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v18

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v19

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v20

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v21

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->x:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    invoke-virtual {v9}, Lcom/amap/api/maps/model/AMapPara$LineCapType;->getTypeValue()I

    move-result v22

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->w:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    invoke-virtual {v9}, Lcom/amap/api/maps/model/AMapPara$LineJoinType;->getTypeValue()I

    move-result v23

    iget-boolean v9, v0, Lcom/amap/api/col/l3s/df;->v:Z

    const/16 v25, 0x0

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v24, v9

    invoke-static/range {v10 .. v25}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[FIFFIIZZ)V

    goto :goto_2

    :cond_5
    instance-of v7, v7, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v7, :cond_6

    iget-object v8, v0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    const/16 v7, 0x50

    const/16 v9, 0xc8

    invoke-static {v9, v7, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-static {v9, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    iget-object v11, v0, Lcom/amap/api/col/l3s/df;->F:Ljava/nio/FloatBuffer;

    const/high16 v12, 0x40a00000    # 5.0f

    iget v13, v0, Lcom/amap/api/col/l3s/df;->D:I

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v14

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v15

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v16

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v17

    iget-boolean v9, v0, Lcom/amap/api/col/l3s/df;->v:Z

    const/16 v19, 0x0

    move/from16 v18, v9

    move v9, v7

    invoke-static/range {v8 .. v19}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FI[FFIFZZ)V

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v1, 0x205

    invoke-static {v1, v5, v3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glStencilMask(I)V

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v6

    double-to-int v1, v6

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/df;->c()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v3, :cond_11

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v5

    :goto_3
    add-int/lit8 v11, v8, -0x1

    if-ge v10, v11, :cond_c

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/autonavi/amap/mapcore/IPoint;

    iget v12, v11, Landroid/graphics/Point;->x:I

    iget v13, v9, Landroid/graphics/Point;->x:I

    sub-int v14, v12, v13

    int-to-float v14, v14

    iget v15, v0, Lcom/amap/api/col/l3s/df;->t:F

    cmpl-float v14, v14, v15

    if-gez v14, :cond_a

    sub-int/2addr v12, v13

    int-to-float v12, v12

    neg-float v13, v15

    cmpg-float v12, v12, v13

    if-lez v12, :cond_a

    iget v12, v11, Landroid/graphics/Point;->y:I

    iget v13, v9, Landroid/graphics/Point;->y:I

    sub-int v14, v12, v13

    int-to-float v14, v14

    cmpl-float v14, v14, v15

    if-gez v14, :cond_a

    sub-int/2addr v12, v13

    int-to-float v12, v12

    neg-float v13, v15

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_9

    goto :goto_4

    :cond_9
    move v12, v4

    goto :goto_5

    :cond_a
    :goto_4
    move v12, v5

    :goto_5
    if-eqz v12, :cond_b

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v11

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_c
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [F

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v9, v8, [Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v4

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/autonavi/amap/mapcore/IPoint;

    mul-int/lit8 v13, v10, 0x3

    iget v14, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v1

    int-to-float v14, v14

    aput v14, v2, v13

    add-int/lit8 v14, v13, 0x1

    iget v15, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v15, v6

    int-to-float v15, v15

    aput v15, v2, v14

    add-int/2addr v13, v3

    aput v12, v2, v13

    aput-object v11, v9, v10

    add-int/2addr v10, v5

    goto :goto_6

    :cond_d
    invoke-static {v9}, Lcom/amap/api/col/l3s/df;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    array-length v10, v7

    if-nez v10, :cond_f

    sget-wide v10, Lcom/amap/api/col/l3s/df;->H:D

    const-wide v13, 0x4202a05f20000000L    # 1.0E10

    cmpl-double v7, v10, v13

    if-nez v7, :cond_e

    const-wide v10, 0x4197d78400000000L    # 1.0E8

    sput-wide v10, Lcom/amap/api/col/l3s/df;->H:D

    goto :goto_7

    :cond_e
    sput-wide v13, Lcom/amap/api/col/l3s/df;->H:D

    :goto_7
    invoke-static {v9}, Lcom/amap/api/col/l3s/df;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    :cond_f
    array-length v9, v7

    mul-int/lit8 v9, v9, 0x3

    new-array v9, v9, [F

    array-length v10, v7

    move v11, v4

    :goto_8
    if-ge v4, v10, :cond_10

    aget-object v13, v7, v4

    mul-int/lit8 v14, v11, 0x3

    iget v15, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v15, v1

    int-to-float v15, v15

    aput v15, v9, v14

    add-int/lit8 v15, v14, 0x1

    iget v13, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v13, v6

    int-to-float v13, v13

    aput v13, v9, v15

    add-int/2addr v14, v3

    aput v12, v9, v14

    add-int/2addr v11, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_10
    iput v8, v0, Lcom/amap/api/col/l3s/df;->q:I

    array-length v1, v7

    iput v1, v0, Lcom/amap/api/col/l3s/df;->r:I

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/df;->o:Ljava/nio/FloatBuffer;

    invoke-static {v9}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/df;->p:Ljava/nio/FloatBuffer;

    :cond_11
    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->o:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->p:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_14

    iget v1, v0, Lcom/amap/api/col/l3s/df;->q:I

    if-lez v1, :cond_14

    iget v1, v0, Lcom/amap/api/col/l3s/df;->r:I

    if-lez v1, :cond_14

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/df;->a()V

    :cond_13
    iget-object v6, v0, Lcom/amap/api/col/l3s/df;->z:Lcom/amap/api/col/l3s/dl$e;

    iget v7, v0, Lcom/amap/api/col/l3s/df;->h:I

    iget v8, v0, Lcom/amap/api/col/l3s/df;->i:I

    iget-object v9, v0, Lcom/amap/api/col/l3s/df;->o:Ljava/nio/FloatBuffer;

    iget v10, v0, Lcom/amap/api/col/l3s/df;->g:F

    iget-object v11, v0, Lcom/amap/api/col/l3s/df;->p:Ljava/nio/FloatBuffer;

    iget v12, v0, Lcom/amap/api/col/l3s/df;->q:I

    iget v13, v0, Lcom/amap/api/col/l3s/df;->r:I

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v14

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v15

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v17

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->x:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/AMapPara$LineCapType;->getTypeValue()I

    move-result v18

    iget-object v1, v0, Lcom/amap/api/col/l3s/df;->w:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/AMapPara$LineJoinType;->getTypeValue()I

    move-result v19

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/df;->v:Z

    const/16 v21, 0x1

    move/from16 v20, v1

    invoke-static/range {v6 .. v21}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[FIFFIIZZ)V

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/df;->b()V

    iput-boolean v5, v0, Lcom/amap/api/col/l3s/df;->s:Z

    :cond_15
    :goto_9
    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/df;->getId()Ljava/lang/String;

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

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/df;->h:I

    return p0
.end method

.method public final getHoleOptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    return-object p0
.end method

.method public final getHoles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const-string v1, "Polygon"

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/df;->f:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->k:Ljava/util/List;

    return-object p0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/df;->i:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/df;->g:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/df;->c:F

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

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/df;->s:Z

    return p0
.end method

.method public final isGeodesic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/df;->e:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/df;->d:Z

    return p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/df;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/df;->h:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setGeodesic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/df;->e:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setHoleOptions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/df;->n:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_3

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v3, v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/df;->a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    :goto_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    instance-of v3, v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/df;->b(Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    const-string v1, "PolygonDelegateImp"

    const-string v2, "setHoleOptions"

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setHoles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/l3s/df;->j:Ljava/util/List;

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/df;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/df;->k:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v4, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget-object v6, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-wide v7, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v9, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v11, v3

    invoke-interface/range {v6 .. v11}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6, v3}, Lcom/amap/api/col/l3s/ex;->b(Landroid/graphics/Rect;II)V

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-object v3, v4

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v4, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    if-ne v4, v5, :cond_3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->o:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->p:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_6
    iput v2, p0, Lcom/amap/api/col/l3s/df;->q:I

    iput v2, p0, Lcom/amap/api/col/l3s/df;->r:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->n:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/df;->setHoleOptions(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/df;->i:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/df;->g:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/df;->d:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/df;->c:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/df;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
