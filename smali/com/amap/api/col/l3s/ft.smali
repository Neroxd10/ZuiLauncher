.class public final Lcom/amap/api/col/l3s/ft;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

.field c:Ljava/lang/Object;

.field d:Z

.field e:Lcom/amap/api/col/l3s/pw;

.field f:Lcom/amap/api/col/l3s/je;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ft;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ft;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/ft;->d:Z

    iput-object v0, p0, Lcom/amap/api/col/l3s/ft;->e:Lcom/amap/api/col/l3s/pw;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ft;->f:Lcom/amap/api/col/l3s/je;

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/qf;->a()Lcom/amap/api/col/l3s/je;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/ft;->f:Lcom/amap/api/col/l3s/je;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v2, Lcom/amap/api/col/l3s/pw;

    invoke-direct {v2}, Lcom/amap/api/col/l3s/pw;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3s/ft;->e:Lcom/amap/api/col/l3s/pw;

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ft;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string p1, "com.amap.api.location.AMapLocationClient"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/amap/api/col/l3s/ft;->a:Landroid/content/Context;

    const-string v4, "com.amap.api.location.APSService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, p0, Lcom/amap/api/col/l3s/ft;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :try_start_4
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ft;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    :try_start_5
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/ft;->d:Z

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/col/l3s/ft;->d:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ft;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ft;->c:Ljava/lang/Object;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/ft;->a:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/col/l3s/py;

    invoke-direct {v0, p1}, Lcom/amap/api/col/l3s/py;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ft;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    return-void

    :catchall_3
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    const-string p1, "AMapLocationClient"

    const-string v0, "AMapLocationClient 1"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ft;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ft;->c:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ft;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->startLocation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMapLocationClient"

    const-string v1, "startLocation"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ft;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ft;->e:Lcom/amap/api/col/l3s/pw;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ft;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/amap/api/col/l3s/pw;->a(Ljava/lang/Object;Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ft;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->setLocationListener(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AMapLocationClient"

    const-string v0, "setLocationListener"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ft;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ft;->c:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/pw;->a(Ljava/lang/Object;Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ft;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->setLocationOption(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LocationManagerOption\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p1, "AMapLocationClient"

    const-string v0, "setLocationOption"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ft;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ft;->c:Ljava/lang/Object;

    check-cast p0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ft;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->stopLocation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMapLocationClient"

    const-string v1, "stopLocation"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ft;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ft;->c:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ft;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->destroy()V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ft;->e:Lcom/amap/api/col/l3s/pw;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/ft;->e:Lcom/amap/api/col/l3s/pw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AMapLocationClient"

    const-string v1, "onDestroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
