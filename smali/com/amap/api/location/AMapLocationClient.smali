.class public Lcom/amap/api/location/AMapLocationClient;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/amap/api/col/l3s/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/col/l3s/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/amap/api/col/l3s/d;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p1, "AMClt"

    const-string v0, "ne1"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    new-instance p1, Lcom/amap/api/col/l3s/d;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/amap/api/col/l3s/d;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p1, "AMClt"

    const-string p2, "ne2"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    new-instance p2, Lcom/amap/api/col/l3s/d;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/amap/api/col/l3s/d;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p1, "AMClt"

    const-string p2, "ne3"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/amap/api/col/l3s/iy;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sput-object p0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMClt"

    const-string v1, "sKey"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public disableBackgroundLocation(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMClt"

    const-string v0, "dBackL"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableBackgroundLocation(ILandroid/app/Notification;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/d;->a(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMClt"

    const-string p2, "eBackL"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/d;->e()Lcom/amap/api/location/AMapLocation;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "AMClt"

    const-string v1, "gLastL"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "5.2.0"

    return-object p0
.end method

.method public isStarted()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/d;->a()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "AMClt"

    const-string v1, "isS"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMClt"

    const-string v1, "onDy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/location/AMapLocationListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p1, "AMClt"

    const-string v0, "sLocL"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 2

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_0
    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->b:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/amap/api/location/AMapLocationClientOption;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "amap_loc_scenes_type"

    iget-object p1, p1, Lcom/amap/api/location/AMapLocationClientOption;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    const-string p1, "O019"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/pa;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LocationManagerOption\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p1, "AMClt"

    const-string v0, "sLocnO"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startAssistantLocation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMClt"

    const-string v1, "stAssLo"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startAssistantLocation(Landroid/webkit/WebView;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMClt"

    const-string v0, "sttAssL1"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startLocation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMClt"

    const-string v1, "stl"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopAssistantLocation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/d;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMClt"

    const-string v1, "stAssL"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopLocation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/d;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMClt"

    const-string v1, "stl"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/d;->b(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMClt"

    const-string v0, "unRL"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
