.class final Lcom/amap/api/col/l3s/pv$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/pv;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/pv;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/pv$1;->a:Lcom/amap/api/col/l3s/pv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-direct {v0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;-><init>(Landroid/location/Location;)V

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationType(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v2, "satellites"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setSatellites(I)V

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3s/pr;->a(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/pv$1;->a:Lcom/amap/api/col/l3s/pv;

    iput-object v0, p1, Lcom/amap/api/col/l3s/pv;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    iget-object p1, p0, Lcom/amap/api/col/l3s/pv$1;->a:Lcom/amap/api/col/l3s/pv;

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/amap/api/col/l3s/pv;->c:J

    iget-object p0, p0, Lcom/amap/api/col/l3s/pv$1;->a:Lcom/amap/api/col/l3s/pv;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/pv;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "MAPGPSLocation"

    const-string v0, "onLocationChanged"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/pv$1;->a:Lcom/amap/api/col/l3s/pv;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/pv;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "MAPGPSLocation"

    const-string v0, "onProviderDisabled"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
