.class public final Lcom/amap/api/col/l3s/at;
.super Lcom/amap/api/col/l3s/ar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/at$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/PointF;


# instance fields
.field private final b:Lcom/amap/api/col/l3s/at$a;

.field private c:Landroid/graphics/PointF;

.field private d:Landroid/graphics/PointF;

.field private n:Landroid/graphics/PointF;

.field private o:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/at;->a:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/at$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/ar;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/at;->n:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/at;->o:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/amap/api/col/l3s/at;->b:Lcom/amap/api/col/l3s/at$a;

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/at;->a(Landroid/view/MotionEvent;)V

    iget p1, p0, Lcom/amap/api/col/l3s/ar;->i:F

    iget v1, p0, Lcom/amap/api/col/l3s/ar;->j:F

    div-float/2addr p1, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/at;->b:Lcom/amap/api/col/l3s/at$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/at$a;->a(Lcom/amap/api/col/l3s/at;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/at;->b:Lcom/amap/api/col/l3s/at$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/at$a;->c(Lcom/amap/api/col/l3s/at;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ar;->a()V

    return-void
.end method

.method protected final a(ILandroid/view/MotionEvent;II)V
    .locals 0

    if-eqz p1, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/at;->a(Landroid/view/MotionEvent;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/at;->b:Lcom/amap/api/col/l3s/at$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/at$a;->b(Lcom/amap/api/col/l3s/at;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ar;->f:Z

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ar;->a()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/amap/api/col/l3s/ar;->k:J

    goto :goto_0
.end method

.method protected final a(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/ar;->a(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/amap/api/col/l3s/ar;->b(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/at;->c:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ar;->b(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/at;->d:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/amap/api/col/l3s/at;->a:Landroid/graphics/PointF;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/amap/api/col/l3s/at;->c:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amap/api/col/l3s/at;->d:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iput-object v1, p0, Lcom/amap/api/col/l3s/at;->o:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/at;->n:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/at;->o:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final d()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/at;->o:Landroid/graphics/PointF;

    return-object p0
.end method
