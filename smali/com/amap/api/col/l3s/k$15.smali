.class final Lcom/amap/api/col/l3s/k$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$15;->c:Lcom/amap/api/col/l3s/k;

    iput p2, p0, Lcom/amap/api/col/l3s/k$15;->a:I

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/k$15;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$15;->c:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/col/l3s/k$15;->a:I

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/k$15;->b:Z

    invoke-virtual {v0, v1, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setBuildingEnable(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
