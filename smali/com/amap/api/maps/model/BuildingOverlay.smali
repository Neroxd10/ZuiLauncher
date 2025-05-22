.class public Lcom/amap/api/maps/model/BuildingOverlay;
.super Lcom/amap/api/maps/model/BaseOverlay;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;
    }
.end annotation


# instance fields
.field private buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

.field private glOverlayLayerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/maps/interfaces/IGlOverlayLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

.field private mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

.field private optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    invoke-direct {p2, p0}, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;-><init>(Lcom/amap/api/maps/model/BuildingOverlay;)V

    iput-object p2, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/amap/api/maps/model/BuildingOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->allOptionList:Ljava/util/List;

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    if-nez p1, :cond_0

    new-instance p1, Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-direct {p1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setVisible(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    const-wide v1, -0x3f99833333333333L    # -179.9

    const-wide v3, 0x405539999999999aL    # 84.9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    const-wide v5, 0x40667ccccccccccdL    # 179.9

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    const-wide v3, -0x3faac66666666666L    # -84.9

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingLatlngs(Ljava/util/List;)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingTopColor(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setBuildingSideColor(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;

    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setVisible(Z)V

    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setZIndex(F)V

    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    iget-object p1, p1, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->allOptionList:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/amap/api/maps/model/BuildingOverlay;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    invoke-direct {v0, p0}, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;-><init>(Lcom/amap/api/maps/model/BuildingOverlay;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    iput-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    invoke-interface {v0, v1, p0}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    iget-object p1, p1, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->allOptionList:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    iget-object p1, p1, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->allOptionList:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->optionList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    iget-object p1, p1, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->allOptionList:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    iget-object p1, p1, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->allOptionList:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->optionList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    invoke-interface {p1, v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    invoke-interface {p0}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->destroy()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

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

.method public getCustomOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->getCustomOptions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->optionList:Ljava/util/List;

    return-object p0
.end method

.method public getDefaultOptions()Lcom/amap/api/maps/model/BuildingOverlayOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->getDefaultOptions()Lcom/amap/api/maps/model/BuildingOverlayOptions;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    return-object p0
.end method

.method public getZIndex()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->getZIndex()F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->a(Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;)F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->isVisible:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setCustomOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->setCustomOptions(Ljava/util/List;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->optionList:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/maps/model/BuildingOverlay;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultOptions(Lcom/amap/api/maps/model/BuildingOverlayOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->setDefaultOptions(Lcom/amap/api/maps/model/BuildingOverlayOptions;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/amap/api/maps/model/BuildingOverlay;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    if-eqz v0, :cond_1

    iput-boolean p1, v0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->isVisible:Z

    invoke-direct {p0}, Lcom/amap/api/maps/model/BuildingOverlay;->a()V

    :cond_1
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;->setZIndex(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->mDefaultOptions:Lcom/amap/api/maps/model/BuildingOverlayOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/BuildingOverlayOptions;->setZIndex(F)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlay;->buildingOverlayTotalOptions:Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->a(Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;F)F

    invoke-direct {p0}, Lcom/amap/api/maps/model/BuildingOverlay;->a()V

    :cond_2
    return-void
.end method
