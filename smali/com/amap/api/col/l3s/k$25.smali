.class final Lcom/amap/api/col/l3s/k$25;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/k;->setNaviLabelEnable(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$25;->d:Lcom/amap/api/col/l3s/k;

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/k$25;->a:Z

    iput p3, p0, Lcom/amap/api/col/l3s/k$25;->b:I

    iput p4, p0, Lcom/amap/api/col/l3s/k$25;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$25;->d:Lcom/amap/api/col/l3s/k;

    iget-object v0, v0, Lcom/amap/api/col/l3s/k;->g:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/k$25;->a:Z

    iget v3, p0, Lcom/amap/api/col/l3s/k$25;->b:I

    iget p0, p0, Lcom/amap/api/col/l3s/k$25;->c:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setNaviLabelEnable(IZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
