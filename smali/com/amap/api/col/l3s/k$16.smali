.class final Lcom/amap/api/col/l3s/k$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$16;->c:Lcom/amap/api/col/l3s/k;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$16;->a:Z

    iput p3, p0, Lcom/amap/api/col/l3s/k$16;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$16;->c:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/k$16;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/amap/api/col/l3s/k$16;->b:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setAllContentEnable(IZ)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3s/k$16;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setAllContentEnable(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$16;->c:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget p0, p0, Lcom/amap/api/col/l3s/k$16;->b:I

    invoke-virtual {v0, p0, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setSimple3DEnable(IZ)V

    :cond_1
    return-void
.end method
