.class public final Lcom/amap/api/col/l3s/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/x$e;,
        Lcom/amap/api/col/l3s/x$b;,
        Lcom/amap/api/col/l3s/x$c;,
        Lcom/amap/api/col/l3s/x$d;,
        Lcom/amap/api/col/l3s/x$a;
    }
.end annotation


# instance fields
.field a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field b:Landroid/content/Context;

.field c:Landroid/view/GestureDetector;

.field public d:Lcom/amap/api/maps/model/AMapGestureListener;

.field private e:Lcom/amap/api/col/l3s/av;

.field private f:Lcom/amap/api/col/l3s/at;

.field private g:Lcom/amap/api/col/l3s/as;

.field private h:Lcom/amap/api/col/l3s/aw;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/x;->i:Z

    iput v0, p0, Lcom/amap/api/col/l3s/x;->j:I

    iput v0, p0, Lcom/amap/api/col/l3s/x;->k:I

    iput v0, p0, Lcom/amap/api/col/l3s/x;->l:I

    iput v0, p0, Lcom/amap/api/col/l3s/x;->m:I

    iput v0, p0, Lcom/amap/api/col/l3s/x;->n:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/x;->o:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/x;->p:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/x;->q:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/x;->t:Landroid/os/Handler;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/x;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance p1, Lcom/amap/api/col/l3s/x$a;

    invoke-direct {p1, p0, v0}, Lcom/amap/api/col/l3s/x$a;-><init>(Lcom/amap/api/col/l3s/x;B)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3s/x;->t:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/x;->c:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance p1, Lcom/amap/api/col/l3s/av;

    iget-object v1, p0, Lcom/amap/api/col/l3s/x;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3s/x$d;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3s/x$d;-><init>(Lcom/amap/api/col/l3s/x;B)V

    invoke-direct {p1, v1, v2}, Lcom/amap/api/col/l3s/av;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/av$a;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x;->e:Lcom/amap/api/col/l3s/av;

    new-instance p1, Lcom/amap/api/col/l3s/at;

    iget-object v1, p0, Lcom/amap/api/col/l3s/x;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3s/x$c;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3s/x$c;-><init>(Lcom/amap/api/col/l3s/x;B)V

    invoke-direct {p1, v1, v2}, Lcom/amap/api/col/l3s/at;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/at$a;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x;->f:Lcom/amap/api/col/l3s/at;

    new-instance p1, Lcom/amap/api/col/l3s/as;

    iget-object v1, p0, Lcom/amap/api/col/l3s/x;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3s/x$b;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3s/x$b;-><init>(Lcom/amap/api/col/l3s/x;B)V

    invoke-direct {p1, v1, v2}, Lcom/amap/api/col/l3s/as;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/as$a;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x;->g:Lcom/amap/api/col/l3s/as;

    new-instance p1, Lcom/amap/api/col/l3s/aw;

    iget-object v1, p0, Lcom/amap/api/col/l3s/x;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3s/x$e;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3s/x$e;-><init>(Lcom/amap/api/col/l3s/x;B)V

    invoke-direct {p1, v1, v2}, Lcom/amap/api/col/l3s/aw;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/aw$a;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/x;->h:Lcom/amap/api/col/l3s/aw;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/x;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/x;->m:I

    return p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/x;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/x;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/x;->k:I

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/x;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/x;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/x;->l:I

    return p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/x;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/x;->q:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/x;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/x;->n:I

    return p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/x;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/x;->o:Z

    return p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/x;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3s/x;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/x;->k:I

    return v0
.end method

.method static synthetic h(Lcom/amap/api/col/l3s/x;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3s/x;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/x;->l:I

    return v0
.end method

.method static synthetic i(Lcom/amap/api/col/l3s/x;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/x;->i:Z

    return p0
.end method

.method static synthetic j(Lcom/amap/api/col/l3s/x;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/x;->p:Z

    return p0
.end method

.method static synthetic k(Lcom/amap/api/col/l3s/x;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/x;->j:I

    return p0
.end method

.method static synthetic l(Lcom/amap/api/col/l3s/x;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3s/x;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/x;->j:I

    return v0
.end method

.method static synthetic m(Lcom/amap/api/col/l3s/x;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3s/x;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/x;->m:I

    return v0
.end method

.method static synthetic n(Lcom/amap/api/col/l3s/x;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/x;->q:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/x;->j:I

    iput v0, p0, Lcom/amap/api/col/l3s/x;->l:I

    iput v0, p0, Lcom/amap/api/col/l3s/x;->k:I

    iput v0, p0, Lcom/amap/api/col/l3s/x;->m:I

    iput v0, p0, Lcom/amap/api/col/l3s/x;->n:I

    return-void
.end method

.method public final a(II)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3s/x;->r:I

    iput p2, p0, Lcom/amap/api/col/l3s/x;->s:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/x;->e:Lcom/amap/api/col/l3s/av;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3s/au;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/x;->f:Lcom/amap/api/col/l3s/at;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3s/ar;->a(II)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/x;->g:Lcom/amap/api/col/l3s/as;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3s/ar;->a(II)V

    :cond_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/x;->h:Lcom/amap/api/col/l3s/aw;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/ar;->a(II)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Lcom/amap/api/col/l3s/x;->n:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/x;->n:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/x;->p:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/x;->q:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_2

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/x;->p:Z

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/x;->o:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/col/l3s/x;->n:I

    if-lt v0, v2, :cond_3

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/x;->o:Z

    :cond_3
    :try_start_0
    new-array v0, v2, [I

    aput v1, v0, v1

    aput v1, v0, v3

    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/amap/api/maps/model/AMapGestureListener;->onDown(FF)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/amap/api/maps/model/AMapGestureListener;->onUp(FF)V

    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->c:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->g:Lcom/amap/api/col/l3s/as;

    aget v4, v0, v1

    aget v5, v0, v3

    invoke-virtual {v2, p1, v4, v5}, Lcom/amap/api/col/l3s/ar;->b(Landroid/view/MotionEvent;II)Z

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/x;->i:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/amap/api/col/l3s/x;->m:I

    if-gtz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->h:Lcom/amap/api/col/l3s/aw;

    aget v4, v0, v1

    aget v5, v0, v3

    invoke-virtual {v2, p1, v4, v5}, Lcom/amap/api/col/l3s/ar;->b(Landroid/view/MotionEvent;II)Z

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/x;->o:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/amap/api/col/l3s/x;->e:Lcom/amap/api/col/l3s/av;

    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/x;->f:Lcom/amap/api/col/l3s/at;

    aget v2, v0, v1

    aget v0, v0, v3

    invoke-virtual {p0, p1, v2, v0}, Lcom/amap/api/col/l3s/ar;->b(Landroid/view/MotionEvent;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    return v3

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/x;->r:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/x;->s:I

    return p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/x;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/x;->t:Landroid/os/Handler;

    :cond_0
    return-void
.end method
