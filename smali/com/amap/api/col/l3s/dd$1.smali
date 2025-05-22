.class final Lcom/amap/api/col/l3s/dd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/dd;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/dd;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dd$1;->a:Lcom/amap/api/col/l3s/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd$1;->a:Lcom/amap/api/col/l3s/dd;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dd;->a(Lcom/amap/api/col/l3s/dd;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd$1;->a:Lcom/amap/api/col/l3s/dd;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dd;->a(Lcom/amap/api/col/l3s/dd;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd$1;->a:Lcom/amap/api/col/l3s/dd;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dd;->b(Lcom/amap/api/col/l3s/dd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dd$1;->a:Lcom/amap/api/col/l3s/dd;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dd;->a(Lcom/amap/api/col/l3s/dd;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/col/l3s/dd$1;->a:Lcom/amap/api/col/l3s/dd;

    invoke-static {v2}, Lcom/amap/api/col/l3s/dd;->b(Lcom/amap/api/col/l3s/dd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->removeNativeOverlay(ILjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dd$1;->a:Lcom/amap/api/col/l3s/dd;

    invoke-static {p0}, Lcom/amap/api/col/l3s/dd;->c(Lcom/amap/api/col/l3s/dd;)Ljava/lang/String;

    :cond_1
    return-void
.end method
