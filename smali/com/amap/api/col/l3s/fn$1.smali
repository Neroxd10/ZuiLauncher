.class final Lcom/amap/api/col/l3s/fn$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fn;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fn;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-boolean p1, p1, Lcom/amap/api/col/l3s/fn;->i:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-object p1, p1, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-object v1, v1, Lcom/amap/api/col/l3s/fn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-object p1, p1, Lcom/amap/api/col/l3s/fn;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMyLocationEnabled(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-object p1, p1, Lcom/amap/api/col/l3s/fn;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMyLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    new-instance p2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-object v1, v1, Lcom/amap/api/col/l3s/fn;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showMyLocationOverlay(Landroid/location/Location;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-object p1, p1, Lcom/amap/api/col/l3s/fn;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fn$1;->a:Lcom/amap/api/col/l3s/fn;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fn;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result p0

    invoke-static {p2, p0}, Lcom/amap/api/col/l3s/ao;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "LocationView"

    const-string p2, "onTouch"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method
