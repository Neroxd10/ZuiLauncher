.class public Lzui/widget/AnimTextView;
.super Landroid/widget/TextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/AnimTextView$AnimationType;
    }
.end annotation


# static fields
.field private static final r:Landroid/view/animation/Interpolator;


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Bitmap;

.field private final c:[F

.field private final d:[F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Landroid/animation/ValueAnimator;

.field private m:J

.field private n:J

.field private o:Landroid/animation/TimeInterpolator;

.field private p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzui/view/animation/QuadInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzui/view/animation/QuadInterpolator;-><init>(B)V

    sput-object v0, Lzui/widget/AnimTextView;->r:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lzui/widget/AnimTextView;->a:Z

    const/16 p1, 0x516

    new-array v0, p1, [F

    iput-object v0, p0, Lzui/widget/AnimTextView;->c:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lzui/widget/AnimTextView;->d:[F

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lzui/widget/AnimTextView;->e:F

    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Lzui/widget/AnimTextView;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzui/widget/AnimTextView;->n:J

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lzui/widget/AnimTextView;->o:Landroid/animation/TimeInterpolator;

    new-instance p1, Lzui/widget/AnimTextView$a;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$a;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lzui/widget/AnimTextView$b;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$b;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lzui/widget/AnimTextView;->a:Z

    const/16 p1, 0x516

    new-array p2, p1, [F

    iput-object p2, p0, Lzui/widget/AnimTextView;->c:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lzui/widget/AnimTextView;->d:[F

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lzui/widget/AnimTextView;->e:F

    const-wide/16 p1, 0x2bc

    iput-wide p1, p0, Lzui/widget/AnimTextView;->m:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lzui/widget/AnimTextView;->n:J

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lzui/widget/AnimTextView;->o:Landroid/animation/TimeInterpolator;

    new-instance p1, Lzui/widget/AnimTextView$a;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$a;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lzui/widget/AnimTextView$b;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$b;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lzui/widget/AnimTextView;->a:Z

    const/16 p1, 0x516

    new-array p2, p1, [F

    iput-object p2, p0, Lzui/widget/AnimTextView;->c:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lzui/widget/AnimTextView;->d:[F

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lzui/widget/AnimTextView;->e:F

    const-wide/16 p1, 0x2bc

    iput-wide p1, p0, Lzui/widget/AnimTextView;->m:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lzui/widget/AnimTextView;->n:J

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lzui/widget/AnimTextView;->o:Landroid/animation/TimeInterpolator;

    new-instance p1, Lzui/widget/AnimTextView$a;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$a;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lzui/widget/AnimTextView$b;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$b;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method static synthetic a(Lzui/widget/AnimTextView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/AnimTextView;->h(F)V

    return-void
.end method

.method static synthetic b(Lzui/widget/AnimTextView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/AnimTextView;->g(F)V

    return-void
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/AnimTextView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/TextView;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/AnimTextView;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/AnimTextView;->b:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lzui/widget/AnimTextView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/AnimTextView;->a:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lzui/widget/AnimTextView;->a:Z

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iget-boolean p0, p0, Lzui/widget/AnimTextView;->a:Z

    return p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/AnimTextView;->a:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->destroyDrawingCache()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/AnimTextView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private e()V
    .locals 9

    iget-object v0, p0, Lzui/widget/AnimTextView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lzui/widget/AnimTextView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x1e

    if-gt v3, v5, :cond_1

    int-to-float v5, v3

    mul-float/2addr v5, v1

    const/high16 v6, 0x41f00000    # 30.0f

    div-float/2addr v5, v6

    move v6, v2

    :goto_1
    const/16 v7, 0x14

    if-gt v6, v7, :cond_0

    int-to-float v7, v6

    mul-float/2addr v7, v0

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    iget-object v8, p0, Lzui/widget/AnimTextView;->c:[F

    invoke-static {v8, v4, v7, v5}, Lzui/widget/AnimTextView;->f([FIFF)V

    iget-object v8, p0, Lzui/widget/AnimTextView;->d:[F

    invoke-static {v8, v4, v7, v5}, Lzui/widget/AnimTextView;->f([FIFF)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lzui/widget/AnimTextView;->initializeAnimation(FF)V

    return-void
.end method

.method private static f([FIFF)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    aput p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aput p3, p0, p1

    return-void
.end method

.method private g(F)V
    .locals 10

    iget-object v0, p0, Lzui/widget/AnimTextView;->d:[F

    iget-object v1, p0, Lzui/widget/AnimTextView;->c:[F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v2

    const/high16 v3, -0x3db80000    # -50.0f

    mul-float/2addr p1, v3

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x516

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x0

    aget v5, v0, v4

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    iget v7, p0, Lzui/widget/AnimTextView;->k:F

    sub-float/2addr v7, v6

    iget v6, p0, Lzui/widget/AnimTextView;->h:F

    sub-float v8, v6, v5

    div-float/2addr v8, v6

    mul-float/2addr v8, p1

    sub-float v9, v6, v5

    div-float/2addr v9, v6

    mul-float/2addr v8, v9

    sget-object v6, Lzui/widget/AnimTextView;->r:Landroid/view/animation/Interpolator;

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lzui/widget/AnimTextView;->k:F

    div-float/2addr v7, v9

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v2, v6

    mul-float/2addr v8, v6

    add-float/2addr v5, v8

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private h(F)V
    .locals 10

    iget-object v0, p0, Lzui/widget/AnimTextView;->d:[F

    iget-object v1, p0, Lzui/widget/AnimTextView;->c:[F

    iget v2, p0, Lzui/widget/AnimTextView;->g:F

    mul-float/2addr v2, p1

    const/4 p1, 0x0

    :goto_0
    const/16 v3, 0x516

    if-ge p1, v3, :cond_2

    aget v3, v0, p1

    add-int/lit8 v4, p1, 0x1

    aget v5, v0, v4

    cmpl-float v6, v3, v2

    if-lez v6, :cond_0

    aput v3, v1, p1

    iget v3, p0, Lzui/widget/AnimTextView;->k:F

    aput v3, v1, v4

    goto :goto_1

    :cond_0
    iget v6, p0, Lzui/widget/AnimTextView;->f:F

    sub-float v7, v2, v6

    cmpg-float v7, v3, v7

    if-gez v7, :cond_1

    aput v3, v1, p1

    aput v5, v1, v4

    goto :goto_1

    :cond_1
    sub-float v7, v2, v3

    div-float/2addr v7, v6

    iget v6, p0, Lzui/widget/AnimTextView;->k:F

    sub-float/2addr v5, v6

    const v6, 0x3fc90fdb

    mul-float/2addr v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v5

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    sub-float/2addr v3, v8

    aput v3, v1, p1

    iget v3, p0, Lzui/widget/AnimTextView;->k:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    aput v3, v1, v4

    :goto_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public cancelMeshAnimation()V
    .locals 1

    iget-object v0, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lzui/widget/AnimTextView;->d()V

    return-void
.end method

.method public initializeAnimation(FF)V
    .locals 1

    iput p1, p0, Lzui/widget/AnimTextView;->h:F

    iput p2, p0, Lzui/widget/AnimTextView;->i:F

    iget v0, p0, Lzui/widget/AnimTextView;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lzui/widget/AnimTextView;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lzui/widget/AnimTextView;->g:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lzui/widget/AnimTextView;->j:F

    mul-float/2addr p2, v0

    iput p2, p0, Lzui/widget/AnimTextView;->k:F

    return-void
.end method

.method public isDrawCahe()Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/AnimTextView;->a:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lzui/widget/AnimTextView;->a:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lzui/widget/AnimTextView;->b:Landroid/graphics/Bitmap;

    const/16 v3, 0x14

    const/16 v4, 0x1e

    iget-object v5, p0, Lzui/widget/AnimTextView;->c:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setDuration(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lzui/widget/AnimTextView;->m:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animators cannot have negative duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    iput-object p1, p0, Lzui/widget/AnimTextView;->o:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setRotateAreaWidth(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const p1, 0x3e99999a    # 0.3f

    :cond_0
    iput p1, p0, Lzui/widget/AnimTextView;->e:F

    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    iput-wide p1, p0, Lzui/widget/AnimTextView;->n:J

    return-void
.end method

.method public startMeshAnimation(Lzui/widget/AnimTextView$AnimationType;)V
    .locals 5

    iget-object v0, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->isDrawCahe()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lzui/widget/AnimTextView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lzui/widget/AnimTextView;->e()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lzui/widget/AnimTextView;->m:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lzui/widget/AnimTextView;->o:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p0, Lzui/widget/AnimTextView;->n:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_3
    sget-object v1, Lzui/widget/AnimTextView$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lzui/widget/AnimTextView;->h:F

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPivotX(F)V

    iget p1, p0, Lzui/widget/AnimTextView;->k:F

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object p1, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lzui/widget/AnimTextView;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    goto :goto_1

    :cond_5
    iget p1, p0, Lzui/widget/AnimTextView;->j:F

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPivotX(F)V

    iget p1, p0, Lzui/widget/AnimTextView;->k:F

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object p1, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lzui/widget/AnimTextView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_2
    iget-object p0, p0, Lzui/widget/AnimTextView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
