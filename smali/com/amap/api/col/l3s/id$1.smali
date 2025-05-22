.class final Lcom/amap/api/col/l3s/id$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/id;->getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/geocoder/RegeocodeQuery;

.field final synthetic b:Lcom/amap/api/col/l3s/id;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/id;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/id$1;->b:Lcom/amap/api/col/l3s/id;

    iput-object p2, p0, Lcom/amap/api/col/l3s/id$1;->a:Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    :try_start_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0xc9

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/amap/api/col/l3s/gw$i;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/gw$i;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/id$1;->b:Lcom/amap/api/col/l3s/id;

    invoke-static {v2}, Lcom/amap/api/col/l3s/id;->a(Lcom/amap/api/col/l3s/id;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3s/gw$i;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/l3s/id$1;->b:Lcom/amap/api/col/l3s/id;

    iget-object v3, p0, Lcom/amap/api/col/l3s/id$1;->a:Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3s/id;->getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v2

    new-instance v3, Lcom/amap/api/services/geocoder/RegeocodeResult;

    iget-object v4, p0, Lcom/amap/api/col/l3s/id$1;->a:Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-direct {v3, v4, v2}, Lcom/amap/api/services/geocoder/RegeocodeResult;-><init>(Lcom/amap/api/services/geocoder/RegeocodeQuery;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    iput-object v3, v1, Lcom/amap/api/col/l3s/gw$i;->a:Lcom/amap/api/services/geocoder/RegeocodeResult;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/id$1;->b:Lcom/amap/api/col/l3s/id;

    invoke-static {p0}, Lcom/amap/api/col/l3s/id;->b(Lcom/amap/api/col/l3s/id;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/id$1;->b:Lcom/amap/api/col/l3s/id;

    invoke-static {p0}, Lcom/amap/api/col/l3s/id;->b(Lcom/amap/api/col/l3s/id;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/id$1;->b:Lcom/amap/api/col/l3s/id;

    invoke-static {p0}, Lcom/amap/api/col/l3s/id;->b(Lcom/amap/api/col/l3s/id;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v1
.end method
