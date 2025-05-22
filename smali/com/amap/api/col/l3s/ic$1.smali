.class final Lcom/amap/api/col/l3s/ic$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ic;->searchDistrictAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ic;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "result"

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Lcom/amap/api/services/district/DistrictResult;

    invoke-direct {v2}, Lcom/amap/api/services/district/DistrictResult;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ic;->a(Lcom/amap/api/col/l3s/ic;)Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/district/DistrictResult;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    const/4 v3, 0x4

    :try_start_0
    iget-object v4, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/ic;->searchDistrict()Lcom/amap/api/services/district/DistrictResult;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Lcom/amap/api/services/core/AMapException;

    invoke-direct {v4}, Lcom/amap/api/services/core/AMapException;-><init>()V

    invoke-virtual {v2, v4}, Lcom/amap/api/services/district/DistrictResult;->setAMapException(Lcom/amap/api/services/core/AMapException;)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ic;->b(Lcom/amap/api/col/l3s/ic;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ic;->c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ic;->c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    const-string v5, "DistrictSearch"

    const-string v6, "searchDistrictAnsyThrowable"

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ic;->b(Lcom/amap/api/col/l3s/ic;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ic;->c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ic;->c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v2, v4}, Lcom/amap/api/services/district/DistrictResult;->setAMapException(Lcom/amap/api/services/core/AMapException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ic;->b(Lcom/amap/api/col/l3s/ic;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ic;->c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ic;->c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void

    :catchall_1
    move-exception v4

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ic;->b(Lcom/amap/api/col/l3s/ic;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ic;->c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/amap/api/col/l3s/ic$1;->a:Lcom/amap/api/col/l3s/ic;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ic;->c(Lcom/amap/api/col/l3s/ic;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    throw v4
.end method
