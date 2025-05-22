.class final Lcom/amap/api/col/l3s/k$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/k;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/k;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$d;->a:Lcom/amap/api/col/l3s/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/col/l3s/k$d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/col/l3s/k$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lcom/amap/api/col/l3s/k$d;

    return p0
.end method

.method public final run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/k$d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5}, Lcom/autonavi/base/amap/mapcore/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/autonavi/base/amap/mapcore/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :catchall_0
    move-exception v2

    move v1, v3

    goto :goto_4

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->e(Landroid/content/Context;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/k$d;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v2}, Lcom/amap/api/col/l3s/k;->f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$d;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v2}, Lcom/amap/api/col/l3s/k;->f(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ai;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$d;->a:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {p0, v1}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void

    :catchall_2
    move-exception v2

    :goto_4
    :try_start_4
    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    const-string v3, "AMapDelegateImp"

    const-string v4, "RemoveCacheRunnable"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object v1, p0, Lcom/amap/api/col/l3s/k$d;->a:Lcom/amap/api/col/l3s/k;

    iget-object v1, v1, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {p0, v0}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    return-void

    :catchall_4
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lcom/amap/api/col/l3s/k$d;->a:Lcom/amap/api/col/l3s/k;

    iget-object v2, v2, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {p0, v1}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    throw v0
.end method
