.class final Lcom/amap/api/col/l3s/hy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/hy;->searchBusLineAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/hy;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/hy;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/hy$1;->a:Lcom/amap/api/col/l3s/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    :try_start_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/amap/api/col/l3s/gw$a;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/gw$a;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/l3s/hy$1;->a:Lcom/amap/api/col/l3s/hy;

    invoke-static {v2}, Lcom/amap/api/col/l3s/hy;->a(Lcom/amap/api/col/l3s/hy;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3s/gw$a;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    iget-object v2, p0, Lcom/amap/api/col/l3s/hy$1;->a:Lcom/amap/api/col/l3s/hy;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/hy;->searchBusLine()Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3s/gw$a;->a:Lcom/amap/api/services/busline/BusLineResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/hy$1;->a:Lcom/amap/api/col/l3s/hy;

    invoke-static {p0}, Lcom/amap/api/col/l3s/hy;->b(Lcom/amap/api/col/l3s/hy;)Landroid/os/Handler;

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

    iget-object p0, p0, Lcom/amap/api/col/l3s/hy$1;->a:Lcom/amap/api/col/l3s/hy;

    invoke-static {p0}, Lcom/amap/api/col/l3s/hy;->b(Lcom/amap/api/col/l3s/hy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/hy$1;->a:Lcom/amap/api/col/l3s/hy;

    invoke-static {p0}, Lcom/amap/api/col/l3s/hy;->b(Lcom/amap/api/col/l3s/hy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v1
.end method
