.class public final Lcom/amap/api/maps/UiSettings;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    return-void
.end method


# virtual methods
.method public final getLogoMarginRate(I)F
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->getLogoMarginRate(I)F

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

.method public final getLogoPosition()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->getLogoPosition()I

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

.method public final getZoomPosition()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->getZoomPosition()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x2

    return p0
.end method

.method public final isCompassEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isCompassEnabled()Z

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

.method public final isGestureScaleByMapCenter()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isGestureScaleByMapCenter()Z

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

.method public final isIndoorSwitchEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isIndoorSwitchEnabled()Z

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

.method public final isMyLocationButtonEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isMyLocationButtonEnabled()Z

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

.method public final isRotateGesturesEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isRotateGesturesEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public final isScaleControlsEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScaleControlsEnabled()Z

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

.method public final isScrollGesturesEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public final isTiltGesturesEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isTiltGesturesEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public final isZoomControlsEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isZoomControlsEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public final isZoomGesturesEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isZoomGesturesEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public final setAllGesturesEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setAllGesturesEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setCompassEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setCompassEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setGestureScaleByMapCenter(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setGestureScaleByMapCenter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setIndoorSwitchEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setIndoorSwitchEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setLogoBottomMargin(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoBottomMargin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setLogoCenter(II)V
    .locals 0

    return-void
.end method

.method protected final setLogoEnable(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setLogoLeftMargin(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoLeftMargin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setLogoMarginRate(IF)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoMarginRate(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setLogoPosition(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMyLocationButtonEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setMyLocationButtonEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRotateGesturesEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setRotateGesturesEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setScaleControlsEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setScaleControlsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setScrollGesturesEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setScrollGesturesEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTiltGesturesEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setTiltGesturesEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setZoomControlsEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setZoomControlsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setZoomGesturesEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setZoomGesturesEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setZoomInByScreenCenter(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setZoomInByScreenCenter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setZoomPosition(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/maps/UiSettings;->uiSettingsDelegate:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setZoomPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
