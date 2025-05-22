.class final Lcom/amap/api/col/l3s/ie$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ie;->requestInputtipsAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ie;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ie;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ie$1;->a:Lcom/amap/api/col/l3s/ie;

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

    iget-object v1, p0, Lcom/amap/api/col/l3s/ie$1;->a:Lcom/amap/api/col/l3s/ie;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ie;->a(Lcom/amap/api/col/l3s/ie;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ie$1;->a:Lcom/amap/api/col/l3s/ie;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ie$1;->a:Lcom/amap/api/col/l3s/ie;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ie;->b(Lcom/amap/api/col/l3s/ie;)Lcom/amap/api/services/help/InputtipsQuery;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/ie;->a(Lcom/amap/api/col/l3s/ie;Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ie$1;->a:Lcom/amap/api/col/l3s/ie;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ie;->c(Lcom/amap/api/col/l3s/ie;)Landroid/os/Handler;

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

    iget-object p0, p0, Lcom/amap/api/col/l3s/ie$1;->a:Lcom/amap/api/col/l3s/ie;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ie;->c(Lcom/amap/api/col/l3s/ie;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ie$1;->a:Lcom/amap/api/col/l3s/ie;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ie;->c(Lcom/amap/api/col/l3s/ie;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v1
.end method
