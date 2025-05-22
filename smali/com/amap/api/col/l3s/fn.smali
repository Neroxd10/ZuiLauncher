.class public final Lcom/amap/api/col/l3s/fn;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/widget/ImageView;

.field h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fn;->i:Z

    iput-object p2, p0, Lcom/amap/api/col/l3s/fn;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    const-string p2, "location_selected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fn;->d:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fn;->a:Landroid/graphics/Bitmap;

    const-string p2, "location_pressed.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fn;->e:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fn;->b:Landroid/graphics/Bitmap;

    const-string p2, "location_unselected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fn;->f:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fn;->c:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    const/16 p2, 0x14

    invoke-virtual {p1, v0, p2, p2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/col/l3s/fn$1;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3s/fn$1;-><init>(Lcom/amap/api/col/l3s/fn;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fn;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "LocationView"

    const-string p2, "create"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
