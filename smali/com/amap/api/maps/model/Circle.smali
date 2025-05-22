.class public final Lcom/amap/api/maps/model/Circle;
.super Lcom/amap/api/maps/model/BaseOverlay;
.source ""


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/maps/interfaces/IGlOverlayLayer;",
            ">;"
        }
    .end annotation
.end field

.field private iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

.field private options:Lcom/amap/api/maps/model/CircleOptions;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/CircleOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/amap/api/maps/model/Circle;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/ICircle;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->processCircleHoleOption(Lcom/amap/api/maps/model/CircleOptions;)V

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-interface {v0, v1, p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-interface {v0, p0, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->IsCircleContainPoint(Lcom/amap/api/maps/model/CircleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/amap/api/maps/model/Circle;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    check-cast p1, Lcom/amap/api/maps/model/Circle;

    iget-object p1, p1, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    check-cast p1, Lcom/amap/api/maps/model/Circle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return v0
.end method

.method public final getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final getFillColor()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getFillColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->getFillColor()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final getHoleOptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getHoleOptions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->getHoleOptions()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRadius()D
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getRadius()D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-wide v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getStrokeColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeColor()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final getStrokeDottedLineType()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getDottedLineType()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeDottedLineType()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getStrokeWidth()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeWidth()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final getZIndex()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->getZIndex()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final hashCode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->hashCodeRemote()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleOptions;->isVisible()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final remove()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setCenter(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CircleOptions;->center(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setFillColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setFillColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setHoleOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setHoleOptions(Ljava/util/List;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CircleOptions;->getHoleOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CircleOptions;->addHoles(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRadius(D)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setRadius(D)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/CircleOptions;->radius(D)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setStrokeColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setStrokeDottedLineType(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setDottedLineType(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CircleOptions;->setStrokeDottedLineType(I)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setStrokeWidth(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CircleOptions;->visible(Z)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Circle;->iCircleDel:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->options:Lcom/amap/api/maps/model/CircleOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CircleOptions;->zIndex(F)Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Circle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
