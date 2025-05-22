.class final Lcom/amap/api/col/l3s/ih$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ih;->searchRoutePOIAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ih;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ih;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "errorCode"

    iget-object v1, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ih;->a(Lcom/amap/api/col/l3s/ih;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/ih;->searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/amap/api/col/l3s/gw$j;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/gw$j;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-static {v4}, Lcom/amap/api/col/l3s/ih;->b(Lcom/amap/api/col/l3s/ih;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/col/l3s/gw$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    iput-object v3, v0, Lcom/amap/api/col/l3s/gw$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ih;->a(Lcom/amap/api/col/l3s/ih;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/amap/api/col/l3s/gw$j;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/gw$j;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-static {v4}, Lcom/amap/api/col/l3s/ih;->b(Lcom/amap/api/col/l3s/ih;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/col/l3s/gw$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    iput-object v3, v0, Lcom/amap/api/col/l3s/gw$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ih;->a(Lcom/amap/api/col/l3s/ih;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    new-instance v4, Lcom/amap/api/col/l3s/gw$j;

    invoke-direct {v4}, Lcom/amap/api/col/l3s/gw$j;-><init>()V

    iget-object v5, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-static {v5}, Lcom/amap/api/col/l3s/ih;->b(Lcom/amap/api/col/l3s/ih;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/col/l3s/gw$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    iput-object v3, v4, Lcom/amap/api/col/l3s/gw$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ih$1;->a:Lcom/amap/api/col/l3s/ih;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ih;->a(Lcom/amap/api/col/l3s/ih;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
