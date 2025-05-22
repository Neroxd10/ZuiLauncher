.class final Lcom/amap/api/col/l3s/k$35;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->removeEngineGLOverlay(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

.field final synthetic b:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$35;->b:Lcom/amap/api/col/l3s/k;

    iput-object p2, p0, Lcom/amap/api/col/l3s/k$35;->a:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$35;->b:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$35;->a:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

    invoke-virtual {v0, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;->removeOverlay(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V

    return-void
.end method
