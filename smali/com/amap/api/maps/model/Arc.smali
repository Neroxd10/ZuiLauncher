.class public final Lcom/amap/api/maps/model/Arc;
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

.field private iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

.field private options:Lcom/amap/api/maps/model/ArcOptions;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/ArcOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/amap/api/maps/model/Arc;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-interface {v0, v1, p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/amap/api/maps/model/Arc;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    check-cast p1, Lcom/amap/api/maps/model/Arc;

    iget-object p1, p1, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    check-cast p1, Lcom/amap/api/maps/model/Arc;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Arc;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/Arc;->getId()Ljava/lang/String;

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

.method public final getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

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

.method public final getStrokeColor()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->getStrokeColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeColor()I

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
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->getStrokeWidth()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeWidth()F

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
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/ArcOptions;->getZIndex()F

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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

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
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/ArcOptions;->isVisible()Z

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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

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

.method public final setStrokeColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->setStrokeColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/ArcOptions;->strokeColor(I)Lcom/amap/api/maps/model/ArcOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Arc;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->setStrokeWidth(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/ArcOptions;->strokeWidth(F)Lcom/amap/api/maps/model/ArcOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Arc;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/ArcOptions;->visible(Z)Lcom/amap/api/maps/model/ArcOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Arc;->a()V
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Arc;->iArcDel:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->options:Lcom/amap/api/maps/model/ArcOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/ArcOptions;->zIndex(F)Lcom/amap/api/maps/model/ArcOptions;

    invoke-direct {p0}, Lcom/amap/api/maps/model/Arc;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
