.class final Lcom/amap/api/col/l3s/fs$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fs;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fs;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fs;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fs;->a(Lcom/amap/api/col/l3s/fs;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-static {v1}, Lcom/amap/api/col/l3s/fs;->a(Lcom/amap/api/col/l3s/fs;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fs;->a(Lcom/amap/api/col/l3s/fs;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-static {p2}, Lcom/amap/api/col/l3s/fs;->f(Lcom/amap/api/col/l3s/fs;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fs;->e(Lcom/amap/api/col/l3s/fs;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-static {p2}, Lcom/amap/api/col/l3s/fs;->f(Lcom/amap/api/col/l3s/fs;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fs;->g(Lcom/amap/api/col/l3s/fs;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs$2;->a:Lcom/amap/api/col/l3s/fs;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fs;->a(Lcom/amap/api/col/l3s/fs;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p0

    invoke-static {}, Lcom/amap/api/col/l3s/ao;->b()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return p1

    :catchall_0
    move-exception p0

    const-string p2, "ZoomControllerView"

    const-string v0, "zoomout ontouch"

    invoke-static {p0, p2, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return p1
.end method
