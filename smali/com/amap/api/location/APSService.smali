.class public Lcom/amap/api/location/APSService;
.super Landroid/app/Service;
.source ""


# instance fields
.field a:Lcom/amap/api/col/l3s/f;

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/location/APSService;->b:I

    iput-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/col/l3s/f;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/f;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "APSService"

    const-string v0, "onBind"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/col/l3s/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/f;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/col/l3s/f;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/col/l3s/f;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/col/l3s/f;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/f;->b()V

    iget-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    const-string p3, "g"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const-string p3, "i"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v1, "h"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0, p3, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    iput-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    iget p1, p0, Lcom/amap/api/location/APSService;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/amap/api/location/APSService;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    const-string p3, "j"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amap/api/location/APSService;->b:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/amap/api/location/APSService;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/amap/api/location/APSService;->b:I

    :cond_1
    iget p1, p0, Lcom/amap/api/location/APSService;->b:I

    if-gtz p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    iput-boolean p2, p0, Lcom/amap/api/location/APSService;->c:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return p2
.end method
