.class final Lcom/amap/api/col/l3s/k$28;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->setCenterToPixel(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v1}, Lcom/amap/api/col/l3s/k;->k(Lcom/amap/api/col/l3s/k;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    iget v2, v2, Lcom/amap/api/col/l3s/k;->h:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {v1}, Lcom/amap/api/col/l3s/k;->l(Lcom/amap/api/col/l3s/k;)I

    move-result v1

    iget-object v3, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    iget v3, v3, Lcom/amap/api/col/l3s/k;->i:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorY(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    iget-object v2, v2, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    iget-object v3, v3, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setProjectionCenter(III)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$28;->a:Lcom/amap/api/col/l3s/k;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->q(Lcom/amap/api/col/l3s/k;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
