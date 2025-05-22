.class public Lcom/zui/launcher/anim/SpringAnimationBuilder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:D

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->d:F

    const v1, 0x44bb8000    # 1500.0f

    iput v1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->e:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->g:F

    iput v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->p:F

    iput-object p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/anim/SpringAnimationBuilder;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->c:F

    return p0
.end method

.method private b(DDD)D
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->i:D

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p3, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p5, p0

    add-double/2addr p3, p5

    return-wide p3
.end method

.method private c(D)D
    .locals 7

    iget-wide v3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->l:D

    iget-wide v5, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->m:D

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->b(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private d(D)D
    .locals 7

    iget-wide v3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->j:D

    iget-wide v5, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->k:D

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->b(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private e(D)D
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->h:D

    neg-double v0, v0

    mul-double/2addr v0, p1

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    const-wide p0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private f(F)F
    .locals 4

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->e(D)D

    move-result-wide v2

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->d(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float p1, v2

    iget p0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->c:F

    add-float/2addr p1, p0

    return p1
.end method

.method private g(D)Z
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->e(D)D

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->d(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->n:D

    cmpl-double v2, v2, v4

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->c(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->o:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->computeParams()Lcom/zui/launcher/anim/SpringAnimationBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->p:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/zui/launcher/anim/r;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/launcher/anim/r;-><init>(Lcom/zui/launcher/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/zui/launcher/anim/SpringAnimationBuilder$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/launcher/anim/SpringAnimationBuilder$a;-><init>(Lcom/zui/launcher/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public computeParams()Lcom/zui/launcher/anim/SpringAnimationBuilder;
    .locals 15

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/util/DisplayController;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->e:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget v3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->f:F

    mul-float/2addr v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    iget v5, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->f:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-double v5, v5

    mul-double/2addr v5, v1

    iput-wide v5, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->h:D

    iput-wide v3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->i:D

    iget v1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->b:F

    iget v2, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->c:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->j:D

    mul-double v7, v5, v1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v11, v3, v9

    div-double/2addr v7, v11

    iget v11, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->d:F

    float-to-double v11, v11

    div-double/2addr v11, v3

    add-double/2addr v7, v11

    iput-wide v7, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->k:D

    mul-double v11, v1, v5

    div-double/2addr v11, v9

    mul-double v13, v7, v3

    sub-double/2addr v11, v13

    iput-wide v11, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->l:D

    mul-double/2addr v3, v1

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->m:D

    iget v3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->g:F

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v3, v4

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->n:D

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->o:D

    neg-double v0, v1

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->i:D

    div-double/2addr v0, v2

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v7, v2

    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->e(D)D

    move-result-wide v11

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->c(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    iget-wide v13, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->o:D

    cmpl-double v4, v11, v13

    if-ltz v4, :cond_0

    goto :goto_2

    :cond_0
    div-double/2addr v7, v9

    sub-double v7, v0, v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide v7, 0x409f400000000000L    # 2000.0

    div-double v11, v5, v7

    :goto_1
    sub-double v4, v0, v2

    cmpg-double v4, v4, v11

    if-gez v4, :cond_1

    double-to-float v0, v0

    iput v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->p:F

    return-object p0

    :cond_1
    add-double v4, v2, v0

    div-double/2addr v4, v9

    invoke-direct {p0, v4, v5}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->g(D)Z

    move-result v6

    if-eqz v6, :cond_2

    move-wide v0, v4

    goto :goto_1

    :cond_2
    move-wide v2, v4

    goto :goto_1

    :cond_3
    :goto_2
    add-double/2addr v0, v7

    goto :goto_0
.end method

.method public getDuration()J
    .locals 4

    iget p0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->p:F

    float-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getInterpolatedValue(F)F
    .locals 1

    iget v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->p:F

    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->f(F)F

    move-result p0

    return p0
.end method

.method public synthetic h(Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->getInterpolatedValue(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setDampingRatio(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
            toInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->f:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEndValue(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;
    .locals 0

    iput p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->c:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->g:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStartValue(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;
    .locals 0

    iput p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->b:F

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;
    .locals 0

    iput p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->d:F

    return-object p0
.end method

.method public setStiffness(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->e:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs setValues([F)Lcom/zui/launcher/anim/SpringAnimationBuilder;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    aget v0, p1, v1

    iput v0, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->b:F

    array-length v0, p1

    sub-int/2addr v0, v2

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    aget p1, p1, v1

    :goto_0
    iput p1, p0, Lcom/zui/launcher/anim/SpringAnimationBuilder;->c:F

    return-object p0
.end method
