.class final Lcom/amap/api/col/l3s/dc$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/dc;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/dc;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dc$2;->a:Lcom/amap/api/col/l3s/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dc$2;->a:Lcom/amap/api/col/l3s/dc;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dc;->b(Lcom/amap/api/col/l3s/dc;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/col/l3s/dc$2;->a:Lcom/amap/api/col/l3s/dc;

    invoke-static {v0}, Lcom/amap/api/col/l3s/dc;->b(Lcom/amap/api/col/l3s/dc;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dc$2;->a:Lcom/amap/api/col/l3s/dc;

    invoke-static {p0}, Lcom/amap/api/col/l3s/dc;->c(Lcom/amap/api/col/l3s/dc;)Lcom/amap/api/maps/model/Marker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
