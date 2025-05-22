.class final Lcom/amap/api/col/l3s/fs;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    const-string p2, "zoomin_selected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->g:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->a:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_unselected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->h:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->b:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_selected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->i:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->c:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_unselected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->j:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->d:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_pressed.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->k:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->e:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_pressed.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->l:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->f:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/col/l3s/fs$1;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3s/fs$1;-><init>(Lcom/amap/api/col/l3s/fs;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/col/l3s/fs$2;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3s/fs$2;-><init>(Lcom/amap/api/col/l3s/fs;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    const/4 p2, -0x2

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ZoomControllerView"

    const-string p2, "create"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fs;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/fs;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/fs;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/fs;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/fs;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/fs;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/fs;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->d:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->g:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->g:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->h:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->h:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->i:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->i:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->j:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->j:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->g:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->k:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->k:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->l:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/fs;->l:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->l:Landroid/graphics/Bitmap;

    :cond_5
    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ZoomControllerView"

    const-string v1, "destory"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->o:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fs;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fs;->n:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fs;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ZoomControllerView"

    const-string v0, "setZoomBitmap"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
