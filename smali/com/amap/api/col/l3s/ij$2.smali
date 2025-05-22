.class final Lcom/amap/api/col/l3s/ij$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ij;->searchBusRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;

.field final synthetic b:Lcom/amap/api/col/l3s/ij;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ij;Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ij$2;->b:Lcom/amap/api/col/l3s/ij;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ij$2;->a:Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ij$2;->b:Lcom/amap/api/col/l3s/ij;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ij;->a(Lcom/amap/api/col/l3s/ij;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x44f

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/ij$2;->b:Lcom/amap/api/col/l3s/ij;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ij;->a(Lcom/amap/api/col/l3s/ij;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ij$2;->b:Lcom/amap/api/col/l3s/ij;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ij$2;->a:Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/ij;->searchBusRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "shareurlkey"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 p0, 0x3e8

    iput p0, v0, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result p0

    iput p0, v0, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw p0
.end method
