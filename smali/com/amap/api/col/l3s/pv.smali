.class public final Lcom/amap/api/col/l3s/pv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/location/LocationManager;

.field volatile c:J

.field volatile d:Z

.field e:Z

.field volatile f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.amap.api.maps.CoordinateConverter"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amap/api/col/l3s/pv;->c:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/pv;->d:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/pv;->e:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/col/l3s/pv;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    iput-object v2, p0, Lcom/amap/api/col/l3s/pv;->g:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/pv;->h:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/pv;->i:Z

    new-instance v2, Lcom/amap/api/col/l3s/pv$1;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3s/pv$1;-><init>(Lcom/amap/api/col/l3s/pv;)V

    iput-object v2, p0, Lcom/amap/api/col/l3s/pv;->j:Landroid/location/LocationListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/pv;->a:Landroid/content/Context;

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/pv;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/l3s/pv;->g:Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/amap/api/col/l3s/pv;->i:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/amap/api/col/l3s/pv;->h:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/pv;->g:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "com.amap.api.maps2d.CoordinateConverter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-nez p1, :cond_3

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/pv;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/pv;->b:Landroid/location/LocationManager;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/pv;->a:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/amap/api/col/l3s/pv;->b:Landroid/location/LocationManager;

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/pv;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/pv;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/pv;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/pv;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    iget-object v0, p0, Lcom/amap/api/col/l3s/pv;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/pv;->j:Landroid/location/LocationListener;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method public final b()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/l3s/pv;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/pv;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->clone()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/pv;->g:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/col/l3s/pq;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "GPS"

    aput-object v4, v1, v3

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    iget-boolean v5, p0, Lcom/amap/api/col/l3s/pv;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "valueOf"

    const/4 v7, 0x2

    if-eqz v5, :cond_1

    :try_start_1
    const-string v5, "com.amap.api.maps.CoordinateConverter$CoordType"

    invoke-static {v5, v6, v1, v4}, Lcom/amap/api/col/l3s/ps;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "com.amap.api.maps.model.LatLng"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v5, "com.amap.api.maps2d.CoordinateConverter$CoordType"

    invoke-static {v5, v6, v1, v4}, Lcom/amap/api/col/l3s/ps;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "com.amap.api.maps2d.model.LatLng"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/amap/api/col/l3s/pv;->g:Ljava/lang/Object;

    const-string v6, "coord"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v5, v6, v7}, Lcom/amap/api/col/l3s/ps;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/amap/api/col/l3s/pv;->g:Ljava/lang/Object;

    const-string v5, "from"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v4, v5, v2}, Lcom/amap/api/col/l3s/ps;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/amap/api/col/l3s/pv;->g:Ljava/lang/Object;

    const-string v1, "convert"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ps;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLatitude(D)V

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLongitude(D)V

    goto :goto_1

    :cond_2
    iget-boolean p0, p0, Lcom/amap/api/col/l3s/pv;->i:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/col/l3s/pq;->a(DD)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/col/l3s/pg;->a(DD)[D

    move-result-object p0

    aget-wide v1, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLatitude(D)V

    aget-wide v1, p0, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLongitude(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    return-object v0
.end method
