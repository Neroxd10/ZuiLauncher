.class public Lcom/amap/api/maps/model/NavigateArrow;
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

.field private navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

.field private options:Lcom/amap/api/maps/model/NavigateArrowOptions;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/NavigateArrowOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/amap/api/maps/model/NavigateArrow;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-interface {v0, v1, p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/amap/api/maps/model/NavigateArrow;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    check-cast p1, Lcom/amap/api/maps/model/NavigateArrow;

    iget-object p1, p1, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    check-cast p1, Lcom/amap/api/maps/model/NavigateArrow;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrow;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrow;->getId()Ljava/lang/String;

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

.method public getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

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
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getPoints()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getPoints()Ljava/util/List;

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

.method public getSideColor()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getSideColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getSideColor()I

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

.method public getTopColor()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getTopColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getTopColor()I

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
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getWidth()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getWidth()F

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
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getZIndex()F

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
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

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

.method public is3DModel()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->is3DModel()Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrowOptions;->is3DModel()Z

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
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible()Z

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
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

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

.method public set3DModel(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->set3DModel(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->set3DModel(Z)Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

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
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setPoints(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->setPoints(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setSideColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setSideColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->sideColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setTopColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setTopColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->topColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->visible(Z)Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setWidth(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->width(F)Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrow;->navigateArrowDelegate:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->options:Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->zIndex(F)Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/NavigateArrow;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
