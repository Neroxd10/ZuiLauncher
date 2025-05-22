.class final Lcom/amap/api/col/l3s/k$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->clear(Z)V
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

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$18;->a:Lcom/amap/api/col/l3s/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$18;->a:Lcom/amap/api/col/l3s/k;

    iget-object v1, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/l3s/k;->a(Lcom/amap/api/col/l3s/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$18;->a:Lcom/amap/api/col/l3s/k;

    iget-object v0, p0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-static {p0}, Lcom/amap/api/col/l3s/k;->o(Lcom/amap/api/col/l3s/k;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->removeNativeAllOverlay(I)V

    :cond_0
    return-void
.end method
