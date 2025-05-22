.class public Lcom/amap/api/fence/GeoFenceClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final GEOFENCE_IN:I = 0x1

.field public static final GEOFENCE_OUT:I = 0x2

.field public static final GEOFENCE_STAYED:I = 0x4


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/amap/api/col/l3s/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/fence/GeoFenceClient;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/fence/GeoFenceClient;->a:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/col/l3s/a;

    invoke-direct {v0, p1}, Lcom/amap/api/col/l3s/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

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
    const-string p1, "GeoFenceClient"

    const-string v0, "<init>"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addGeoFence(Lcom/amap/api/location/DPoint;FLjava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/a;->a(Lcom/amap/api/location/DPoint;FLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string p2, "addGeoFence round"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addGeoFence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string p2, "addGeoFence district"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addGeoFence(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/DPoint;FILjava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/l3s/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/DPoint;FILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string p2, "addGeoFence searche"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addGeoFence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/l3s/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string p2, "addGeoFence searche"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addGeoFence(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/location/DPoint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/a;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string p2, "addGeoFence polygon"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string v0, "creatPendingIntent"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAllGeoFence()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->b()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "GeoFenceClient"

    const-string v2, "getGeoFenceList"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public isPause()Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->j()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "GeoFenceClient"

    const-string v1, "isPause"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public pauseGeoFence()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "GeoFenceClient"

    const-string v1, "pauseGeoFence"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeGeoFence()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "GeoFenceClient"

    const-string v1, "removeGeoFence"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeGeoFence(Lcom/amap/api/fence/GeoFence;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->a(Lcom/amap/api/fence/GeoFence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string v0, "removeGeoFence1"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public resumeGeoFence()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "GeoFenceClient"

    const-string v1, "resumeGeoFence"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActivateAction(I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string v0, "setActivatesAction"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGeoFenceAble(Ljava/lang/String;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/a;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string p2, "setGeoFenceAble"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGeoFenceListener(Lcom/amap/api/fence/GeoFenceListener;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/fence/GeoFenceClient;->b:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->a(Lcom/amap/api/fence/GeoFenceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "GeoFenceClient"

    const-string v0, "setGeoFenceListener"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
