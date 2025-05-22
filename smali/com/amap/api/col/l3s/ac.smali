.class public final Lcom/amap/api/col/l3s/ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;


# static fields
.field public static volatile a:Landroid/content/Context;

.field private static f:Ljava/lang/String;


# instance fields
.field public b:I

.field c:Z

.field private d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

.field private e:I

.field private g:Lcom/amap/api/maps/AMapOptions;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/ac;->b:I

    iput v0, p0, Lcom/amap/api/col/l3s/ac;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ac;->c:Z

    rem-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/amap/api/col/l3s/ac;->e:I

    invoke-static {}, Lcom/amap/api/col/l3s/ac;->a()V

    return-void
.end method

.method private static a()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/ac;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-nez v0, :cond_9

    sget-object v0, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "MapFragmentDelegateImp"

    const-string v0, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    sput v0, Lcom/amap/api/col/l3s/u;->a:F

    goto :goto_1

    :cond_1
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_2

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_2
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_3

    const v0, 0x3f5eb852    # 0.87f

    goto :goto_0

    :cond_3
    const/16 v1, 0x140

    if-gt v0, v1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_5

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_5
    const/16 v1, 0x280

    if-gt v0, v1, :cond_6

    const v0, 0x3fe66666    # 1.8f

    goto :goto_0

    :cond_6
    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/amap/api/col/l3s/ac;->e:I

    if-nez v0, :cond_7

    new-instance v0, Lcom/amap/api/col/l3s/m;

    sget-object v1, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/ac;->c:Z

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/m;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/m;->a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/amap/api/col/l3s/n;

    sget-object v1, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/ac;->c:Z

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/n;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/n;->a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/amap/api/col/l3s/l;

    sget-object v1, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/l;->a()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    goto :goto_2

    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    return-object p0
.end method

.method public final isReady()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final loadWorldVectorMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ac;->c:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->loadWorldVectorMap(Z)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget-object p2, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ac;->setContext(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ac;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    iget p2, p0, Lcom/amap/api/col/l3s/ac;->b:I

    invoke-interface {p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setVisibilityEx(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "MAP_OPTIONS"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    array-length p3, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p1, Lcom/amap/api/maps/AMapOptions;->CREATOR:Lcom/amap/api/maps/AMapOptionsCreator;

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/AMapOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCamera()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-static {p2}, Lcom/amap/api/maps/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :cond_2
    iget-object p2, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getAMapUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getRotateGesturesEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScrollGesturesEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getTiltGesturesEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomControlsEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomGesturesEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCompassEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/UiSettings;->setCompassEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScaleControlsEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getLogoPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/UiSettings;->setLogoPosition(I)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getMapType()I

    move-result p3

    invoke-interface {p2, p3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMapType(I)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZOrderOnTop()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setZOrderOnTop(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 9

    const-string v0, "errorLog"

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_3

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "TextureMapView"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v7

    :cond_0
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Fragment"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v7

    :cond_1
    const-string v6, "OnDestroyView"

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    const-string v1, "OnDestroy \u65b9\u6cd5\u9700\u8981\u5728OnDestroyView\u4e2d\u8c03\u7528"

    sget-object v2, Lcom/amap/api/col/l3s/ac;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/amap/api/col/l3s/ac;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    :cond_5
    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    return-void
.end method

.method public final onInflate(Landroid/app/Activity;Lcom/amap/api/maps/AMapOptions;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ac;->setContext(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    const-string p0, "onLowMemory"

    const-string v0, "onLowMemory run"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPause()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onActivityResume()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ac;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMapOptions;->camera(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/AMapOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0}, Lcom/amap/api/maps/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "MAP_OPTIONS"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public final setOptions(Lcom/amap/api/maps/AMapOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ac;->g:Lcom/amap/api/maps/AMapOptions;

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/ac;->b:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/ac;->d:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setVisibilityEx(I)V

    :cond_0
    return-void
.end method
