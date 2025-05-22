.class public final Lcom/amap/api/col/l3s/pz;
.super Landroid/os/Handler;
.source ""


# instance fields
.field a:Lcom/amap/api/col/l3s/py;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/amap/api/col/l3s/py;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    iput-object p2, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "ClientActionHandler"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/py;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ACTION_DESTROY"

    invoke-static {p0, v1, p1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    :try_start_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/py;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const-string p1, "ACTION_STOP_LOCATION"

    :goto_0
    invoke-static {p0, v1, p1}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    :try_start_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/py;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    const-string p1, "ACTION_GET_LOCATION"

    goto :goto_0

    :pswitch_3
    :try_start_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/py;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    const-string p1, "ACTION_START_LOCATION"

    goto :goto_0

    :pswitch_4
    :try_start_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    iget-object p0, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/py;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    const-string p1, "ACTION_REMOVE_LISTENER"

    goto :goto_0

    :pswitch_5
    :try_start_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    iget-object p0, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz p1, :cond_2

    :try_start_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/py;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/py;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/py;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/py;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :catchall_5
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_1
    :try_start_7
    const-string p1, "MapLocationManager"

    const-string v0, "doSetLocationListener"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/pq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    return-void

    :catchall_6
    move-exception p0

    const-string p1, "ACTION_SET_LISTENER"

    goto :goto_0

    :pswitch_6
    :try_start_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object p0, p0, Lcom/amap/api/col/l3s/pz;->a:Lcom/amap/api/col/l3s/py;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/py;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    return-void

    :catchall_7
    move-exception p0

    const-string p1, "ACTION_SET_OPTION"

    goto :goto_0

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
