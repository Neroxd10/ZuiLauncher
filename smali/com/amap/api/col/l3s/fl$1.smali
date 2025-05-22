.class final Lcom/amap/api/col/l3s/fl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fl;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fl;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fl;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fl$1;->a:Lcom/amap/api/col/l3s/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fl$1;->a:Lcom/amap/api/col/l3s/fl;

    iget-object v0, v0, Lcom/amap/api/col/l3s/fl;->e:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/amap/api/col/l3s/fl$1;->a:Lcom/amap/api/col/l3s/fl;

    iget-object p2, p2, Lcom/amap/api/col/l3s/fl;->d:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fl$1;->a:Lcom/amap/api/col/l3s/fl;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/amap/api/col/l3s/fl$1;->a:Lcom/amap/api/col/l3s/fl;

    iget-object p2, p2, Lcom/amap/api/col/l3s/fl;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fl$1;->a:Lcom/amap/api/col/l3s/fl;

    iget-object v0, v0, Lcom/amap/api/col/l3s/fl;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/fl$1;->a:Lcom/amap/api/col/l3s/fl;

    iget-object p2, p2, Lcom/amap/api/col/l3s/fl;->e:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p2

    iget-object p0, p0, Lcom/amap/api/col/l3s/fl$1;->a:Lcom/amap/api/col/l3s/fl;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fl;->e:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance v0, Lcom/amap/api/maps/model/CameraPosition;

    iget-object v1, p2, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget p2, p2, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2, v2}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    invoke-static {v0}, Lcom/amap/api/col/l3s/ao;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p2, "CompassView"

    const-string v0, "onTouch"

    invoke-static {p0, p2, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return p1
.end method
