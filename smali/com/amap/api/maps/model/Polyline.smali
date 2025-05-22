.class public Lcom/amap/api/maps/model/Polyline;
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

.field private options:Lcom/amap/api/maps/model/PolylineOptions;

.field private polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/Polyline;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/PolylineOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/amap/api/maps/model/Polyline;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    return-void
.end method

.method private a()V
    .locals 3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps/model/Polyline;->setOptionPointList(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/amap/api/maps/model/Polyline;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    check-cast p1, Lcom/amap/api/maps/model/Polyline;

    iget-object p1, p1, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    check-cast p1, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public getColor()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

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

.method public getEraseColor()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getEraseColor()I

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

.method public getEraseTexture()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getEraseTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

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

.method public getEraseVisible()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getEraseVisible()Z

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

.method public getFootPrintGap()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getFootPrintGap()F

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

.method public getFootPrintTexture()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getFootPrintTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

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

.method public getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

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

.method public getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-interface {v0, p0, p1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getNearestLatLng(Lcom/amap/api/maps/model/PolylineOptions;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptions()Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getOptions()Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    return-object p0
.end method

.method public getPoints()Ljava/util/List;
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
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getPoints()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

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

.method public getPolylineShownRangeBegin()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getPolylineShownRangeBegin()F

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

.method public getPolylineShownRangeEnd()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getPolylineShownRangeEnd()F

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

.method public getShownRatio()F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getShownRatio()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getShownRatio()F

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

.method public getWidth()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getWidth()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

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

.method public getZIndex()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

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

.method public hashCode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

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

.method public isDottedLine()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->isDottedLine()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isGeodesic()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->isGeodesic()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isShowPolylineRangeEnable()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->isShowPolylineRangeEnable()Z

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

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

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

.method public remove()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setAboveMaskLayer(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->aboveMaskLayer(Z)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V

    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setCustemTextureIndex(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/Polyline;->setCustomTextureIndex(Ljava/util/List;)V

    return-void
.end method

.method public setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V

    :cond_1
    return-void
.end method

.method public setCustomTextureIndex(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setCustomTextureIndex(Ljava/util/List;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTextureIndex(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCustomTextureList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setCustomTextureList(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTextureList(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setDottedLine(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setDottedLine(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setDottedLine(Z)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V

    :cond_1
    return-void
.end method

.method public setEraseColor(ZI)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/PolylineOptions;->setEraseColor(ZI)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setEraseTexture(ZLcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/PolylineOptions;->setEraseTexture(ZLcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setFootPrintGap(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setFootPrintGap(F)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setFootPrintTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setFootPrintTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->isGeodesic()Z

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setGeodesic(Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->geodesic(Z)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected setOptionPointList(Ljava/lang/Object;)V
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

    check-cast v0, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

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

    const-string p1, "Polyline"

    const-string v0, "setOptionPointList"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setPoints(Ljava/util/List;)V

    return-void

    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setPoints(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V

    :cond_1
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

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setPolylineShowRange(FF)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/PolylineOptions;->setPolylineShowRange(FF)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setShownRange(FF)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setShowRange(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/PolylineOptions;->setShownRange(FF)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setShownRatio(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setShownRatio(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setShownRatio(F)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setTransparency(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setTransparency(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->transparency(F)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V

    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setWidth(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showPolylineRangeEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->polylineDelegate:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->options:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->showPolylineRangeEnabled(Z)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Polyline;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
