.class final Lcom/amap/api/col/l3s/ig$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ig;->searchPOIIdAsyn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/col/l3s/ig;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ig$2;->b:Lcom/amap/api/col/l3s/ig;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ig$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "errorCode"

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x25a

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/amap/api/col/l3s/ig$2;->b:Lcom/amap/api/col/l3s/ig;

    iget-object v5, p0, Lcom/amap/api/col/l3s/ig$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amap/api/col/l3s/ig;->searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/amap/api/col/l3s/gw$g;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/gw$g;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/l3s/ig$2;->b:Lcom/amap/api/col/l3s/ig;

    invoke-static {v4}, Lcom/amap/api/col/l3s/ig;->b(Lcom/amap/api/col/l3s/ig;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/col/l3s/gw$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    iput-object v3, v0, Lcom/amap/api/col/l3s/gw$g;->a:Lcom/amap/api/services/core/PoiItem;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig$2;->b:Lcom/amap/api/col/l3s/ig;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ig;->a(Lcom/amap/api/col/l3s/ig;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "PoiSearch"

    const-string v6, "searchPOIIdAsyn"

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/amap/api/col/l3s/gw$g;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/gw$g;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/l3s/ig$2;->b:Lcom/amap/api/col/l3s/ig;

    invoke-static {v4}, Lcom/amap/api/col/l3s/ig;->b(Lcom/amap/api/col/l3s/ig;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/col/l3s/gw$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    iput-object v3, v0, Lcom/amap/api/col/l3s/gw$g;->a:Lcom/amap/api/services/core/PoiItem;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig$2;->b:Lcom/amap/api/col/l3s/ig;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ig;->a(Lcom/amap/api/col/l3s/ig;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    new-instance v4, Lcom/amap/api/col/l3s/gw$g;

    invoke-direct {v4}, Lcom/amap/api/col/l3s/gw$g;-><init>()V

    iget-object v5, p0, Lcom/amap/api/col/l3s/ig$2;->b:Lcom/amap/api/col/l3s/ig;

    invoke-static {v5}, Lcom/amap/api/col/l3s/ig;->b(Lcom/amap/api/col/l3s/ig;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/col/l3s/gw$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    iput-object v3, v4, Lcom/amap/api/col/l3s/gw$g;->a:Lcom/amap/api/services/core/PoiItem;

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ig$2;->b:Lcom/amap/api/col/l3s/ig;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ig;->a(Lcom/amap/api/col/l3s/ig;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
