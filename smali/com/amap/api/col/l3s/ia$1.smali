.class final Lcom/amap/api/col/l3s/ia$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ia;->searchCloudAsyn(Lcom/amap/api/services/cloud/CloudSearch$Query;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/cloud/CloudSearch$Query;

.field final synthetic b:Lcom/amap/api/col/l3s/ia;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ia;Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ia$1;->b:Lcom/amap/api/col/l3s/ia;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ia$1;->a:Lcom/amap/api/services/cloud/CloudSearch$Query;

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

    const/16 v1, 0xc

    :try_start_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x2bc

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/amap/api/col/l3s/gw$d;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/gw$d;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/ia$1;->b:Lcom/amap/api/col/l3s/ia;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ia;->a(Lcom/amap/api/col/l3s/ia;)Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3s/gw$d;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ia$1;->b:Lcom/amap/api/col/l3s/ia;

    iget-object v3, p0, Lcom/amap/api/col/l3s/ia$1;->a:Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/ia;->a(Lcom/amap/api/col/l3s/ia;Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3s/gw$d;->a:Lcom/amap/api/services/cloud/CloudResult;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ia$1;->b:Lcom/amap/api/col/l3s/ia;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ia;->b(Lcom/amap/api/col/l3s/ia;)Landroid/os/Handler;

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

    iget-object p0, p0, Lcom/amap/api/col/l3s/ia$1;->b:Lcom/amap/api/col/l3s/ia;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ia;->b(Lcom/amap/api/col/l3s/ia;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ia$1;->b:Lcom/amap/api/col/l3s/ia;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ia;->b(Lcom/amap/api/col/l3s/ia;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v1
.end method
