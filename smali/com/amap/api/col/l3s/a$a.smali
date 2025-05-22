.class final Lcom/amap/api/col/l3s/a$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/a;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v1, 0x3e8

    const-string v2, "resultList"

    const-string v3, "errorCode"

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "customId"

    const-string v7, "GeoFenceManager"

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->h()V

    goto/16 :goto_3

    :pswitch_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->e(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/a;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const-string v0, "fc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/fence/GeoFence;

    iget-object v0, p0, Lcom/amap/api/col/l3s/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->c()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_2
    return-void

    :pswitch_3
    :try_start_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->c()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->a(Landroid/os/Bundle;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/a;->r:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x7d0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "interval"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->r:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/col/l3s/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/a;->m:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->r:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->r:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    iput-boolean v8, p0, Lcom/amap/api/col/l3s/a;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    const-string p1, "doStartContinueLocation"

    invoke-static {p0, v7, p1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->r:Lcom/amap/api/location/AMapLocationClient;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->e()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v8}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object p1, p0, Lcom/amap/api/col/l3s/a;->r:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/col/l3s/a;->u:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/a;->r:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    return-void

    :catchall_2
    move-exception p0

    :try_start_7
    const-string p1, "doStartOnceLocation"

    invoke-static {p0, v7, p1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    iget-object p0, p0, Lcom/amap/api/col/l3s/a;->s:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/a;->a(Lcom/amap/api/location/AMapLocation;)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/a;->f()V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->d(Landroid/os/Bundle;)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->b(Landroid/os/Bundle;)V

    return-void

    :pswitch_b
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->c(Landroid/os/Bundle;)V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v4, "pointList"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x2

    if-gt v4, v9, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1, v8}, Lcom/amap/api/col/l3s/a;->a(Landroid/os/Bundle;Z)Lcom/amap/api/fence/GeoFence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->b(Lcom/amap/api/fence/GeoFence;)I

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    move-object v4, v5

    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1, p1}, Lcom/amap/api/col/l3s/a;->a(ILandroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    :try_start_9
    const-string p1, "doAddGeoFencePolygon"

    invoke-static {p0, v7, p1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/amap/api/col/l3s/a$a;->a:Lcom/amap/api/col/l3s/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    const-string v4, "centerPoint"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/amap/api/location/DPoint;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v10

    const-wide v12, 0x4056800000000000L    # 90.0

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_a

    invoke-virtual {v4}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v10

    const-wide v12, -0x3fa9800000000000L    # -90.0

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_a

    invoke-virtual {v4}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_a

    invoke-virtual {v4}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v10

    const-wide v12, -0x3f99800000000000L    # -180.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p1, v5}, Lcom/amap/api/col/l3s/a;->a(Landroid/os/Bundle;Z)Lcom/amap/api/fence/GeoFence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/a;->b(Lcom/amap/api/fence/GeoFence;)I

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    :goto_1
    const-string p1, "\u6dfb\u52a0\u56f4\u680f\u5931\u8d25"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u7ecf\u7eac\u5ea6\u9519\u8bef\uff0c\u4f20\u5165\u7684\u7eac\u5ea6\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, "\u4f20\u5165\u7684\u7ecf\u5ea6:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, v8, v4, v5}, Lcom/amap/api/col/l3s/a;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v4, v9

    :cond_c
    move-object v9, v4

    :cond_d
    :goto_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/amap/api/col/l3s/a;->a(ILandroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    :try_start_b
    const-string p1, "doAddGeoFenceRound"

    invoke-static {p0, v7, p1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
