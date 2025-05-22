.class public final Lcom/amap/api/col/l3s/cx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/ICircleDelegate;


# static fields
.field private static A:I = 0x100

.field private static B:I = 0x14

.field private static C:D = 1.0E10

.field private static v:Ljava/lang/Object; = null

.field private static z:F = 4.0075016E7f


# instance fields
.field a:F

.field private b:Lcom/amap/api/maps/model/LatLng;

.field private c:D

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private k:Ljava/nio/FloatBuffer;

.field private l:I

.field private m:Z

.field private n:Lcom/autonavi/amap/mapcore/IPoint;

.field private o:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:Ljava/nio/FloatBuffer;

.field private u:Ljava/nio/FloatBuffer;

.field private w:I

.field private x:Z

.field private y:Lcom/amap/api/col/l3s/dl$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/cx;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->b:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cx;->c:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/col/l3s/cx;->d:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/col/l3s/cx;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/cx;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3s/cx;->g:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/cx;->h:Z

    iput v0, p0, Lcom/amap/api/col/l3s/cx;->l:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cx;->m:Z

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/cx;->n:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 v2, -0x1

    iput v2, p0, Lcom/amap/api/col/l3s/cx;->w:I

    iput v1, p0, Lcom/amap/api/col/l3s/cx;->a:F

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cx;->x:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cx;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cx;->i:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CircleDelegateImp"

    const-string v0, "create"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private static a(D)F
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    sget v0, Lcom/amap/api/col/l3s/cx;->z:F

    float-to-double v0, v0

    mul-double/2addr p0, v0

    sget v0, Lcom/amap/api/col/l3s/cx;->A:I

    sget v1, Lcom/amap/api/col/l3s/cx;->B:I

    shl-int/2addr v0, v1

    int-to-double v0, v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
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

    iget-object v4, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/col/l3s/dk;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/dl$e;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    :cond_0
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
    invoke-static {v3}, Lcom/amap/api/col/l3s/cx;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    array-length v5, p1

    if-nez v5, :cond_3

    sget-wide v5, Lcom/amap/api/col/l3s/cx;->C:D

    const-wide v8, 0x4202a05f20000000L    # 1.0E10

    cmpl-double p1, v5, v8

    if-nez p1, :cond_2

    const-wide v5, 0x4197d78400000000L    # 1.0E8

    sput-wide v5, Lcom/amap/api/col/l3s/cx;->C:D

    goto :goto_1

    :cond_2
    sput-wide v8, Lcom/amap/api/col/l3s/cx;->C:D

    :goto_1
    invoke-static {v3}, Lcom/amap/api/col/l3s/cx;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

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
    iput v2, p0, Lcom/amap/api/col/l3s/cx;->r:I

    array-length p1, p1

    iput p1, p0, Lcom/amap/api/col/l3s/cx;->s:I

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cx;->u:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cx;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cx;->getRadius()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-double/2addr v3, p0

    cmpg-double p0, v1, v3

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "CircleDelegateImp"

    const-string v1, "isCircleInCircle"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z
    .locals 3

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

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/cx;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "CircleDelegateImp"

    const-string v1, "isPolygonInCircle"

    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v0
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

    sget-wide v7, Lcom/amap/api/col/l3s/cx;->C:D

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

    sget-wide v7, Lcom/amap/api/col/l3s/cx;->C:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/et;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/col/l3s/cx;->C:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/cx;->l:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->k:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->q:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/cx;->setHoleOptions(Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/amap/api/maps/model/CircleHoleOptions;)V
    .locals 13

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/16 v2, 0x43e

    new-array v2, v2, [F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Lcom/amap/api/col/l3s/cx;->a(D)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v5, v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v3

    mul-double/2addr v5, v3

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iput p1, v1, Landroid/graphics/PointF;->x:F

    iget p1, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iput p1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 p1, 0x2

    const/4 v3, 0x0

    aput v3, v2, p1

    :goto_0
    const/16 v7, 0x169

    if-ge v4, v7, :cond_0

    int-to-double v7, v4

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    add-double/2addr v11, v9

    double-to-int v9, v11

    iget v10, v0, Landroid/graphics/Point;->y:I

    int-to-double v10, v10

    add-double/2addr v10, v7

    double-to-int v7, v10

    iget-object v8, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v10

    double-to-int v8, v10

    sub-int/2addr v9, v8

    int-to-float v8, v9

    iput v8, v1, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, v1, Landroid/graphics/PointF;->y:F

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v8, v4, 0x3

    iget v9, v1, Landroid/graphics/PointF;->x:F

    aput v9, v2, v8

    add-int/lit8 v9, v8, 0x1

    aput v7, v2, v9

    add-int/2addr v8, p1

    aput v3, v2, v8

    goto :goto_0

    :cond_0
    const/16 p1, 0x16a

    iput p1, p0, Lcom/amap/api/col/l3s/cx;->r:I

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cx;->x:Z

    return-void
.end method

.method public final calMapFPoint()Z
    .locals 14

    sget-object v0, Lcom/amap/api/col/l3s/cx;->v:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/cx;->m:Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/cx;->b:Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v2, 0x43e

    new-array v2, v2, [F

    iget-object v4, p0, Lcom/amap/api/col/l3s/cx;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/cx;->a(D)F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v6, v4

    iget-wide v4, p0, Lcom/amap/api/col/l3s/cx;->c:D

    mul-double/2addr v6, v4

    iget-object v4, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    iget-object v4, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v5, p0, Lcom/amap/api/col/l3s/cx;->n:Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v5, p0, Lcom/amap/api/col/l3s/cx;->n:Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v2, v1

    iget-object v4, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v4, v2, v5

    :goto_0
    const/16 v5, 0x169

    if-ge v1, v5, :cond_0

    int-to-double v8, v1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    iget-object v5, p0, Lcom/amap/api/col/l3s/cx;->n:Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v12, v5

    add-double/2addr v12, v10

    double-to-int v5, v12

    iget-object v10, p0, Lcom/amap/api/col/l3s/cx;->n:Lcom/autonavi/amap/mapcore/IPoint;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-double v10, v10

    add-double/2addr v10, v8

    double-to-int v8, v10

    iget-object v9, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v10, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v10}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v10

    double-to-int v10, v10

    sub-int/2addr v5, v10

    int-to-float v5, v5

    iput v5, v9, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget-object v9, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v5, Landroid/graphics/PointF;->y:F

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v5, v1, 0x3

    iget-object v8, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    aput v8, v2, v5

    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Lcom/amap/api/col/l3s/cx;->o:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    aput v9, v2, v8

    add-int/lit8 v5, v5, 0x2

    aput v4, v2, v5

    goto :goto_0

    :cond_0
    const/16 v1, 0x16a

    iput v1, p0, Lcom/amap/api/col/l3s/cx;->l:I

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/cx;->k:Ljava/nio/FloatBuffer;

    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkInBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    invoke-static {v2, p1}, Lcom/amap/api/col/l3s/ex;->a(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/amap/api/col/l3s/cx;->c:D

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->b:Lcom/amap/api/maps/model/LatLng;

    invoke-static {p0, p1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result p0

    float-to-double p0, p0

    cmpl-double p0, v2, p0

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->b:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->k:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->k:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->u:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->u:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->u:Ljava/nio/FloatBuffer;

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->q:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3s/cx;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_4
    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->q:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "CircleDelegateImp"

    const-string v1, "destroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "destroy erro"

    const-string v0, "CircleDelegateImp destroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/col/l3s/cx;->b:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_19

    iget-wide v1, v0, Lcom/amap/api/col/l3s/cx;->c:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_19

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/cx;->h:Z

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/cx;->calMapFPoint()Z

    iget-object v1, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    const/16 v3, 0xb90

    const/16 v4, 0x400

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-static {v6}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v2, 0xff

    invoke-static {v2}, Landroid/opengl/GLES20;->glStencilMask(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v7, 0x200

    invoke-static {v7, v5, v2}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/16 v7, 0x1e01

    const/16 v8, 0x1e00

    invoke-static {v7, v8, v8}, Landroid/opengl/GLES20;->glStencilOp(III)V

    move v7, v6

    :goto_0
    iget-object v8, v0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget-object v8, v0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v9, v8, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v9, :cond_1

    move-object v10, v8

    check-cast v10, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v10}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/amap/api/col/l3s/cx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v11

    double-to-int v11, v11

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v12

    double-to-int v12, v12

    invoke-direct {v0, v10, v11, v12}, Lcom/amap/api/col/l3s/cx;->a(Ljava/util/List;II)V

    goto :goto_1

    :cond_1
    instance-of v10, v8, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v10, :cond_2

    move-object v10, v8

    check-cast v10, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v11, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v11}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    invoke-direct {v0, v10}, Lcom/amap/api/col/l3s/cx;->b(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    :cond_2
    :goto_1
    iget-object v10, v0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/amap/api/col/l3s/cx;->r:I

    if-lez v10, :cond_6

    iget-object v10, v0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/cx;->a()V

    :cond_4
    if-eqz v9, :cond_5

    iget-object v11, v0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    const/4 v12, -0x1

    iget v13, v0, Lcom/amap/api/col/l3s/cx;->f:I

    iget-object v14, v0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/cx;->getStrokeWidth()F

    move-result v15

    iget-object v8, v0, Lcom/amap/api/col/l3s/cx;->u:Ljava/nio/FloatBuffer;

    iget v9, v0, Lcom/amap/api/col/l3s/cx;->r:I

    iget v10, v0, Lcom/amap/api/col/l3s/cx;->s:I

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v19

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v20

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v21

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v22

    const/16 v23, 0x3

    const/16 v24, 0x0

    iget-boolean v3, v0, Lcom/amap/api/col/l3s/cx;->x:Z

    const/16 v26, 0x0

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v25, v3

    invoke-static/range {v11 .. v26}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[FIFFIIZZ)V

    goto :goto_2

    :cond_5
    instance-of v3, v8, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v3, :cond_6

    iget-object v8, v0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    const/4 v9, -0x1

    const/4 v10, -0x1

    iget-object v11, v0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    const/high16 v12, 0x41200000    # 10.0f

    iget v13, v0, Lcom/amap/api/col/l3s/cx;->r:I

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v14

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v15

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v16

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v17

    iget-boolean v3, v0, Lcom/amap/api/col/l3s/cx;->x:Z

    const/16 v19, 0x0

    move/from16 v18, v3

    invoke-static/range {v8 .. v19}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FI[FFIFZZ)V

    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/16 v3, 0xb90

    goto/16 :goto_0

    :cond_7
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v1, 0x205

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glStencilMask(I)V

    :cond_8
    iget-object v1, v0, Lcom/amap/api/col/l3s/cx;->k:Ljava/nio/FloatBuffer;

    const/4 v2, -0x1

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/amap/api/col/l3s/cx;->l:I

    if-lez v1, :cond_f

    iget-object v1, v0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/cx;->a()V

    :cond_a
    iget-object v1, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v1

    iput v1, v0, Lcom/amap/api/col/l3s/cx;->a:F

    iget-object v1, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v3, v0, Lcom/amap/api/col/l3s/cx;->w:I

    invoke-interface {v1, v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getDottedLineTextureID(I)I

    move-result v1

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v1

    :cond_b
    move v15, v1

    iget v1, v0, Lcom/amap/api/col/l3s/cx;->w:I

    if-eq v1, v2, :cond_c

    move v1, v5

    goto :goto_3

    :cond_c
    move v1, v6

    :goto_3
    iget-object v7, v0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    iget v8, v0, Lcom/amap/api/col/l3s/cx;->f:I

    iget v9, v0, Lcom/amap/api/col/l3s/cx;->e:I

    iget-object v10, v0, Lcom/amap/api/col/l3s/cx;->k:Ljava/nio/FloatBuffer;

    iget v11, v0, Lcom/amap/api/col/l3s/cx;->d:F

    iget v12, v0, Lcom/amap/api/col/l3s/cx;->l:I

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v13

    iget v14, v0, Lcom/amap/api/col/l3s/cx;->a:F

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v16

    iget-boolean v3, v0, Lcom/amap/api/col/l3s/cx;->x:Z

    if-nez v3, :cond_e

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    move/from16 v17, v6

    goto :goto_5

    :cond_e
    :goto_4
    move/from16 v17, v5

    :goto_5
    const/16 v18, 0x1

    invoke-static/range {v7 .. v18}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;IILjava/nio/FloatBuffer;FI[FFIFZZ)V

    :cond_f
    invoke-static {v6}, Landroid/opengl/GLES20;->glClearStencil(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v1, 0xb90

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    iget-object v3, v0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    move v3, v6

    :goto_6
    iget-object v4, v0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_18

    iget-object v4, v0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v7, v4, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v7, :cond_10

    move-object v8, v4

    check-cast v8, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v8}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3s/cx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v10

    double-to-int v10, v10

    invoke-direct {v0, v8, v9, v10}, Lcom/amap/api/col/l3s/cx;->a(Ljava/util/List;II)V

    goto :goto_7

    :cond_10
    instance-of v8, v4, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v8, :cond_11

    move-object v8, v4

    check-cast v8, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v9, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3s/cx;->b(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    :cond_11
    :goto_7
    iget-object v8, v0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_17

    iget v8, v0, Lcom/amap/api/col/l3s/cx;->r:I

    if-lez v8, :cond_17

    iget-object v8, v0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Lcom/amap/api/col/l3s/dk;->b()Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/cx;->a()V

    :cond_13
    iget-boolean v8, v0, Lcom/amap/api/col/l3s/cx;->x:Z

    if-nez v8, :cond_15

    iget v8, v0, Lcom/amap/api/col/l3s/cx;->w:I

    if-eq v8, v2, :cond_14

    goto :goto_8

    :cond_14
    move v8, v6

    goto :goto_9

    :cond_15
    :goto_8
    move v8, v5

    :goto_9
    if-eqz v7, :cond_16

    iget-object v9, v0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    iget v10, v0, Lcom/amap/api/col/l3s/cx;->e:I

    iget-object v11, v0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    iget v12, v0, Lcom/amap/api/col/l3s/cx;->d:F

    iget v13, v0, Lcom/amap/api/col/l3s/cx;->r:I

    iget-object v4, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v14

    iget-object v4, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v15

    iget-object v4, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v16

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v17

    const/16 v18, 0x3

    const/16 v19, 0x0

    move/from16 v20, v8

    invoke-static/range {v9 .. v20}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[FIFFIIZ)V

    goto :goto_a

    :cond_16
    instance-of v4, v4, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v4, :cond_17

    iget-object v9, v0, Lcom/amap/api/col/l3s/cx;->y:Lcom/amap/api/col/l3s/dl$e;

    iget v10, v0, Lcom/amap/api/col/l3s/cx;->e:I

    iget-object v11, v0, Lcom/amap/api/col/l3s/cx;->t:Ljava/nio/FloatBuffer;

    iget v12, v0, Lcom/amap/api/col/l3s/cx;->d:F

    iget v13, v0, Lcom/amap/api/col/l3s/cx;->r:I

    iget-object v4, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v14

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v15

    iget-object v4, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureID()I

    move-result v16

    iget-object v4, v0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLineTextureRatio()F

    move-result v17

    move/from16 v18, v8

    invoke-static/range {v9 .. v18}, Lcom/amap/api/col/l3s/ef;->a(Lcom/amap/api/col/l3s/dl$e;ILjava/nio/FloatBuffer;FI[FFIFZ)V

    :cond_17
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_18
    iput-boolean v5, v0, Lcom/amap/api/col/l3s/cx;->m:Z

    :cond_19
    :goto_b
    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cx;->getId()Ljava/lang/String;

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

.method public final getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->b:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getDottedLineType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cx;->w:I

    return p0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cx;->f:I

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

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const-string v1, "Circle"

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->i:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/cx;->c:D

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cx;->e:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cx;->d:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/cx;->g:F

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

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cx;->m:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cx;->h:Z

    return p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setCenter(Lcom/amap/api/maps/model/LatLng;)V
    .locals 5

    sget-object v0, Lcom/amap/api/col/l3s/cx;->v:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/cx;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcom/amap/api/col/l3s/cx;->n:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cx;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDottedLineType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cx;->w:I

    return-void
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cx;->f:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setHoleOptions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/cx;->q:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v2, v1, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/cx;->a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    instance-of v2, v1, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/amap/api/maps/model/CircleHoleOptions;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/cx;->a(Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3s/cx;->p:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "PolygonDelegateImp"

    const-string v0, "setHoleOptions"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/cx;->c:D

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cx;->b()V

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cx;->e:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cx;->d:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/cx;->h:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/cx;->g:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/cx;->j:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
