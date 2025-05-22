.class public abstract Lcom/amap/api/col/l3s/aq;
.super Lcom/amap/api/col/l3s/ar;
.source ""


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field private final n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/ar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/aq;->s:F

    iput v0, p0, Lcom/amap/api/col/l3s/aq;->t:F

    iput v0, p0, Lcom/amap/api/col/l3s/aq;->u:F

    iput v0, p0, Lcom/amap/api/col/l3s/aq;->v:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amap/api/col/l3s/aq;->n:F

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/PointF;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/amap/api/col/l3s/aq;->s:F

    iget p0, p0, Lcom/amap/api/col/l3s/aq;->t:F

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/amap/api/col/l3s/aq;->u:F

    iget p0, p0, Lcom/amap/api/col/l3s/aq;->v:F

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/ar;->a(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/amap/api/col/l3s/aq;->q:F

    iput v1, p0, Lcom/amap/api/col/l3s/aq;->r:F

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float v6, v5, v2

    sub-float v7, v0, v3

    iput v6, p0, Lcom/amap/api/col/l3s/aq;->a:F

    iput v7, p0, Lcom/amap/api/col/l3s/aq;->b:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float v4, v7, v6

    sub-float v8, p1, v1

    iput v4, p0, Lcom/amap/api/col/l3s/aq;->c:F

    iput v8, p0, Lcom/amap/api/col/l3s/aq;->d:F

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/amap/api/col/l3s/aq;->s:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/amap/api/col/l3s/aq;->t:F

    sub-float/2addr v7, v5

    iput v7, p0, Lcom/amap/api/col/l3s/aq;->u:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/amap/api/col/l3s/aq;->v:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected final a(Landroid/view/MotionEvent;II)Z
    .locals 7

    iget v0, p0, Lcom/amap/api/col/l3s/ar;->l:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3s/ar;->m:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    iget v2, p0, Lcom/amap/api/col/l3s/aq;->n:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/aq;->o:F

    int-to-float v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ar;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/col/l3s/aq;->n:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/amap/api/col/l3s/aq;->o:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    :goto_1
    sub-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/aq;->p:F

    iget v0, p0, Lcom/amap/api/col/l3s/aq;->n:F

    iget v1, p0, Lcom/amap/api/col/l3s/aq;->o:F

    iget p0, p0, Lcom/amap/api/col/l3s/aq;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr p2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr p2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v6, v4, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v4, p2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    int-to-float p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-ge v6, p3, :cond_3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float v5, p1, p2

    :cond_3
    cmpg-float p1, v2, v0

    const/4 p2, 0x0

    if-ltz p1, :cond_5

    cmpg-float p1, v3, v0

    if-ltz p1, :cond_5

    cmpl-float p1, v2, v1

    if-gtz p1, :cond_5

    cmpl-float p1, v3, p0

    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, p2

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v6

    :goto_4
    cmpg-float p3, v4, v0

    if-ltz p3, :cond_7

    cmpg-float p3, v5, v0

    if-ltz p3, :cond_7

    cmpl-float p3, v4, v1

    if-gtz p3, :cond_7

    cmpl-float p0, v5, p0

    if-lez p0, :cond_6

    goto :goto_5

    :cond_6
    move p0, p2

    goto :goto_6

    :cond_7
    :goto_5
    move p0, v6

    :goto_6
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    return v6

    :cond_8
    if-eqz p1, :cond_9

    return v6

    :cond_9
    if-eqz p0, :cond_a

    return v6

    :cond_a
    return p2
.end method
