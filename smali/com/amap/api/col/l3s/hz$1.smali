.class final Lcom/amap/api/col/l3s/hz$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/hz;->searchBusStationAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/hz;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/hz$1;->a:Lcom/amap/api/col/l3s/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    :try_start_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/amap/api/col/l3s/gw$b;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/gw$b;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/hz$1;->a:Lcom/amap/api/col/l3s/hz;

    invoke-static {v2}, Lcom/amap/api/col/l3s/hz;->a(Lcom/amap/api/col/l3s/hz;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3s/gw$b;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/l3s/hz$1;->a:Lcom/amap/api/col/l3s/hz;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/hz;->searchBusStation()Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v2

    const/16 v3, 0x3e8

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object v2, v1, Lcom/amap/api/col/l3s/gw$b;->a:Lcom/amap/api/services/busline/BusStationResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hz$1;->a:Lcom/amap/api/col/l3s/hz;

    invoke-static {p0}, Lcom/amap/api/col/l3s/hz;->b(Lcom/amap/api/col/l3s/hz;)Landroid/os/Handler;

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

    iput v1, v0, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hz$1;->a:Lcom/amap/api/col/l3s/hz;

    invoke-static {p0}, Lcom/amap/api/col/l3s/hz;->b(Lcom/amap/api/col/l3s/hz;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/hz$1;->a:Lcom/amap/api/col/l3s/hz;

    invoke-static {p0}, Lcom/amap/api/col/l3s/hz;->b(Lcom/amap/api/col/l3s/hz;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v1
.end method
