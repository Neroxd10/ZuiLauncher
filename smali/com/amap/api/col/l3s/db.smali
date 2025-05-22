.class public final Lcom/amap/api/col/l3s/db;
.super Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
.source ""

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;
.implements Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;


# static fields
.field private static i:I


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:Lcom/amap/api/maps/model/MarkerOptions;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private O:Landroid/graphics/Point;

.field private P:F

.field private Q:F

.field private R:I

.field private S:I

.field private T:Lcom/amap/api/col/l3s/af;

.field private U:[Lcom/amap/api/col/l3s/af;

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Lcom/amap/api/maps/model/LatLng;

.field private Y:Lcom/amap/api/maps/model/LatLng;

.field private Z:Ljava/lang/String;

.field a:[F

.field private aa:Ljava/lang/String;

.field private ab:F

.field private ac:F

.field private ad:Z

.field private ae:Z

.field private af:Lcom/amap/api/col/l3s/ad;

.field private ag:Ljava/lang/Object;

.field private ah:Z

.field private ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:I

.field private ao:I

.field private ap:Z

.field private aq:I

.field private ar:I

.field private as:J

.field private at:F

.field private au:F

.field private av:F

.field private aw:F

.field b:[F

.field c:Landroid/graphics/Rect;

.field d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

.field e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

.field f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field g:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field h:Ljava/lang/Object;

.field private j:Z

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:F

.field private p:F

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private y:[F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/col/l3s/ad;)V
    .locals 5

    invoke-direct {p0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->l:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->m:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->n:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3s/db;->o:F

    iput v1, p0, Lcom/amap/api/col/l3s/db;->p:F

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->q:Z

    iput v0, p0, Lcom/amap/api/col/l3s/db;->r:I

    iput v0, p0, Lcom/amap/api/col/l3s/db;->s:I

    iput v0, p0, Lcom/amap/api/col/l3s/db;->t:I

    iput v0, p0, Lcom/amap/api/col/l3s/db;->u:I

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/16 v2, 0x24

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iput v1, p0, Lcom/amap/api/col/l3s/db;->z:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/amap/api/col/l3s/db;->A:F

    iput v1, p0, Lcom/amap/api/col/l3s/db;->B:F

    iput v1, p0, Lcom/amap/api/col/l3s/db;->C:F

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->E:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->F:Z

    const/4 v3, 0x5

    iput v3, p0, Lcom/amap/api/col/l3s/db;->G:I

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->H:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->I:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->J:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->K:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->L:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->M:Z

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3s/db;->N:Lcom/autonavi/base/amap/mapcore/FPoint;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/l3s/db;->O:Landroid/graphics/Point;

    iput v0, p0, Lcom/amap/api/col/l3s/db;->R:I

    iput v0, p0, Lcom/amap/api/col/l3s/db;->S:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->V:Z

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lcom/amap/api/col/l3s/db;->ab:F

    iput v1, p0, Lcom/amap/api/col/l3s/db;->ac:F

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ad:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->ae:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ah:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->aj:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ak:Z

    iput-object v3, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iput-object v3, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->al:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->am:Z

    iput v0, p0, Lcom/amap/api/col/l3s/db;->an:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/amap/api/col/l3s/db;->ao:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/db;->as:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->h:Ljava/lang/Object;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amap/api/col/l3s/db;->at:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/db;->au:F

    iput v1, p0, Lcom/amap/api/col/l3s/db;->av:F

    iput v0, p0, Lcom/amap/api/col/l3s/db;->aw:F

    iput-object p2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/db;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(DD)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    double-to-int p1, p1

    double-to-int p2, p3

    invoke-interface {v1, p1, p2, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/db;->a(II)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    return-void

    :cond_0
    double-to-int p1, p1

    double-to-int p2, p3

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/db;->a(II)V

    return-void
.end method

.method private a(II)V
    .locals 7

    iput p1, p0, Lcom/amap/api/col/l3s/db;->v:I

    iput p2, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    iget p2, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget v0, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-static {p2, v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    iget-object p2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, p0, Lcom/amap/api/col/l3s/db;->w:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->y:F

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 8

    instance-of v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/db;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/l3s/db;->aq:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iget v0, p0, Lcom/amap/api/col/l3s/db;->ar:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    iget-wide v5, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getLatLng2Pixel(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, p0

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, p0

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/col/l3s/db;->v:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iget p0, p0, Lcom/amap/api/col/l3s/db;->w:I

    int-to-double v0, p0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-static {v0, v1, v2, v3, p0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget v0, p0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->a()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->R:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/db;->S:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 8

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->M:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/db;->al:Z

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget v4, p0, Lcom/amap/api/col/l3s/db;->A:F

    float-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    iget v4, p0, Lcom/amap/api/col/l3s/db;->B:F

    float-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    iget v4, p0, Lcom/amap/api/col/l3s/db;->o:F

    float-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    iget v4, p0, Lcom/amap/api/col/l3s/db;->w:I

    int-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    iget v4, p0, Lcom/amap/api/col/l3s/db;->v:I

    int-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iget v4, p0, Lcom/amap/api/col/l3s/db;->C:F

    float-to-double v4, v4

    iput-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/db;->al:Z

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-nez v2, :cond_2

    new-instance v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-virtual {v2, v4, v5, v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    double-to-float v2, v4

    iput v2, p0, Lcom/amap/api/col/l3s/db;->A:F

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    double-to-float v2, v4

    iput v2, p0, Lcom/amap/api/col/l3s/db;->B:F

    :cond_3
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    double-to-float v2, v4

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/db;->setRotateAngle(F)V

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/amap/api/col/l3s/db;->a(DD)V

    :cond_5
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    double-to-float v2, v4

    iput v2, p0, Lcom/amap/api/col/l3s/db;->C:F

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->n:Z

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/db;->am:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_9

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    :goto_0
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/col/l3s/db;->A:F

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    double-to-float v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/db;->B:F

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_b

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/amap/api/col/l3s/db;->A:F

    float-to-double v2, v0

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_a

    iget v2, p0, Lcom/amap/api/col/l3s/db;->B:F

    float-to-double v2, v2

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    goto :goto_0

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_c

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    double-to-float v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/db;->setRotateAngle(F)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_d

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/amap/api/col/l3s/db;->o:F

    float-to-double v2, v0

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_d

    double-to-float v0, v4

    goto :goto_2

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_e

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    :goto_4
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/amap/api/col/l3s/db;->a(DD)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_10

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/amap/api/col/l3s/db;->v:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_f

    iget v2, p0, Lcom/amap/api/col/l3s/db;->w:I

    int-to-double v2, v2

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    goto :goto_4

    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_11

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    double-to-float v0, v2

    :goto_6
    iput v0, p0, Lcom/amap/api/col/l3s/db;->C:F

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    if-eqz v0, :cond_12

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/amap/api/col/l3s/db;->C:F

    float-to-double v2, v0

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_12

    double-to-float v0, v4

    goto :goto_6

    :cond_12
    :goto_7
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->M:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->d:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->e:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_13

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->am:Z

    :cond_13
    return-void
.end method

.method private static d()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    return v0
.end method


# virtual methods
.method public final anchorUVoff()Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 3

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/col/l3s/db;->ab:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/amap/api/col/l3s/db;->ac:F

    mul-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    return-object v0
.end method

.method public final calFPoint()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    :cond_1
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/col/l3s/db;->aq:I

    iget v4, p0, Lcom/amap/api/col/l3s/db;->ar:I

    invoke-interface {v2, v3, v4, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget v3, p0, Lcom/amap/api/col/l3s/db;->w:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final checkInBounds()Z
    .locals 7

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->M:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->O:Landroid/graphics/Point;

    iget v2, p0, Lcom/amap/api/col/l3s/db;->v:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->O:Landroid/graphics/Point;

    iget v2, p0, Lcom/amap/api/col/l3s/db;->w:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    iget v2, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget v3, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/amap/api/col/l3s/db;->P:F

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/amap/api/col/l3s/db;->Q:F

    :cond_3
    iget v2, p0, Lcom/amap/api/col/l3s/db;->A:F

    iget v3, p0, Lcom/amap/api/col/l3s/db;->P:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/amap/api/col/l3s/db;->B:F

    iget v4, p0, Lcom/amap/api/col/l3s/db;->Q:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/amap/api/col/l3s/db;->v:I

    int-to-float v4, v4

    int-to-float v5, v2

    iget v6, p0, Lcom/amap/api/col/l3s/db;->ab:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/amap/api/col/l3s/db;->w:I

    int-to-float v5, v5

    int-to-float v6, v3

    iget p0, p0, Lcom/amap/api/col/l3s/db;->ac:F

    mul-float/2addr v6, p0

    sub-float/2addr v5, v6

    float-to-int p0, v5

    invoke-virtual {v0, v4, p0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, v4, p0, v2, v3}, Lcom/autonavi/base/amap/mapcore/Rectangle;->isOverlap(IIII)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    return v1

    :catchall_0
    move-exception p0

    const-string v0, "MarkerDelegateImp"

    const-string v1, "checkInBounds"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/db;->destroy(Z)V

    return-void
.end method

.method public final destroy(Z)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->V:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->remove()Z

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/col/l3s/af;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->ag:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "MarkerDelegateImp"

    const-string v0, "destroy"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "destroy erro"

    const-string p1, "MarkerDelegateImp destroy"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 0

    return-void
.end method

.method public final drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V
    .locals 11

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->V:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->l:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amap/api/col/l3s/db;->as:J

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->l:Z

    :cond_4
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->I:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget v3, p0, Lcom/amap/api/col/l3s/db;->aq:I

    iget v4, p0, Lcom/amap/api/col/l3s/db;->ar:I

    invoke-interface {p1, v3, v4, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v3, p0, Lcom/amap/api/col/l3s/db;->v:I

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x4d000000    # 1.3421773E8f

    cmpl-float v0, v0, v3

    const/high16 v3, 0x4d800000

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v3

    iput v4, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v4, -0x33000000

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v3

    iput v4, v0, Landroid/graphics/PointF;->x:F

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v3, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->c()V

    iget v4, p0, Lcom/amap/api/col/l3s/db;->A:F

    int-to-float v0, v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iget v4, p0, Lcom/amap/api/col/l3s/db;->B:F

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v3, v4

    int-to-float v0, v0

    mul-float/2addr v0, p4

    int-to-float v3, v3

    mul-float/2addr v3, p4

    iget-object p4, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget p4, p4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v5

    iget v6, p0, Lcom/amap/api/col/l3s/db;->o:F

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c

    iget-boolean v7, p0, Lcom/amap/api/col/l3s/db;->j:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    array-length v7, v7

    iget v8, p0, Lcom/amap/api/col/l3s/db;->o:F

    iget v9, p0, Lcom/amap/api/col/l3s/db;->k:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    if-le v8, v7, :cond_8

    move v8, v1

    goto :goto_3

    :cond_8
    iget v6, p0, Lcom/amap/api/col/l3s/db;->o:F

    iget v9, p0, Lcom/amap/api/col/l3s/db;->k:F

    rem-float/2addr v6, v9

    :goto_3
    add-int/2addr v8, v7

    rem-int/2addr v8, v7

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    goto :goto_4

    :cond_9
    iget v7, p0, Lcom/amap/api/col/l3s/db;->an:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/amap/api/col/l3s/db;->an:I

    iget v7, p0, Lcom/amap/api/col/l3s/db;->ao:I

    iget-object v8, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/amap/api/col/l3s/db;->an:I

    if-lt v8, v7, :cond_a

    iput v1, p0, Lcom/amap/api/col/l3s/db;->an:I

    :cond_a
    iget v7, p0, Lcom/amap/api/col/l3s/db;->ao:I

    if-nez v7, :cond_b

    iput v2, p0, Lcom/amap/api/col/l3s/db;->ao:I

    :cond_b
    iget v7, p0, Lcom/amap/api/col/l3s/db;->an:I

    iget v8, p0, Lcom/amap/api/col/l3s/db;->ao:I

    div-int/2addr v7, v8

    iget-object v8, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    aget-object v7, v8, v7

    iput-object v7, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    iget-boolean v7, p0, Lcom/amap/api/col/l3s/db;->am:Z

    if-nez v7, :cond_c

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    :cond_c
    :goto_4
    iget-boolean v7, p0, Lcom/amap/api/col/l3s/db;->q:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_d

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p1

    sub-float/2addr v6, p1

    move v5, v8

    :cond_d
    iget p1, p0, Lcom/amap/api/col/l3s/db;->C:F

    cmpg-float v7, p1, v8

    if-gez v7, :cond_e

    goto :goto_5

    :cond_e
    move v8, p1

    :goto_5
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v7, v8, p1

    if-lez v7, :cond_f

    move v8, p1

    :cond_f
    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget v9, p0, Lcom/amap/api/col/l3s/db;->ab:F

    mul-float/2addr v9, v0

    sub-float v9, p4, v9

    aput v9, v7, v1

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget v9, p0, Lcom/amap/api/col/l3s/db;->ac:F

    sub-float v9, p1, v9

    mul-float/2addr v9, v3

    add-float/2addr v9, v4

    aput v9, v7, v2

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/4 v9, 0x2

    aput p4, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/4 v9, 0x3

    aput v4, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/4 v9, 0x6

    aput v6, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/4 v9, 0x7

    aput v5, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0x8

    aput v8, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0x9

    iget v10, p0, Lcom/amap/api/col/l3s/db;->ab:F

    sub-float v10, p1, v10

    mul-float/2addr v10, v0

    add-float/2addr v10, p4

    aput v10, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0xa

    iget v10, p0, Lcom/amap/api/col/l3s/db;->ac:F

    sub-float v10, p1, v10

    mul-float/2addr v10, v3

    add-float/2addr v10, v4

    aput v10, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0xb

    aput p4, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0xc

    aput v4, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0xf

    aput v6, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0x10

    aput v5, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0x11

    aput v8, v7, v9

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v9, 0x12

    iget v10, p0, Lcom/amap/api/col/l3s/db;->ab:F

    sub-float/2addr p1, v10

    mul-float/2addr p1, v0

    add-float/2addr p1, p4

    aput p1, v7, v9

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v7, 0x13

    iget v9, p0, Lcom/amap/api/col/l3s/db;->ac:F

    mul-float/2addr v9, v3

    sub-float v9, v4, v9

    aput v9, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v7, 0x14

    aput p4, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v7, 0x15

    aput v4, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v7, 0x18

    aput v6, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v7, 0x19

    aput v5, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v7, 0x1a

    aput v8, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v7, 0x1b

    iget v9, p0, Lcom/amap/api/col/l3s/db;->ab:F

    mul-float/2addr v0, v9

    sub-float v0, p4, v0

    aput v0, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v0, 0x1c

    iget v7, p0, Lcom/amap/api/col/l3s/db;->ac:F

    mul-float/2addr v3, v7

    sub-float v3, v4, v3

    aput v3, p1, v0

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 v0, 0x1d

    aput p4, p1, v0

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 p4, 0x1e

    aput v4, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 p4, 0x21

    aput v6, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 p4, 0x22

    aput v5, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    const/16 p4, 0x23

    aput v8, p1, p4

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/db;->J:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/db;->am:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_12

    :cond_10
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/af;->a()Z

    move-result p1

    const/16 p4, 0x20

    const/16 v0, 0x1f

    const/16 v3, 0x17

    const/16 v4, 0x16

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v9, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v9}, Lcom/amap/api/col/l3s/af;->e()F

    move-result v9

    aput v9, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v8, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v8}, Lcom/amap/api/col/l3s/af;->d()F

    move-result v8

    aput v8, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->c()F

    move-result v7

    aput v7, p1, v6

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v6, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/af;->d()F

    move-result v6

    aput v6, p1, v5

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v5, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/af;->c()F

    move-result v5

    aput v5, p1, v4

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v4, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/af;->f()F

    move-result v4

    aput v4, p1, v3

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v3, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->e()F

    move-result v3

    aput v3, p1, v0

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/af;->f()F

    move-result v0

    aput v0, p1, p4

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v9, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v9}, Lcom/amap/api/col/l3s/af;->h()F

    move-result v9

    aput v9, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v8, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v8}, Lcom/amap/api/col/l3s/af;->j()F

    move-result v8

    aput v8, p1, v7

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v7, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->i()F

    move-result v7

    aput v7, p1, v6

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v6, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/af;->j()F

    move-result v6

    aput v6, p1, v5

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v5, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/af;->i()F

    move-result v5

    aput v5, p1, v4

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v4, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/af;->g()F

    move-result v4

    aput v4, p1, v3

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v3, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->h()F

    move-result v3

    aput v3, p1, v0

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/af;->g()F

    move-result v0

    aput v0, p1, p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->J:Z

    :cond_12
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    array-length p1, p1

    if-lez p1, :cond_13

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->y:[F

    iget-object p4, p0, Lcom/amap/api/col/l3s/db;->y:[F

    array-length p4, p4

    invoke-static {p1, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/db;->n:Z

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->isInfoWindowShown()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->redrawInfoWindow()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/amap/api/col/l3s/db;->as:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    cmp-long p1, p1, p3

    if-lez p1, :cond_14

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_14
    return-void

    :catchall_1
    move-exception p0

    const-string p1, "MarkerDelegateImp"

    const-string p2, "drawMarker"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getId()Ljava/lang/String;

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

.method public final getAlpha()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->C:F

    return p0
.end method

.method public final getAnchor()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-nez v0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget p0, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-virtual {v2, v3, p0, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    iget p0, v0, Landroid/graphics/PointF;->x:F

    float-to-int p0, p0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public final getAnchorU()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->ab:F

    return p0
.end method

.method public final getAnchorV()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->ac:F

    return p0
.end method

.method public final declared-synchronized getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->a()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    const-string v2, "MarkerDelegateImp"

    const-string v3, "getBitmapDescriptor"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDisplayLevel()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->G:I

    return p0
.end method

.method public final getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 3

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3s/db;->aq:I

    iget p0, p0, Lcom/amap/api/col/l3s/db;->ar:I

    invoke-interface {v1, v2, p0, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    return-object v0

    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget p0, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method

.method public final getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/amap/api/col/l3s/db;->S:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getIAnimation()Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;
    .locals 0

    return-object p0
.end method

.method public final getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized getIcons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->W:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/amap/api/col/l3s/db;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/l3s/db;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/col/l3s/db;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->W:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->W:Ljava/lang/String;

    return-object p0
.end method

.method public final getInfoWindowOffsetX()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->r:I

    return p0
.end method

.method public final getInfoWindowOffsetY()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->s:I

    return p0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->ag:Ljava/lang/Object;

    return-object p0
.end method

.method public final getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    return-object p0
.end method

.method public final getPeriod()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->ao:I

    return p0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->calFPoint()Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-interface {v2, v3, p0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget p0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v2, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getRealInfoWindowOffsetX()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->t:I

    return p0
.end method

.method public final getRealInfoWindowOffsetY()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->u:I

    return p0
.end method

.method public final getRealPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3s/db;->aq:I

    iget p0, p0, Lcom/amap/api/col/l3s/db;->ar:I

    invoke-interface {v1, v2, p0, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->aj:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->Y:Lcom/amap/api/maps/model/LatLng;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "MarkerDelegateImp"

    const-string v1, "getRealPosition"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRect()Landroid/graphics/Rect;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/col/l3s/db;->y:[F

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/db;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/db;->getHeight()I

    move-result v4

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    iget-boolean v6, v0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz v6, :cond_2

    iget v1, v0, Lcom/amap/api/col/l3s/db;->aq:I

    int-to-float v1, v1

    iput v1, v5, Landroid/graphics/PointF;->x:F

    iget v1, v0, Lcom/amap/api/col/l3s/db;->ar:I

    int-to-float v1, v1

    iput v1, v5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_2
    iget v6, v0, Lcom/amap/api/col/l3s/db;->v:I

    iget v7, v0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-virtual {v1, v6, v7, v5}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    :goto_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/db;->a:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->a:[F

    const/4 v7, 0x0

    iget v1, v0, Lcom/amap/api/col/l3s/db;->o:F

    neg-float v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-boolean v1, v0, Lcom/amap/api/col/l3s/db;->q:Z

    if-eqz v1, :cond_3

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->a:[F

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v12, v0, Lcom/amap/api/col/l3s/db;->a:[F

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_3
    const/4 v1, 0x4

    new-array v1, v1, [F

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    neg-int v7, v3

    int-to-float v12, v7

    iget v7, v0, Lcom/amap/api/col/l3s/db;->ab:F

    mul-float/2addr v7, v12

    aput v7, v6, v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    int-to-float v13, v4

    iget v7, v0, Lcom/amap/api/col/l3s/db;->ac:F

    mul-float/2addr v7, v13

    const/4 v14, 0x1

    aput v7, v6, v14

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v15, v6, v16

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    const/16 v17, 0x3

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v6, v17

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/db;->a:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/db;->b:[F

    const/4 v11, 0x0

    move-object v6, v1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aget v8, v1, v2

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    aget v9, v1, v14

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/PointF;->x:F

    aget v10, v1, v2

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v5, Landroid/graphics/PointF;->y:F

    aget v11, v1, v14

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    int-to-float v3, v3

    iget v7, v0, Lcom/amap/api/col/l3s/db;->ab:F

    sub-float v7, v18, v7

    mul-float/2addr v7, v3

    aput v7, v6, v2

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    iget v7, v0, Lcom/amap/api/col/l3s/db;->ac:F

    mul-float/2addr v13, v7

    aput v13, v6, v14

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    aput v15, v6, v16

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    aput v18, v6, v17

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/db;->a:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/db;->b:[F

    const/4 v11, 0x0

    move-object v6, v1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aget v8, v1, v2

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    aget v9, v1, v14

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->union(II)V

    iget-object v6, v0, Lcom/amap/api/col/l3s/db;->b:[F

    iget v7, v0, Lcom/amap/api/col/l3s/db;->ab:F

    sub-float v7, v18, v7

    mul-float/2addr v3, v7

    aput v3, v6, v2

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->b:[F

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Lcom/amap/api/col/l3s/db;->ac:F

    sub-float v6, v18, v6

    mul-float/2addr v6, v4

    aput v6, v3, v14

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->b:[F

    aput v15, v3, v16

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->b:[F

    aput v18, v3, v17

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/db;->a:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/db;->b:[F

    const/4 v11, 0x0

    move-object v6, v1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    aget v7, v1, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/PointF;->y:F

    aget v8, v1, v14

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->union(II)V

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->b:[F

    iget v6, v0, Lcom/amap/api/col/l3s/db;->ab:F

    mul-float/2addr v12, v6

    aput v12, v3, v2

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->b:[F

    iget v6, v0, Lcom/amap/api/col/l3s/db;->ac:F

    sub-float v6, v18, v6

    mul-float/2addr v4, v6

    aput v4, v3, v14

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->b:[F

    aput v15, v3, v16

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->b:[F

    aput v18, v3, v17

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3s/db;->a:[F

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/amap/api/col/l3s/db;->b:[F

    const/4 v11, 0x0

    move-object v6, v1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v3, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/PointF;->x:F

    aget v6, v1, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v6, v5, Landroid/graphics/PointF;->y:F

    aget v1, v1, v14

    sub-float/2addr v6, v1

    float-to-int v1, v6

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Rect;->union(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v3, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/amap/api/col/l3s/db;->t:I

    iget-object v1, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v3, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/amap/api/col/l3s/db;->u:I

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    iget-object v0, v0, Lcom/amap/api/col/l3s/db;->c:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v3, "getRect"

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getRotateAngle()F
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    iget p0, p0, Lcom/amap/api/col/l3s/db;->p:F

    return p0
.end method

.method public final getScreenPosition()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/db;->aq:I

    iget p0, p0, Lcom/amap/api/col/l3s/db;->ar:I

    invoke-static {v0, p0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    return-object p0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->aa:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextureId()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->T:Lcom/amap/api/col/l3s/af;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/af;->l()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->Z:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/amap/api/col/l3s/db;->R:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/db;->z:F

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final hideInfoWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->isInfoWindowShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ad;->b(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->m:Z

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->n:Z

    return-void
.end method

.method public final isAllowLow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->am:Z

    return p0
.end method

.method public final isBelowMaskLayer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->K:Z

    return p0
.end method

.method public final isClickable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->H:Z

    return p0
.end method

.method public final isContains()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ad;->c(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result p0

    return p0
.end method

.method public final isDestory()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->V:Z

    return p0
.end method

.method public final isDraggable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->ad:Z

    return p0
.end method

.method public final isFlat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->q:Z

    return p0
.end method

.method public final isInfoWindowAutoOverturn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->E:Z

    return p0
.end method

.method public final isInfoWindowEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->F:Z

    return p0
.end method

.method public final isInfoWindowShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->m:Z

    return p0
.end method

.method public final isOnTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->L:Z

    return p0
.end method

.method public final isPerspective()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->ah:Z

    return p0
.end method

.method public final isRemoved()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/ad;->c(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final isViewMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/db;->ae:Z

    return p0
.end method

.method public final loadTexture(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 12

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ak:Z

    if-nez v0, :cond_e

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v5, v4}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/col/l3s/af;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/amap/api/col/l3s/af;

    iput-object v2, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v2, :cond_3

    invoke-interface {p1, v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3s/af;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v8

    goto :goto_3

    :cond_3
    move-object v7, v0

    :cond_4
    move v8, v1

    :goto_3
    if-nez v7, :cond_5

    new-instance v7, Lcom/amap/api/col/l3s/af;

    invoke-direct {v7, v6, v8}, Lcom/amap/api/col/l3s/af;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_5
    if-nez v8, :cond_a

    invoke-virtual {v6}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/amap/api/col/l3s/db;->R:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/amap/api/col/l3s/db;->S:I

    iget-object v8, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v8}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v8

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getBaseOverlayTextureID()I

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/amap/api/col/l3s/db;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/amap/api/col/l3s/af;->a(I)V

    if-eqz v2, :cond_6

    invoke-interface {p1, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/col/l3s/af;)V

    :cond_6
    invoke-static {v8, v6, v1}, Lcom/amap/api/col/l3s/ex;->a(ILandroid/graphics/Bitmap;Z)I

    goto :goto_6

    :cond_7
    iget-object v9, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v9, v6, v7}, Lcom/amap/api/col/l3s/ad;->a(Landroid/graphics/Bitmap;Lcom/amap/api/col/l3s/af;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v9, v10, :cond_8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v9, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_8
    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->h()F

    move-result v9

    const/high16 v10, 0x44000000    # 512.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->g()F

    move-result v10

    const/high16 v11, 0x44800000    # 1024.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v8, v6, v9, v10}, Lcom/amap/api/col/l3s/ex;->a(ILandroid/graphics/Bitmap;II)I

    :goto_4
    invoke-virtual {v7, v8}, Lcom/amap/api/col/l3s/af;->a(I)V

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/amap/api/col/l3s/db;->d()I

    move-result v8

    invoke-static {v8, v6, v1}, Lcom/amap/api/col/l3s/ex;->a(ILandroid/graphics/Bitmap;Z)I

    goto :goto_4

    :goto_5
    if-eqz v2, :cond_a

    invoke-interface {p1, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/col/l3s/af;)V

    :cond_a
    :goto_6
    invoke-virtual {v7}, Lcom/amap/api/col/l3s/af;->n()V

    iget-object v6, p0, Lcom/amap/api/col/l3s/db;->U:[Lcom/amap/api/col/l3s/af;

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_b
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_c

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/db;->am:Z

    goto :goto_7

    :cond_c
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->am:Z

    :goto_7
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->J:Z

    iput-boolean v4, p0, Lcom/amap/api/col/l3s/db;->ak:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->calFPoint()Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MarkerDelegateImp"

    const-string v1, "loadtexture"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_e
    return-void
.end method

.method public final declared-synchronized reLoadTexture()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ak:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove()Z
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ae:Z

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/ad;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final set2Top()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ad;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/db;->C:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->alpha(F)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setAnchor(FF)V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/db;->ab:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3s/db;->ac:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    iput p1, p0, Lcom/amap/api/col/l3s/db;->ab:F

    iput p2, p0, Lcom/amap/api/col/l3s/db;->ac:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->n:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    return-void
.end method

.method public final setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getIAnimation()Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    :goto_0
    invoke-interface {p0, p1}, Lcom/autonavi/base/amap/mapcore/interfaces/IAnimation;->setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    :cond_1
    return-void
.end method

.method public final setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->g:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public final setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->g:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public final setAutoOverturnInfoWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->E:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setBelowMaskLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->K:Z

    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->H:Z

    return-void
.end method

.method public final setDisplayLevel(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/db;->G:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setDraggable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->ad:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    return-void
.end method

.method public final setFixingPointEnable(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->I:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/db;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    :cond_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ad;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget v2, p0, Lcom/amap/api/col/l3s/db;->w:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->aq:I

    iget v0, p1, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->ar:I

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    :cond_2
    return-void
.end method

.method public final setFlat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->q:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/l3s/db;->a(II)V

    return-void
.end method

.method public final setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->j:Z

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->J:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ak:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->l:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->n:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->R:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/db;->S:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    const-string p1, "MarkerDelegateImp"

    const-string v0, "setIcon"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized setIcons(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->ai:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->j:Z

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/db;->a(Ljava/util/ArrayList;)V

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ak:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->l:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->J:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "MarkerDelegateImp"

    const-string v1, "setIcons"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final setInfoWindowEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->F:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->hideInfoWindow()V

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setInfoWindowOffset(II)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/db;->r:I

    iput p2, p0, Lcom/amap/api/col/l3s/db;->s:I

    return-void
.end method

.method public final setInfoWindowShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->m:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->n:Z

    return-void
.end method

.method public final setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->aj:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->aj:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3s/pg;->a(DD)[D

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    const/4 v5, 0x0

    aget-wide v6, v0, v5

    invoke-direct {v1, v3, v4, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/db;->Y:Lcom/amap/api/maps/model/LatLng;

    aget-wide v3, v0, v5

    aget-wide v0, v0, v2

    invoke-static {v3, v4, v0, v1, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->Y:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    :cond_2
    :goto_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/amap/api/col/l3s/db;->w:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->ab:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->ac:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->r:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->s:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->ao:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->z:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->K:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->calFPoint()Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/db;->setIcons(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->j:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAngleOffset()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->k:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ae:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ad:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isPerspective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ah:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->q:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->K:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->C:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getRotateAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/db;->setRotateAngle(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getDisplayLevel()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->G:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowAutoOverturn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->E:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/db;->F:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->a:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3s/db;->b:[F

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-static {}, Lcom/amap/api/col/l3s/eh;->a()Lcom/amap/api/col/l3s/eh;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->Z:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->aa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/amap/api/col/l3s/eh;->a(Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->ag:Ljava/lang/Object;

    return-void
.end method

.method public final setOnTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->L:Z

    return-void
.end method

.method public final setPeriod(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/col/l3s/db;->ao:I

    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3s/db;->ao:I

    return-void
.end method

.method public final setPerspective(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->ah:Z

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u975e\u6cd5\u5750\u6807\u503c latlng is null"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    const-string p1, "setPosition"

    const-string v0, "Marker"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/db;->aj:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/col/l3s/pg;->a(DD)[D

    move-result-object v1

    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    aget-wide v5, v1, v2

    aget-wide v7, v1, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v4, p0, Lcom/amap/api/col/l3s/db;->Y:Lcom/amap/api/maps/model/LatLng;

    aget-wide v4, v1, v3

    aget-wide v6, v1, v2

    invoke-static {v4, v5, v6, v7, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->Y:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    :goto_0
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/amap/api/col/l3s/db;->v:I

    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/amap/api/col/l3s/db;->w:I

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->calFPoint()Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/db;->n:Z

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void
.end method

.method public final setPositionByPixels(II)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/db;->aq:I

    iput p2, p0, Lcom/amap/api/col/l3s/db;->ar:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->ap:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->calFPoint()Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->n:Z

    return-void
.end method

.method public final setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/db;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method public final setRotateAngle(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;

    iput p1, p0, Lcom/amap/api/col/l3s/db;->p:F

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/amap/api/col/l3s/db;->o:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->n:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    return-void
.end method

.method public final setRotateAngleNotUpdate(F)V
    .locals 0

    return-void
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->aa:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/l3s/db;->Z:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-static {}, Lcom/amap/api/col/l3s/eh;->a()Lcom/amap/api/col/l3s/eh;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->X:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/col/l3s/db;->Z:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/col/l3s/db;->aa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/amap/api/col/l3s/eh;->a(Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ae:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->ae:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->L:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->isInfoWindowShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/ad;->b(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3s/db;->z:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->D:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/db;->L:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/db;->L:Z

    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ad;->a()V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ad;->e()V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    return-void
.end method

.method public final showInfoWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/db;->ae:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->isContains()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/db;->isInfoWindowEnable()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->af:Lcom/amap/api/col/l3s/ad;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ad;->a(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    return-void
.end method

.method public final startAnimation()Z
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->g:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/db;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->g:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    instance-of v2, v2, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->g:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    check-cast v2, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v4}, Lcom/amap/api/col/l3s/db;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->g:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/db;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/db;->M:Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/db;->g:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object v2, p0, Lcom/amap/api/col/l3s/db;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/db;->al:Z

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->start()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/db;->b()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return v1
.end method
