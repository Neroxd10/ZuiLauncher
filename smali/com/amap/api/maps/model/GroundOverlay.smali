.class public final Lcom/amap/api/maps/model/GroundOverlay;
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

.field private high:F

.field private iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

.field private options:Lcom/amap/api/maps/model/GroundOverlayOptions;

.field private point:Lcom/amap/api/maps/model/LatLng;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/GroundOverlayOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/amap/api/maps/model/GroundOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-interface {v0, v1, p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->destroy()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/amap/api/maps/model/GroundOverlay;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    check-cast p1, Lcom/amap/api/maps/model/GroundOverlay;

    iget-object p1, p1, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    check-cast p1, Lcom/amap/api/maps/model/GroundOverlay;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlay;->getId()Ljava/lang/String;

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

.method public final getBearing()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getBearing()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBearing()F

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

.method public final getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

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

.method public final getHeight()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getHeight()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

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

.method public final getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

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

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

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

.method public final getTransparency()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getTransparency()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getTransparency()F

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

.method public final getWidth()F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getWidth()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

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
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getZIndex()F

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

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible()Z

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
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setBearing(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setBearing(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->bearing(F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setDimensions(F)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setDimensions(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->point:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->point:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->width:F

    return-void

    :cond_2
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->position(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setDimensions(FF)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setDimensions(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->point:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->point:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->width:F

    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlay;->high:F

    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/amap/api/maps/model/GroundOverlayOptions;->position(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->image(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->width:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v0

    :goto_0
    iget v2, p0, Lcom/amap/api/maps/model/GroundOverlay;->high:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    iget v2, p0, Lcom/amap/api/maps/model/GroundOverlay;->high:F

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    :goto_1
    cmpl-float v3, v0, v1

    if-nez v3, :cond_3

    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->point:Lcom/amap/api/maps/model/LatLng;

    return-void

    :cond_3
    cmpl-float v1, v2, v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v1, p1, v0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->position(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V

    return-void

    :cond_4
    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v1, p1, v0, v2}, Lcom/amap/api/maps/model/GroundOverlayOptions;->position(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->positionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTransparency(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setTransparency(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->transparency(F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->visible(Z)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/GroundOverlay;->iGroundOverlayDelegate:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->options:Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->zIndex(F)Lcom/amap/api/maps/model/GroundOverlayOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
