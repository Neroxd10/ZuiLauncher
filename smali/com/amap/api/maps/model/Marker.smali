.class public final Lcom/amap/api/maps/model/Marker;
.super Lcom/amap/api/maps/model/BasePointOverlay;
.source ""


# instance fields
.field private markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/maps/model/BasePointOverlay;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->destroy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/amap/api/maps/model/Marker;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    check-cast p1, Lcom/amap/api/maps/model/Marker;

    iget-object p1, p1, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public final getAlpha()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getAlpha()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final getAnchorU()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getAnchorU()F

    move-result p0

    return p0
.end method

.method public final getAnchorV()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getAnchorV()F

    move-result p0

    return p0
.end method

.method public final getDisplayLevel()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getDisplayLevel()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public final getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    return-object p0
.end method

.method public final getIcons()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIcons()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getOptions()Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPeriod()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getPeriod()I

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

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRotateAngle()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getRotateAngle()F

    move-result p0

    return p0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getSnippet()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getTitle()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->hashCodeRemote()I

    move-result p0

    return p0
.end method

.method public final hideInfoWindow()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->hideInfoWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final isClickable()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isClickable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDraggable()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isDraggable()Z

    move-result p0

    return p0
.end method

.method public final isFlat()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isFlat()Z

    move-result p0

    return p0
.end method

.method public final isInfoWindowAutoOverturn()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInfoWindowEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInfoWindowShown()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isInfoWindowShown()Z

    move-result p0

    return p0
.end method

.method public final isPerspective()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isPerspective()Z

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

.method public final isRemoved()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isRemoved()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

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

.method public final remove()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->remove()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setAnchor(FF)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setAnchor(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final setAutoOverturnInfoWindow(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setAutoOverturnInfoWindow(Z)V

    :cond_0
    return-void
.end method

.method public final setBelowMaskLayer(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setBelowMaskLayer(Z)V

    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public final setDisplayLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setDisplayLevel(I)V

    :cond_0
    return-void
.end method

.method public final setDraggable(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setDraggable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setFixingPointEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setFixingPointEnable(Z)V

    :cond_0
    return-void
.end method

.method public final setFlat(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setFlat(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    return-void
.end method

.method public final setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setIcons(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setIcons(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setInfoWindowEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setInfoWindowEnable(Z)V

    :cond_0
    return-void
.end method

.method public final setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    :cond_0
    return-void
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPeriod(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPeriod(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setPerspective(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPerspective(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setPositionByPixels(II)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPositionByPixels(II)V

    return-void
.end method

.method public final setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method public final setRotateAngle(F)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setRotateAngle(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRotateAngleNotUpdate(F)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setRotateAngleNotUpdate(F)V

    :cond_0
    return-void
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setSnippet(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setToTop()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->set2Top()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setZIndex(F)V

    return-void
.end method

.method public final showInfoWindow()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->showInfoWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final startAnimation()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/Marker;->markerDelegate:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->startAnimation()Z

    move-result p0

    return p0
.end method
