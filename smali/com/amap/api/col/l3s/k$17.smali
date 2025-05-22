.class final Lcom/amap/api/col/l3s/k$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->c(IZ)V
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

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$17;->c:Lcom/amap/api/col/l3s/k;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$17;->a:Z

    iput p3, p0, Lcom/amap/api/col/l3s/k$17;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/k$17;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/k$17;->c:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget p0, p0, Lcom/amap/api/col/l3s/k$17;->b:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setBuildingTextureEnable(IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$17;->c:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget p0, p0, Lcom/amap/api/col/l3s/k$17;->b:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setBuildingTextureEnable(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
