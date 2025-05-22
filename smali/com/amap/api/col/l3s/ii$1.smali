.class final Lcom/amap/api/col/l3s/ii$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ii;->calculateWalkRouteAsyn(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

.field final synthetic b:Lcom/amap/api/col/l3s/ii;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ii;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ii$1;->b:Lcom/amap/api/col/l3s/ii;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ii$1;->a:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "errorCode"

    const-string v1, "result"

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x66

    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/amap/api/col/l3s/ii$1;->b:Lcom/amap/api/col/l3s/ii;

    iget-object v6, p0, Lcom/amap/api/col/l3s/ii$1;->a:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    invoke-virtual {v5, v6}, Lcom/amap/api/col/l3s/ii;->calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ii$1;->b:Lcom/amap/api/col/l3s/ii;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/col/l3s/ii;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii$1;->b:Lcom/amap/api/col/l3s/ii;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ii;->b(Lcom/amap/api/col/l3s/ii;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_1
    invoke-virtual {v5}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ii$1;->b:Lcom/amap/api/col/l3s/ii;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/col/l3s/ii;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii$1;->b:Lcom/amap/api/col/l3s/ii;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ii;->b(Lcom/amap/api/col/l3s/ii;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    iget-object v5, p0, Lcom/amap/api/col/l3s/ii$1;->b:Lcom/amap/api/col/l3s/ii;

    invoke-static {v5}, Lcom/amap/api/col/l3s/ii;->a(Lcom/amap/api/col/l3s/ii;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ii$1;->b:Lcom/amap/api/col/l3s/ii;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ii;->b(Lcom/amap/api/col/l3s/ii;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
