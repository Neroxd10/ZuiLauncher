.class final Lcom/amap/api/col/l3s/k$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const-class v0, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    const-class v1, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    if-eqz p1, :cond_1d

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v2}, Lcom/amap/api/col/l3s/k;->a(Lcom/amap/api/col/l3s/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_10

    :cond_0
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object p0

    const-class v0, Lcom/amap/api/maps/AMap$OnPOIClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/AMap$OnPOIClickListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/maps/model/Poi;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnPOIClickListener;->onPOIClick(Lcom/amap/api/maps/model/Poi;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    const-string p1, "AMapDelegateImp"

    const-string v0, "OnPOIClickListener.onPOIClick"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v0

    const-class v1, Lcom/amap/api/maps/AMap$OnMapClickListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v2, p1, v1}, Lcom/amap/api/col/l3s/k;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    :try_start_5
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/AMap$OnMapClickListener;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v2}, Lcom/amap/api/maps/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_1

    :cond_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    :catchall_2
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_a
    const-string p1, "AMapDelegateImp"

    const-string v0, "OnMapClickListener.onMapClick"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->i(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ay;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->j(Lcom/amap/api/col/l3s/k;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->i(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ay;->c()Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;->redrawInfoWindow()V

    goto/16 :goto_c

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/col/l3s/ai;->b(Z)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    move v3, v1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/amap/api/col/l3s/ai;->a(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    return-void

    :pswitch_4
    :try_start_b
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object p1

    const-class v0, Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    monitor-enter p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_2
    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$OnMapLoadedListener;->onMapLoaded()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    monitor-exit p1

    goto :goto_3

    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception p1

    :try_start_e
    const-string v0, "AMapDelegateImp"

    const-string v1, "onMapLoaded"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fo;->i()V

    return-void

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v4}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object v4

    if-eqz v4, :cond_c

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v5}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/fo;->f()Lcom/amap/api/col/l3s/fr;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5, v4}, Lcom/amap/api/col/l3s/fr;->onDraw(Landroid/graphics/Canvas;)V

    :cond_8
    iget-object v5, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v5}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amap/api/col/l3s/fo;->a(Landroid/graphics/Canvas;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    :try_start_f
    iget-object v4, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v4}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    monitor-enter v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move v5, v3

    :goto_4
    :try_start_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    iget-object v8, v8, Lcom/amap/api/col/l3s/k;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v6, v7}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    monitor-exit v4

    goto :goto_5

    :catchall_6
    move-exception p1

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw p1

    :cond_a
    :goto_5
    iget-object v4, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v4}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :goto_6
    :try_start_12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-interface {v5, v2}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-interface {v5, v2, p1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    monitor-exit v4

    goto :goto_a

    :catchall_7
    move-exception p1

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    throw p1

    :cond_c
    iget-object v2, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v2}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    move v5, v3

    :goto_7
    :try_start_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    invoke-interface {v6, v4}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    monitor-exit v2

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :try_start_15
    throw p1

    :cond_e
    :goto_8
    iget-object v2, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v2}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :goto_9
    :try_start_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_f

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-interface {v5, v4}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-interface {v5, v4, p1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    monitor-exit v2

    goto :goto_a

    :catchall_9
    move-exception p1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :try_start_17
    throw p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :catchall_a
    :cond_10
    :goto_a
    :try_start_18
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;)V

    :cond_11
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/p;->a(Ljava/lang/Integer;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    return-void

    :pswitch_6
    :try_start_19
    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object p0

    const-class v0, Lcom/amap/api/maps/AMap$OnMapTouchListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    monitor-enter p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :try_start_1a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/AMap$OnMapTouchListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_b

    :cond_12
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :try_start_1b
    throw p1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    :cond_13
    return-void

    :catchall_c
    move-exception p0

    :try_start_1c
    const-string p1, "AMapDelegateImp"

    const-string v0, "onTouchHandler"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fo;->h()V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p1}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->getZoomLevel()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/fo;->a(Ljava/lang/Float;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    :cond_14
    :goto_c
    return-void

    :pswitch_9
    :try_start_1d
    iget-object p1, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/k;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->c(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/fo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fo;->a(Lcom/amap/api/maps/model/CameraPosition;)V

    :cond_15
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0, p1}, Lcom/amap/api/col/l3s/k;->a(Lcom/amap/api/col/l3s/k;Lcom/amap/api/maps/model/CameraPosition;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->d(Lcom/amap/api/col/l3s/k;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->e(Lcom/amap/api/col/l3s/k;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/col/l3s/ai;->b(Z)V

    :cond_16
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k;->b()V

    :cond_17
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->g(Lcom/amap/api/col/l3s/k;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/k;->redrawInfoWindow()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->h(Lcom/amap/api/col/l3s/k;)Z

    :cond_18
    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/k;->a(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    return-void

    :catchall_d
    move-exception p0

    :try_start_1e
    const-string p1, "AMapDelegateImp"

    const-string v0, "CameraUpdateFinish"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/maps/model/CameraPosition;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    :try_start_1f
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v0

    const-class v1, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_1a

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    monitor-enter v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    :try_start_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-interface {v2, p1}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V

    goto :goto_d

    :cond_19
    monitor-exit v0

    goto :goto_e

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    :try_start_21
    throw p1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    :catchall_f
    move-exception p1

    :try_start_22
    invoke-static {p1}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_e
    iget-object p0, p0, Lcom/amap/api/col/l3s/k$1;->a:Lcom/amap/api/col/l3s/k;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->addChangedCounter()V

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key\u9a8c\u8bc1\u5931\u8d25\uff1a["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1c

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_1c
    sget-object p1, Lcom/amap/api/col/l3s/iv;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "amapsdk"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    return-void

    :catchall_10
    move-exception p0

    const-string p1, "AMapDelegateImp"

    const-string v0, "handleMessage"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
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
