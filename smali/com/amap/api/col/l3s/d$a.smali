.class public final Lcom/amap/api/col/l3s/d$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/d;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-eq v1, v2, :cond_8

    const/16 v2, 0x3f0

    if-eq v1, v2, :cond_7

    const/16 v2, 0x3f1

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3f3

    const/16 v3, 0xe

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_0

    const/16 v2, 0x401

    const-wide/32 v3, 0x493e0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    :pswitch_0
    const-string v0, "handleMessage ACTION_REBOOT_GPS_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    iget-object v1, p1, Lcom/amap/api/col/l3s/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/amap/api/col/l3s/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/amap/api/col/l3s/g;->d:J

    sub-long/2addr v6, v8

    cmp-long p1, v6, v3

    if-lez p1, :cond_1

    const/4 v5, 0x1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/g;->a()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object v1, v1, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3s/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, v2, v3, v4}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;IJ)V

    goto :goto_1

    :pswitch_1
    const-string v0, "handleMessage ACTION_DISABLE_BACKGROUND"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->d(Lcom/amap/api/col/l3s/d;Landroid/os/Message;)V

    return-void

    :pswitch_2
    const-string v0, "handleMessage ACTION_ENABLE_BACKGROUND"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->c(Lcom/amap/api/col/l3s/d;Landroid/os/Message;)V

    return-void

    :pswitch_3
    const-string v0, "handleMessage SET_OPTION"

    iget-object v1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object p1, v1, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0}, Lcom/amap/api/col/l3s/d;->g(Lcom/amap/api/col/l3s/d;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_4
    const-string v0, "handleMessage STOP_GPS_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/g;->a()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0}, Lcom/amap/api/col/l3s/d;->f(Lcom/amap/api/col/l3s/d;)V

    return-void

    :pswitch_5
    const-string v0, "handleMessage START_LBS_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/g;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    const/16 p1, 0x3f8

    const-wide/16 v1, 0x3e8

    invoke-static {p0, p1, v1, v2}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;IJ)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0}, Lcom/amap/api/col/l3s/d;->e(Lcom/amap/api/col/l3s/d;)V

    return-void

    :pswitch_6
    const-string v0, "handleMessage START_GPS_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    iget-object v1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object v1, v1, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3s/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, v2, v3, v4}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;IJ)V

    return-void

    :pswitch_7
    const-string v0, "handleMessage ACTION_SAVE_LAST_LOCATION"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->b(Lcom/amap/api/col/l3s/d;Landroid/os/Message;)V

    return-void

    :pswitch_8
    const-string v0, "handleMessage REMOVE_LISTENER"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->b(Lcom/amap/api/col/l3s/d;Lcom/amap/api/location/AMapLocationListener;)V

    return-void

    :pswitch_9
    const-string p1, "handleMessage STOP_LOCATION"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {v1}, Lcom/amap/api/col/l3s/d;->d(Lcom/amap/api/col/l3s/d;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, v3, v0}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :pswitch_a
    :try_start_2
    const-string p1, "handleMessage START_LOCATION"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {v1}, Lcom/amap/api/col/l3s/d;->c(Lcom/amap/api/col/l3s/d;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    const/16 v1, 0xd

    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;ILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :pswitch_b
    :try_start_4
    const-string v0, "handleMessage SET_LISTENER"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;Lcom/amap/api/location/AMapLocationListener;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p1, v3, v0}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;ILandroid/os/Bundle;)V

    const-string v0, "handleMessage DESTROY"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/d;->h()V

    return-void

    :cond_6
    const-string v0, "handleMessage STOP_SOCKET"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0}, Lcom/amap/api/col/l3s/d;->i(Lcom/amap/api/col/l3s/d;)V

    return-void

    :cond_7
    const-string v0, "handleMessage START_SOCKET"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0}, Lcom/amap/api/col/l3s/d;->h(Lcom/amap/api/col/l3s/d;)V

    return-void

    :cond_8
    const-string v0, "handleMessage ACTION_GPS_LOCATIONSUCCESS"

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;Landroid/os/Message;)V

    return-void

    :cond_9
    const-string v0, "handleMessage ACTION_LBS_LOCATIONSUCCES"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$a;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    :goto_2
    if-nez v0, :cond_a

    const-string v0, "handleMessage"

    :cond_a
    const-string p1, "AMapLocationManage$MHandlerr"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3ff
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
