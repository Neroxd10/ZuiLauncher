.class final Lcom/amap/api/col/l3s/k$19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->setTrafficEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$19;->c:Lcom/amap/api/col/l3s/k;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$19;->a:Z

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/k$19;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$19;->c:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k$19;->a:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$19;->c:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k$19;->b:Z

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setTrafficEnabled(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$19;->c:Lcom/amap/api/col/l3s/k;

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->p(Lcom/amap/api/col/l3s/k;)Lcom/autonavi/base/ae/gmap/GLMapRender;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k$19;->a:Z

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setTrafficMode(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$19;->c:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/k$19;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setTrafficEnable(IZ)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$19;->c:Lcom/amap/api/col/l3s/k;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/k;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method
