.class public final Lcom/amap/api/col/l3s/d$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/d;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3s/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    iget-boolean v1, v1, Lcom/amap/api/col/l3s/d;->n:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "handleMessage RESULT_LBS_ON_CALLBACK"

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocation;

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;Lcom/amap/api/location/AMapLocation;)V

    return-void

    :pswitch_1
    const-string v0, "handleMessage RESULT_INSTALLED_MOCK_APP"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "installMockApp"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/d;->b(Z)Z

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x85d    # 3.0E-42f

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/pa;->a(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_3
    const-string v0, "handleMessage RESULT_NGPS_ABLE"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    const-string v1, "ngpsAble"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/d;->b(Lcom/amap/api/col/l3s/d;Z)Z

    return-void

    :pswitch_4
    const-string v0, "handleMessage RESULT_GPS_GEO_SUCCESS"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    iget-object v1, v1, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->c:Lcom/amap/api/col/l3s/g;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/g;->a(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_5
    const-string v0, "handleMessage RESULT_GPS_LOCATIONCHANGE"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    iget-object v2, v2, Lcom/amap/api/col/l3s/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ow;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    const/16 v1, 0xa

    invoke-static {p0, v1, p1}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;ILandroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "handleMessage RESULT_GPS_LOCATIONSUCCESS"

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    const-string v0, "handleMessage RESULT_LBS_LOCATIONSUCCESS"

    iget-object v1, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    iget-object v1, v1, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/d$c;->a:Lcom/amap/api/col/l3s/d;

    iget-object p0, p0, Lcom/amap/api/col/l3s/d;->x:Lcom/amap/api/col/l3s/d$a;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    if-nez v0, :cond_4

    const-string v0, "handleMessage"

    :cond_4
    const-string p1, "AmapLocationManager$MainHandler"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
