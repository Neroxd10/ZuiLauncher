.class public final Lcom/amap/api/maps/model/Polygon;
.super Lcom/amap/api/maps/model/BaseOverlay;
.source ""


# instance fields
.field private glOverlayLayerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/maps/interfaces/IGlOverlayLayer;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/amap/api/maps/model/PolygonOptions;

.field private polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/PolygonOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/amap/api/maps/model/Polygon;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps/model/Polygon;->setOptionPointList(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->processPolygonHoleOption(Lcom/amap/api/maps/model/PolygonOptions;)V

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-interface {v0, v1, p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-interface {v1, p0, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->IsPolygonContainsPoint(Lcom/amap/api/maps/model/PolygonOptions;Lcom/amap/api/maps/model/LatLng;)Z

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/amap/api/maps/model/Polygon;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    check-cast p1, Lcom/amap/api/maps/model/Polygon;

    iget-object p1, p1, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    check-cast p1, Lcom/amap/api/maps/model/Polygon;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Polygon;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/Polygon;->getId()Ljava/lang/String;

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

.method public final getFillColor()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getFillColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolygonOptions;->getFillColor()I

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
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getHoleOptions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolygonOptions;->getHoleOptions()Ljava/util/List;

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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

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

.method public final getPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getPoints()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

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

.method public final getStrokeColor()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getStrokeColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeColor()I

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
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getStrokeWidth()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeWidth()F

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
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolygonOptions;->getZIndex()F

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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->hashCodeRemote()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolygonOptions;->isVisible()Z

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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

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

.method public final setFillColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setFillColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolygonOptions;->fillColor(I)Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polygon;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setHoleOptions(Ljava/util/List;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolygonOptions;->setHoleOptions(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polygon;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected final setOptionPointList(Ljava/lang/Object;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "isPointsUpdated"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    mul-int/lit8 v4, v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    aput-wide v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "pointList"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "Polygon"

    const-string v0, "setOptionPointList"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setPoints(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolygonOptions;->setPoints(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polygon;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setStrokeColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolygonOptions;->strokeColor(I)Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polygon;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setStrokeWidth(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolygonOptions;->strokeWidth(F)Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polygon;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolygonOptions;->visible(Z)Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polygon;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polygon;->polygonDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->options:Lcom/amap/api/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolygonOptions;->zIndex(F)Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polygon;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
