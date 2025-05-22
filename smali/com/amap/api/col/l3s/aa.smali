.class public final Lcom/amap/api/col/l3s/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/maps/interfaces/IGlOverlayLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/aa$a;
    }
.end annotation


# instance fields
.field a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field b:Lcom/amap/api/col/l3s/aa$a;

.field private c:Lcom/amap/api/col/l3s/dl;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/af;",
            ">;"
        }
    .end annotation
.end field

.field private g:[I

.field private volatile h:Z

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/aa;->d:I

    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/aa;->f:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/amap/api/col/l3s/aa;->g:[I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aa;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/aa;->i:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/col/l3s/aa$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/aa$1;-><init>(Lcom/amap/api/col/l3s/aa;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/aa;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/col/l3s/aa$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/aa$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/aa;->b:Lcom/amap/api/col/l3s/aa$a;

    iput-object p1, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-void
.end method

.method private declared-synchronized a()Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/cw;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cw;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->c:Lcom/amap/api/col/l3s/dl;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cw;->a(Lcom/amap/api/col/l3s/dl;)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/de;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/de;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;)V

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/de;->a(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/HeatMapLayerOptions;)Lcom/autonavi/amap/mapcore/interfaces/IHeatMapLayer;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/da;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/da;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->c:Lcom/amap/api/col/l3s/dl;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/da;->a(Lcom/amap/api/col/l3s/dl;)V

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/da;->setOptions(Lcom/amap/api/maps/model/HeatMapLayerOptions;)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IArcDelegate;
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/cv;

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/cv;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cv;->setStrokeColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStart()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cv;->setStart(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getPassed()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cv;->setPassed(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getEnd()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cv;->setEnd(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cv;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cv;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getZIndex()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/cv;->setZIndex(F)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/ICircleDelegate;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/cx;

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/cx;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cx;->setFillColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cx;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cx;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cx;->setHoleOptions(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cx;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cx;->setZIndex(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cx;->setStrokeColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3s/cx;->setRadius(D)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeDottedLineType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cx;->setDottedLineType(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->isUsePolylineStroke()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/cx;->a(Z)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IGroundOverlayDelegate;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/cz;

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cz;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/maps/interfaces/IGlOverlayLayer;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3s/cz;->setAnchor(FF)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3s/cz;->setDimensions(FF)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cz;->setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cz;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cz;->setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cz;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cz;->setTransparency(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/cz;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getZIndex()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/cz;->setZIndex(F)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/INavigateArrowDelegate;
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/dd;

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dd;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getTopColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/dd;->setTopColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getSideColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/dd;->setSideColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/dd;->setPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/dd;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/dd;->setWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/dd;->setZIndex(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->is3DModel()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/dd;->set3DModel(Z)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->isDrawFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;

    invoke-interface {v2, p1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IPolygonDelegate;
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/df;

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/df;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/df;->setFillColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/df;->setPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/df;->setHoleOptions(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/df;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/df;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/df;->setStrokeColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/df;->setZIndex(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getLineJoinType()Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/df;->a(Lcom/amap/api/maps/model/AMapPara$LineJoinType;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->isUsePolylineStroke()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/df;->a(Z)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/dg;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/dg;-><init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/PolylineOptions;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/aa;->c:Lcom/amap/api/col/l3s/dl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/aa;->c:Lcom/amap/api/col/l3s/dl;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/dg;->a(Lcom/amap/api/col/l3s/dl;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/aa;->a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/aa;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/aa;->changeOverlayIndex()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/amap/api/col/l3s/aa;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3s/aa;->f:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/aa;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3s/aa;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/af;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->o()V

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->p()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/l3s/aa;->g:[I

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->l()I

    move-result v5

    aput v5, v4, v1

    iget-object v4, p0, Lcom/amap/api/col/l3s/aa;->g:[I

    const/4 v5, 0x1

    invoke-static {v5, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-virtual {v3, v1}, Lcom/amap/api/col/l3s/af;->a(I)V

    iget-object v4, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/af;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/aa;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final IsCircleContainPoint(Lcom/amap/api/maps/model/CircleOptions;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final IsPolygonContainsPoint(Lcom/amap/api/maps/model/PolygonOptions;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final addOverlayObject(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOverlay;Lcom/amap/api/maps/model/BaseOptions;)Lcom/amap/api/maps/model/BaseOverlay;
    .locals 0

    :try_start_0
    instance-of p1, p2, Lcom/amap/api/maps/model/Polyline;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lcom/amap/api/maps/model/Polyline;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    goto/16 :goto_0

    :cond_0
    instance-of p1, p2, Lcom/amap/api/maps/model/NavigateArrow;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/INavigateArrowDelegate;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lcom/amap/api/maps/model/NavigateArrow;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/NavigateArrow;-><init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V

    goto/16 :goto_0

    :cond_1
    instance-of p1, p2, Lcom/amap/api/maps/model/Polygon;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IPolygonDelegate;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lcom/amap/api/maps/model/Polygon;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V

    goto :goto_0

    :cond_2
    instance-of p1, p2, Lcom/amap/api/maps/model/Circle;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/ICircleDelegate;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lcom/amap/api/maps/model/Circle;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ICircle;)V

    goto :goto_0

    :cond_3
    instance-of p1, p2, Lcom/amap/api/maps/model/Arc;

    if-eqz p1, :cond_4

    check-cast p3, Lcom/amap/api/maps/model/ArcOptions;

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IArcDelegate;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lcom/amap/api/maps/model/Arc;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/Arc;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V

    goto :goto_0

    :cond_4
    instance-of p1, p2, Lcom/amap/api/maps/model/GroundOverlay;

    if-eqz p1, :cond_5

    check-cast p3, Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IGroundOverlayDelegate;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lcom/amap/api/maps/model/GroundOverlay;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/GroundOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V

    goto :goto_0

    :cond_5
    instance-of p1, p2, Lcom/amap/api/maps/model/particle/ParticleOverlay;

    if-eqz p1, :cond_6

    check-cast p3, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lcom/amap/api/maps/model/particle/ParticleOverlay;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;-><init>(Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;)V

    goto :goto_0

    :cond_6
    instance-of p1, p2, Lcom/amap/api/maps/model/HeatMapLayer;

    if-eqz p1, :cond_7

    check-cast p3, Lcom/amap/api/maps/model/HeatMapLayerOptions;

    invoke-direct {p0, p3}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/HeatMapLayerOptions;)Lcom/autonavi/amap/mapcore/interfaces/IHeatMapLayer;

    move-result-object p0

    new-instance p1, Lcom/amap/api/maps/model/HeatMapLayer;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/HeatMapLayer;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IHeatMapLayer;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_7
    instance-of p1, p2, Lcom/amap/api/maps/model/BuildingOverlay;

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/amap/api/col/l3s/aa;->a()Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    move-result-object p0

    new-instance p1, Lcom/amap/api/maps/model/BuildingOverlay;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/BuildingOverlay;-><init>(Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_8
    :goto_1
    return-object p2
.end method

.method public final addRecycleTextureIds(Lcom/amap/api/col/l3s/af;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/aa;->f:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/aa;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

.method public final declared-synchronized changeOverlayIndex()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aa;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clear(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/amap/api/col/l3s/cw;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/amap/api/col/l3s/da;

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->destroy()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v2

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/aa;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "GlOverlayLayer"

    const-string v1, "clear"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized createId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3s/aa;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3s/aa;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amap/api/col/l3s/aa;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->destroy()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/aa;->clear(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "GlOverlayLayer"

    const-string v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized draw(ZI)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/aa;->c()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/amap/api/col/l3s/aa;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/aa;->j:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aa;->h:Z

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x14

    if-le v2, v5, :cond_4

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->checkInBounds()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_3

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v5

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    :goto_1
    invoke-interface {v4, v1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;->draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v5

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v5

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "GlOverlayLayer"

    const-string v1, "draw"

    invoke-static {p1, p2, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getCurrentParticleNum(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getFinalMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x10

    new-array p0, p0, [F

    return-object p0
.end method

.method public final getGLShaderManager()Lcom/amap/api/col/l3s/dl;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aa;->c:Lcom/amap/api/col/l3s/dl;

    return-object p0
.end method

.method public final getHitOverlay(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/Polyline;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/aa;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/amap/api/maps/model/Polyline;

    check-cast p0, Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getMap()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method public final getNativeProperties(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNearestLatLng(Lcom/amap/api/maps/model/PolylineOptions;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3s/af;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/col/l3s/af;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadBitmapDescription(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final onCreateAMapInstance()V
    .locals 0

    return-void
.end method

.method public final prepareIcon(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final processCircleHoleOption(Lcom/amap/api/maps/model/CircleOptions;)V
    .locals 0

    return-void
.end method

.method public final processPolygonHoleOption(Lcom/amap/api/maps/model/PolygonOptions;)V
    .locals 0

    return-void
.end method

.method public final removeOverlay(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/col/l3s/aa;->removeOverlay(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized removeOverlay(Ljava/lang/String;Z)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/aa;->a(Ljava/lang/String;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->destroy()V

    :cond_0
    iget-object p2, p0, Lcom/amap/api/col/l3s/aa;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setGlShaderManager(Lcom/amap/api/col/l3s/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/aa;->c:Lcom/amap/api/col/l3s/dl;

    return-void
.end method

.method public final setRunLowFrame(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method public final updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    .locals 0

    return-void
.end method
