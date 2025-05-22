.class final Lcom/amap/api/col/l3s/k$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/amap/api/col/l3s/k;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/k;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/k$8;->b:Lcom/amap/api/col/l3s/k;

    iput-object p2, p0, Lcom/amap/api/col/l3s/k$8;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$8;->b:Lcom/amap/api/col/l3s/k;

    iget-object v2, v2, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$8;->b:Lcom/amap/api/col/l3s/k;

    iget-object v2, v2, Lcom/amap/api/col/l3s/k;->c:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTouchPoiEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/k$8;->b:Lcom/amap/api/col/l3s/k;

    iget-object v2, p0, Lcom/amap/api/col/l3s/k$8;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/k$8;->a:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/k;->a(Lcom/amap/api/col/l3s/k;II)Lcom/amap/api/maps/model/Poi;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/k$8;->b:Lcom/amap/api/col/l3s/k;

    invoke-static {v2}, Lcom/amap/api/col/l3s/k;->b(Lcom/amap/api/col/l3s/k;)Lcom/amap/api/col/l3s/p;

    move-result-object v2

    const-class v3, Lcom/amap/api/maps/AMap$OnPOIClickListener;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3s/p;->a(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0x14

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$8;->b:Lcom/amap/api/col/l3s/k;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k;->j:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/k$8;->b:Lcom/amap/api/col/l3s/k;

    iget-object p0, p0, Lcom/amap/api/col/l3s/k$8;->a:Landroid/view/MotionEvent;

    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/k;->a(Lcom/amap/api/col/l3s/k;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
