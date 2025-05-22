.class public final Lcom/amap/api/col/l3s/dh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;
.implements Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/dh$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/graphics/Bitmap;

.field private C:Landroid/graphics/Bitmap;

.field private D:Landroid/graphics/Bitmap;

.field private E:Landroid/graphics/Bitmap;

.field private F:Z

.field private G:Z

.field private H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private I:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private J:Z

.field private K:Z

.field a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field b:[F

.field c:Lcom/amap/api/col/l3s/dh$a;

.field d:[F

.field e:J

.field f:Lcom/amap/api/col/l3s/ay;

.field private g:Landroid/content/Context;

.field private h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private o:Ljava/nio/FloatBuffer;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/nio/FloatBuffer;

.field private s:F

.field private t:F

.field private u:Z

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Rect;

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->i:Z

    iput v0, p0, Lcom/amap/api/col/l3s/dh;->j:I

    iput v0, p0, Lcom/amap/api/col/l3s/dh;->k:I

    iput v0, p0, Lcom/amap/api/col/l3s/dh;->l:I

    iput v0, p0, Lcom/amap/api/col/l3s/dh;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->o:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dh;->q:Z

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/amap/api/col/l3s/dh;->s:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/amap/api/col/l3s/dh;->t:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, p0, Lcom/amap/api/col/l3s/dh;->y:F

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dh;->A:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->F:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->G:Z

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->b:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->d:[F

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/amap/api/col/l3s/dh;->e:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->J:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dh;->K:Z

    iput-object p2, p0, Lcom/amap/api/col/l3s/dh;->g:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dh;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->p:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/dh;->g:Landroid/content/Context;

    if-eqz p0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-static {p1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/dh;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dh;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-object p0
.end method

.method private declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/dh;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dh;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dh;->f(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->J:Z

    if-eqz v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/amap/api/col/l3s/dh;->l:I

    iput p2, p0, Lcom/amap/api/col/l3s/dh;->m:I

    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3s/dh;->j:I

    iput p2, p0, Lcom/amap/api/col/l3s/dh;->k:I

    goto :goto_0
.end method

.method private declared-synchronized b(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->I:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/dh;->K:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dh;->J:Z

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->I:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    new-instance v1, Lcom/amap/api/col/l3s/dh$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/dh$1;-><init>(Lcom/amap/api/col/l3s/dh;Z)V

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dh;->J:Z

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dh;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/dh;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->J:Z

    return v0
.end method

.method private c()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return v0
.end method

.method private declared-synchronized c(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->b(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private d()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    return v0
.end method

.method private declared-synchronized d(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->b(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->A:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/dh;->b(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->f(Landroid/graphics/Bitmap;)V

    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dh;->A:Z

    return-void
.end method

.method private declared-synchronized e(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->b(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->w:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->w:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f(Landroid/graphics/Bitmap;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->w:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->b(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dh;->w:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/col/l3s/dh;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_1
    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->w:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_7
    :goto_2
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dh;->G:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    monitor-exit p0

    return-void

    :cond_8
    :goto_3
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 27

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/dh;->q:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    instance-of v0, v0, Lcom/amap/api/col/l3s/db;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/maps/model/Marker;

    iget-object v9, v1, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast v9, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {v0, v9}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v9, v1, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    :goto_0
    invoke-virtual {v9, v0}, Lcom/amap/api/col/l3s/ay;->c(Lcom/amap/api/maps/model/BasePointOverlay;)J

    move-result-wide v9

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/amap/api/maps/model/GL3DModel;

    iget-object v9, v1, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast v9, Lcom/amap/api/col/l3s/cy;

    invoke-direct {v0, v9}, Lcom/amap/api/maps/model/GL3DModel;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IglModel;)V

    iget-object v9, v1, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    goto :goto_0

    :goto_1
    cmp-long v0, v9, v7

    if-gtz v0, :cond_2

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_2

    :cond_2
    cmp-long v0, v9, v5

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    move-wide v5, v9

    goto :goto_2

    :cond_4
    move-wide v5, v7

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/amap/api/col/l3s/dh;->e:J

    sub-long v13, v9, v11

    cmp-long v0, v13, v5

    if-lez v0, :cond_6

    cmp-long v0, v11, v7

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/dh;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_3
    iput-wide v9, v1, Lcom/amap/api/col/l3s/dh;->e:J

    :cond_6
    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/dh;->G:Z

    const/4 v5, 0x0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    :try_start_2
    iget v0, v1, Lcom/amap/api/col/l3s/dh;->z:I

    if-eqz v0, :cond_7

    new-array v0, v4, [I

    iget v6, v1, Lcom/amap/api/col/l3s/dh;->z:I

    aput v6, v0, v5

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_4

    :cond_7
    new-array v0, v4, [I

    aput v5, v0, v5

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v5

    iput v0, v1, Lcom/amap/api/col/l3s/dh;->z:I

    :goto_4
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, v1, Lcom/amap/api/col/l3s/dh;->z:I

    iget-object v6, v1, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-static {v0, v6, v5}, Lcom/amap/api/col/l3s/ex;->a(ILandroid/graphics/Bitmap;Z)I

    iput-boolean v4, v1, Lcom/amap/api/col/l3s/dh;->G:Z

    :cond_8
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const-string v6, "PopupOverlay"

    const-string v7, "drawMarker"

    invoke-static {v0, v6, v7}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v0, v4

    :goto_6
    iget-boolean v6, v1, Lcom/amap/api/col/l3s/dh;->K:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_a

    iget-object v6, v1, Lcom/amap/api/col/l3s/dh;->I:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v6

    if-nez v6, :cond_a

    iput-boolean v4, v1, Lcom/amap/api/col/l3s/dh;->J:Z

    new-instance v6, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v8, v1, Lcom/amap/api/col/l3s/dh;->I:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    iget-wide v8, v6, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_c

    iget-wide v8, v6, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_c

    :goto_7
    iget-wide v8, v6, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    double-to-float v6, v8

    iput v6, v1, Lcom/amap/api/col/l3s/dh;->y:F

    goto :goto_8

    :cond_a
    iget-object v6, v1, Lcom/amap/api/col/l3s/dh;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v6

    if-nez v6, :cond_b

    iput-boolean v5, v1, Lcom/amap/api/col/l3s/dh;->K:Z

    iput-boolean v4, v1, Lcom/amap/api/col/l3s/dh;->J:Z

    iget v6, v1, Lcom/amap/api/col/l3s/dh;->l:I

    iput v6, v1, Lcom/amap/api/col/l3s/dh;->j:I

    iget v6, v1, Lcom/amap/api/col/l3s/dh;->m:I

    iput v6, v1, Lcom/amap/api/col/l3s/dh;->k:I

    new-instance v6, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v8, v1, Lcom/amap/api/col/l3s/dh;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    iget-wide v8, v6, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_c

    iget-wide v8, v6, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_7

    :cond_b
    iput v7, v1, Lcom/amap/api/col/l3s/dh;->y:F

    iput-boolean v5, v1, Lcom/amap/api/col/l3s/dh;->J:Z

    :cond_c
    :goto_8
    iget-object v6, v1, Lcom/amap/api/col/l3s/dh;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v6

    iget-object v8, v1, Lcom/amap/api/col/l3s/dh;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 v9, 0x4

    if-eqz v8, :cond_13

    if-nez v6, :cond_d

    goto/16 :goto_a

    :cond_d
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    iget-object v11, v1, Lcom/amap/api/col/l3s/dh;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v11}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v11

    if-eqz v11, :cond_e

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v11

    iget-object v12, v1, Lcom/amap/api/col/l3s/dh;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    float-to-int v13, v13

    iget v12, v12, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    invoke-virtual {v6, v13, v12, v11}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    iget v6, v11, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iput v6, v8, Landroid/graphics/Point;->x:I

    iget v6, v11, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    iput v6, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v11}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/dh;->c()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/dh;->d()I

    move-result v11

    iget v12, v8, Landroid/graphics/Point;->x:I

    iget v13, v1, Lcom/amap/api/col/l3s/dh;->j:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    int-to-float v13, v6

    iget v14, v1, Lcom/amap/api/col/l3s/dh;->s:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/Point;->y:I

    iget v14, v1, Lcom/amap/api/col/l3s/dh;->k:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    int-to-float v14, v11

    iget v15, v1, Lcom/amap/api/col/l3s/dh;->t:F

    sub-float v15, v7, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    sub-int v8, v12, v6

    if-gt v8, v2, :cond_13

    neg-int v6, v6

    const/4 v8, 0x2

    mul-int/2addr v6, v8

    if-lt v12, v6, :cond_13

    neg-int v6, v11

    mul-int/2addr v6, v8

    if-lt v13, v6, :cond_13

    sub-int v6, v13, v11

    if-le v6, v3, :cond_f

    goto/16 :goto_a

    :cond_f
    iget-object v6, v1, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-nez v6, :cond_10

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v11, v1, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget-object v14, v1, Lcom/amap/api/col/l3s/dh;->r:Ljava/nio/FloatBuffer;

    const/16 v15, 0x8

    if-nez v14, :cond_11

    new-array v14, v15, [F

    fill-array-data v14, :array_0

    invoke-static {v14}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v14

    iput-object v14, v1, Lcom/amap/api/col/l3s/dh;->r:Ljava/nio/FloatBuffer;

    :cond_11
    iget v14, v1, Lcom/amap/api/col/l3s/dh;->y:F

    sub-float v14, v7, v14

    move/from16 v16, v11

    float-to-double v10, v14

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v17

    int-to-double v7, v6

    mul-double/2addr v10, v7

    double-to-int v7, v10

    iget-object v8, v1, Lcom/amap/api/col/l3s/dh;->b:[F

    add-int v10, v12, v7

    int-to-float v11, v10

    aput v11, v8, v5

    iget-object v14, v1, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iput v10, v14, Landroid/graphics/Rect;->left:I

    sub-int v10, v3, v13

    int-to-float v5, v10

    aput v5, v8, v4

    const/16 v19, 0x0

    const/16 v17, 0x2

    aput v19, v8, v17

    const/16 v17, 0x3

    add-int/2addr v12, v6

    sub-int v6, v12, v7

    int-to-float v6, v6

    aput v6, v8, v17

    aput v5, v8, v9

    sub-int v5, v13, v16

    iput v5, v14, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x5

    aput v19, v8, v5

    const/4 v5, 0x6

    aput v6, v8, v5

    iput v12, v14, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x7

    add-int v10, v10, v16

    int-to-float v6, v10

    aput v6, v8, v5

    iput v13, v14, Landroid/graphics/Rect;->bottom:I

    aput v19, v8, v15

    const/16 v5, 0x9

    aput v11, v8, v5

    const/16 v5, 0xa

    aput v6, v8, v5

    const/16 v5, 0xb

    aput v19, v8, v5

    iget-object v5, v1, Lcom/amap/api/col/l3s/dh;->o:Ljava/nio/FloatBuffer;

    if-nez v5, :cond_12

    invoke-static {v8}, Lcom/amap/api/col/l3s/ex;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    goto :goto_9

    :cond_12
    invoke-static {v8, v5}, Lcom/amap/api/col/l3s/ex;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v5

    :goto_9
    iput-object v5, v1, Lcom/amap/api/col/l3s/dh;->o:Ljava/nio/FloatBuffer;

    move v5, v4

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_17

    iget-object v5, v1, Lcom/amap/api/col/l3s/dh;->d:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v5, v1, Lcom/amap/api/col/l3s/dh;->d:[F

    const/16 v20, 0x0

    const/16 v21, 0x0

    int-to-float v2, v2

    const/16 v23, 0x0

    int-to-float v3, v3

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, -0x40800000    # -1.0f

    move-object/from16 v19, v5

    move/from16 v22, v2

    move/from16 v24, v3

    invoke-static/range {v19 .. v26}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget v2, v1, Lcom/amap/api/col/l3s/dh;->z:I

    iget-object v15, v1, Lcom/amap/api/col/l3s/dh;->o:Ljava/nio/FloatBuffer;

    iget-object v3, v1, Lcom/amap/api/col/l3s/dh;->r:Ljava/nio/FloatBuffer;

    if-eqz v15, :cond_16

    if-eqz v3, :cond_16

    if-nez v2, :cond_14

    goto/16 :goto_c

    :cond_14
    iget-object v5, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    if-nez v5, :cond_15

    new-instance v5, Lcom/amap/api/col/l3s/dh$a;

    const-string v6, "texture.glsl"

    invoke-direct {v5, v6}, Lcom/amap/api/col/l3s/dh$a;-><init>(Ljava/lang/String;)V

    iput-object v5, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    :cond_15
    iget-object v5, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    iget v5, v5, Lcom/amap/api/col/l3s/dk;->d:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v5, 0xbe2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v6, 0x303

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const v6, 0x84c0

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v6, 0xde1

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    iget v2, v2, Lcom/amap/api/col/l3s/dh$a;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    iget v10, v2, Lcom/amap/api/col/l3s/dh$a;->b:I

    const/4 v11, 0x3

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0xc

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v2, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    iget v2, v2, Lcom/amap/api/col/l3s/dh$a;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    iget v2, v2, Lcom/amap/api/col/l3s/dh$a;->c:I

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x8

    move/from16 v19, v2

    move-object/from16 v24, v3

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v2, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    iget v2, v2, Lcom/amap/api/col/l3s/dh$a;->a:I

    iget-object v3, v1, Lcom/amap/api/col/l3s/dh;->d:[F

    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v3, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v2, 0x6

    invoke-static {v2, v7, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v2, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    iget v2, v2, Lcom/amap/api/col/l3s/dh$a;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v2, v1, Lcom/amap/api/col/l3s/dh;->c:Lcom/amap/api/col/l3s/dh$a;

    iget v2, v2, Lcom/amap/api/col/l3s/dh$a;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v7, 0x0

    :goto_d
    iget-boolean v2, v1, Lcom/amap/api/col/l3s/dh;->u:Z

    if-eqz v2, :cond_17

    iput-boolean v7, v1, Lcom/amap/api/col/l3s/dh;->u:Z

    :cond_17
    return v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_18
    :goto_e
    return v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final calMapFPoint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final checkInBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->i:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dh;->remove()V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->f()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->r:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->r:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->r:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->o:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->o:Ljava/nio/FloatBuffer;

    :cond_1
    iput-object v1, p0, Lcom/amap/api/col/l3s/dh;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/dh;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "PopupOverlay"

    const-string v1, "realDestroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 0

    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dh;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "PopupOverlay"

    iput-object v0, p0, Lcom/amap/api/col/l3s/dh;->p:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dh;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCodeRemote()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized hideInfoWindow()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dh;->setVisible(Z)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->f()V

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isAboveMaskLayer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDrawFinish()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInfoWindowShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/dh;->q:Z

    return p0
.end method

.method public final onInfoWindowTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->F:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0, v0, p1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Rect;II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final redrawInfoWindow()V
    .locals 13

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->checkInBounds()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dh;->setVisible(Z)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetX()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetX()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetY()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetY()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    instance-of v5, v5, Lcom/amap/api/col/l3s/db;

    if-eqz v5, :cond_f

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-boolean v5, p0, Lcom/amap/api/col/l3s/dh;->J:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v0

    :goto_1
    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast v5, Lcom/amap/api/col/l3s/db;

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/db;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/dh;->setVisible(Z)V

    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dh;->setVisible(Z)V

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    iget-object v11, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    goto :goto_3

    :cond_5
    :goto_2
    move v11, v1

    :goto_3
    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/amap/api/col/l3s/dh;->x:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_4

    :cond_6
    iget-object v12, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    goto :goto_5

    :cond_7
    :goto_4
    move v12, v1

    :goto_5
    add-int/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v8, p0, Lcom/amap/api/col/l3s/dh;->A:Z

    if-eqz v8, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x2

    neg-int v8, v8

    invoke-virtual {v6, v1, v8}, Landroid/graphics/Rect;->offset(II)V

    :goto_6
    iget-object v8, p0, Lcom/amap/api/col/l3s/dh;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8, v5, v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->checkMarkerInRect(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v6

    iget-object v8, p0, Lcom/amap/api/col/l3s/dh;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8, v5, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->checkMarkerInRect(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v5

    if-lez v6, :cond_9

    if-eqz v5, :cond_a

    if-lez v5, :cond_9

    if-ge v6, v5, :cond_9

    goto :goto_7

    :cond_9
    move v0, v1

    :cond_a
    :goto_7
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetY()I

    move-result v0

    iget-object v4, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetY()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int v4, v0, v2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->A:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/dh;->b(Z)V

    goto :goto_8

    :cond_b
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->f(Landroid/graphics/Bitmap;)V

    :goto_8
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dh;->A:Z

    goto :goto_9

    :cond_c
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->e()V

    :goto_9
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dh;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-direct {p0, v3, v4}, Lcom/amap/api/col/l3s/dh;->b(II)V

    goto :goto_a

    :cond_d
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dh;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-direct {p0, v3, v4}, Lcom/amap/api/col/l3s/dh;->b(II)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->e()V

    :cond_e
    :goto_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_f
    iget-boolean v2, p0, Lcom/amap/api/col/l3s/dh;->J:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->v:Landroid/graphics/Bitmap;

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->B:Landroid/graphics/Bitmap;

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->D:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_12

    :cond_10
    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isInfoWindowEnable()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/dh;->setVisible(Z)V

    return-void

    :cond_11
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/dh;->setVisible(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dh;->n:Lcom/autonavi/base/amap/mapcore/FPoint;

    invoke-direct {p0, v3, v4}, Lcom/amap/api/col/l3s/dh;->b(II)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dh;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_12
    return-void

    :cond_13
    :goto_b
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/dh;->setVisible(Z)V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final remove()V
    .locals 0

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowAdapterManager(Lcom/amap/api/col/l3s/ay;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setInfoWindowAnimation(Lcom/amap/api/maps/model/animation/Animation;Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowAppearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->I:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "PopupOverlay"

    const-string v0, "setInfoWindowDisappearAnimation"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public final setInfoWindowBackColor(I)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowBackEnable(Z)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowBackScale(FF)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowDisappearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->I:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "PopupOverlay"

    const-string v0, "setInfoWindowDisappearAnimation"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->I:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public final setInfoWindowMovingAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->q:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/dh;->u:Z

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/dh;->q:Z

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isInfoWindowEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dh;->hideInfoWindow()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iput-object p1, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {p1, v1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->setInfoWindowShown(Z)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/dh;->setVisible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    instance-of p1, p1, Lcom/amap/api/col/l3s/db;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {p1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ay;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/dh;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->d(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ay;->c(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dh;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dh;->e(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    if-eqz p1, :cond_8

    new-instance p1, Lcom/amap/api/maps/model/GL3DModel;

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->h:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast v0, Lcom/amap/api/col/l3s/cy;

    invoke-direct {p1, v0}, Lcom/amap/api/maps/model/GL3DModel;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IglModel;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/ay;->a(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3s/ay;->b(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/dh;->f:Lcom/amap/api/col/l3s/ay;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ay;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dh;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/dh;->a(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v0, "PopupOverlay"

    const-string v2, "getInfoWindow"

    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/amap/api/col/l3s/fc;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image infowindow update failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/api/col/l3s/fd;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/dh;->F:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startAnimation()V
    .locals 0

    return-void
.end method
