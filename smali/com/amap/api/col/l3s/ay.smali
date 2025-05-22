.class public final Lcom/amap/api/col/l3s/ay;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

.field c:Landroid/content/Context;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

.field private j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

.field private k:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field private l:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/ay;->d:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->h:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/amap/api/col/l3s/ay$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/ay$1;-><init>(Lcom/amap/api/col/l3s/ay;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->k:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    new-instance v0, Lcom/amap/api/col/l3s/ay$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/ay$2;-><init>(Lcom/amap/api/col/l3s/ay;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->l:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ay;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ay;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->h:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ay;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ay;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->f:Landroid/widget/TextView;

    return-object p1
.end method

.method private static a(Landroid/view/View;Lcom/amap/api/maps/model/BasePointOverlay;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BasePointOverlay;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/eh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/eh;->a()Lcom/amap/api/col/l3s/eh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BasePointOverlay;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p1, p0, v1}, Lcom/amap/api/col/l3s/eh;->a(Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ay;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ay;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->g:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/ay;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/ay;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->g:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, p0}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ay;->a(Landroid/view/View;Lcom/amap/api/maps/model/BasePointOverlay;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;->getInfoWindowParams(Lcom/amap/api/maps/model/BasePointOverlay;)Lcom/amap/api/maps/InfoWindowParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/maps/InfoWindowParams;->getInfoWindow()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->l:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    invoke-interface {p0, p1}, Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;->getInfoWindowParams(Lcom/amap/api/maps/model/BasePointOverlay;)Lcom/amap/api/maps/InfoWindowParams;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/maps/InfoWindowParams;->getInfoWindow()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {p0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized a(Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->l:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ay;->d:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ay;->d:Z

    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->hideInfoWindow()V

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->i:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->i:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->hideInfoWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->k:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ay;->d:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ay;->d:Z

    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->hideInfoWindow()V

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->i:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->i:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->hideInfoWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->i:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->setInfoWindowAdapterManager(Lcom/amap/api/col/l3s/ay;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ay;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->e:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ay;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, p0}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/ay;->a(Landroid/view/View;Lcom/amap/api/maps/model/BasePointOverlay;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;->getInfoWindowParams(Lcom/amap/api/maps/model/BasePointOverlay;)Lcom/amap/api/maps/InfoWindowParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/maps/InfoWindowParams;->getInfoContents()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->l:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    invoke-interface {p0, p1}, Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;->getInfoWindowParams(Lcom/amap/api/maps/model/BasePointOverlay;)Lcom/amap/api/maps/InfoWindowParams;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/maps/InfoWindowParams;->getInfoContents()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {p0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->e:Landroid/view/View;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->f:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->g:Landroid/widget/TextView;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ay;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->k:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->i:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->setInfoWindowAdapterManager(Lcom/amap/api/col/l3s/ay;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcom/amap/api/maps/model/BasePointOverlay;)J
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;->getInfoWindowUpdateTime()J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;->getInfoWindowParams(Lcom/amap/api/maps/model/BasePointOverlay;)Lcom/amap/api/maps/InfoWindowParams;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/InfoWindowParams;->getInfoWindowUpdateTime()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final c(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {p0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized c()Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->b:Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;->getInfoWindowParams(Lcom/amap/api/maps/model/BasePointOverlay;)Lcom/amap/api/maps/InfoWindowParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/InfoWindowParams;->getInfoWindowType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->j:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->i:Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ay;->c:Landroid/content/Context;

    const-string v1, "infowindow_bg.9.png"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ay;->h:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ay;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
