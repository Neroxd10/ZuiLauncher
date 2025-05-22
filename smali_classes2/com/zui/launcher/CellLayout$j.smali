.class Lcom/zui/launcher/CellLayout$j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field b:F

.field c:F

.field d:F

.field e:F

.field final f:F

.field g:F

.field final h:I

.field i:Z

.field j:F

.field k:Landroid/animation/ValueAnimator;

.field final synthetic l:Lcom/zui/launcher/CellLayout;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/CellLayout;Landroid/view/View;IIIIIII)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move/from16 v8, p3

    iput-object v7, v0, Lcom/zui/launcher/CellLayout$j;->l:Lcom/zui/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/zui/launcher/CellLayout$j;->i:Z

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/launcher/CellLayout$j;->j:F

    iget-object v6, v7, Lcom/zui/launcher/CellLayout;->j:[I

    move-object v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->T(IIII[I)V

    iget-object v6, v7, Lcom/zui/launcher/CellLayout;->j:[I

    aget v10, v6, v9

    const/4 v11, 0x1

    aget v12, v6, v11

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->T(IIII[I)V

    iget-object v1, v7, Lcom/zui/launcher/CellLayout;->j:[I

    aget v2, v1, v9

    aget v1, v1, v11

    sub-int/2addr v2, v10

    sub-int/2addr v1, v12

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    iput v8, v0, Lcom/zui/launcher/CellLayout$j;->h:I

    invoke-virtual {p0, v9}, Lcom/zui/launcher/CellLayout$j;->f(Z)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/zui/launcher/CellLayout$j;->g:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/zui/launcher/CellLayout$j;->f:F

    iget v3, v0, Lcom/zui/launcher/CellLayout$j;->d:F

    iput v3, v0, Lcom/zui/launcher/CellLayout$j;->b:F

    iget v3, v0, Lcom/zui/launcher/CellLayout$j;->e:F

    iput v3, v0, Lcom/zui/launcher/CellLayout$j;->c:F

    if-nez v8, :cond_0

    const/4 v11, -0x1

    :cond_0
    if-ne v2, v1, :cond_1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget v1, v0, Lcom/zui/launcher/CellLayout$j;->b:F

    neg-int v3, v11

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v3, v2

    iget v2, v7, Lcom/zui/launcher/CellLayout;->G:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/zui/launcher/CellLayout$j;->b:F

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget v2, v0, Lcom/zui/launcher/CellLayout$j;->c:F

    neg-int v3, v11

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v3, v1

    iget v1, v7, Lcom/zui/launcher/CellLayout;->G:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    int-to-float v2, v2

    div-float v3, v1, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    iget v5, v0, Lcom/zui/launcher/CellLayout$j;->b:F

    neg-int v6, v11

    int-to-float v6, v6

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v6

    float-to-double v8, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget v2, v7, Lcom/zui/launcher/CellLayout;->G:F

    float-to-double v12, v2

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v2, v8

    int-to-float v2, v2

    add-float/2addr v5, v2

    iput v5, v0, Lcom/zui/launcher/CellLayout$j;->b:F

    iget v2, v0, Lcom/zui/launcher/CellLayout$j;->c:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v6, v1

    float-to-double v5, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v1, v7, Lcom/zui/launcher/CellLayout;->G:F

    float-to-double v7, v1

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    double-to-int v1, v5

    int-to-float v1, v1

    add-float/2addr v2, v1

    :goto_0
    iput v2, v0, Lcom/zui/launcher/CellLayout$j;->c:F

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/CellLayout$j;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/CellLayout$j;->e(F)V

    return-void
.end method

.method private c()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$j;->k:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private e(F)V
    .locals 4

    iput p1, p0, Lcom/zui/launcher/CellLayout$j;->j:F

    iget p1, p0, Lcom/zui/launcher/CellLayout$j;->h:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/launcher/CellLayout$j;->i:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zui/launcher/CellLayout$j;->j:F

    :goto_0
    iget v1, p0, Lcom/zui/launcher/CellLayout$j;->b:F

    mul-float/2addr v1, p1

    sub-float v2, v0, p1

    iget v3, p0, Lcom/zui/launcher/CellLayout$j;->d:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/zui/launcher/CellLayout$j;->c:F

    mul-float/2addr p1, v3

    iget v3, p0, Lcom/zui/launcher/CellLayout$j;->e:F

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    iget p1, p0, Lcom/zui/launcher/CellLayout$j;->j:F

    iget v1, p0, Lcom/zui/launcher/CellLayout$j;->f:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/zui/launcher/CellLayout$j;->g:F

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/CellLayout$j;->b:F

    iget v1, p0, Lcom/zui/launcher/CellLayout$j;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/CellLayout$j;->c:F

    iget v1, p0, Lcom/zui/launcher/CellLayout$j;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/CellLayout$j;->l:Lcom/zui/launcher/CellLayout;

    iget-object v1, v1, Lcom/zui/launcher/CellLayout;->z:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$j;->l:Lcom/zui/launcher/CellLayout;

    iget-object v1, v1, Lcom/zui/launcher/CellLayout;->z:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout$j;

    invoke-direct {v1}, Lcom/zui/launcher/CellLayout$j;->c()V

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$j;->l:Lcom/zui/launcher/CellLayout;

    iget-object v1, v1, Lcom/zui/launcher/CellLayout;->z:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout$j;->d()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/zui/launcher/CellLayout;->a()Landroid/util/Property;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/CellLayout$j;->k:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$j;->l:Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_3
    iget v1, p0, Lcom/zui/launcher/CellLayout$j;->h:I

    if-nez v1, :cond_4

    const-wide/16 v1, 0x28a

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0x12c

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/zui/launcher/CellLayout$j$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/CellLayout$j$a;-><init>(Lcom/zui/launcher/CellLayout$j;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$j;->l:Lcom/zui/launcher/CellLayout;

    iget-object v1, v1, Lcom/zui/launcher/CellLayout;->z:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {v1, v2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method d()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$j;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/CellLayout$j;->f(Z)V

    new-instance v0, Lcom/zui/launcher/anim/PropertyListBuilder;

    invoke-direct {v0}, Lcom/zui/launcher/anim/PropertyListBuilder;-><init>()V

    iget v1, p0, Lcom/zui/launcher/CellLayout$j;->g:F

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/PropertyListBuilder;->scale(F)Lcom/zui/launcher/anim/PropertyListBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/CellLayout$j;->d:F

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/PropertyListBuilder;->translationX(F)Lcom/zui/launcher/anim/PropertyListBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/CellLayout$j;->e:F

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/PropertyListBuilder;->translationY(F)Lcom/zui/launcher/anim/PropertyListBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/CellLayout$j;->k:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$j;->l:Lcom/zui/launcher/CellLayout;

    iget-object v0, v0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->cast(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$j;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragController;->addFirstFrameAnimationHelper(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$j;->k:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$j;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method f(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    instance-of v0, p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/CellLayout$j;->g:F

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/zui/launcher/CellLayout$j;->d:F

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/zui/launcher/CellLayout$j;->e:F

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$j;->l:Lcom/zui/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->shouldExchangeXY()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    instance-of v0, p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/zui/launcher/CellLayout$j;->e:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/CellLayout$j;->e:F

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {p1}, Lcom/zui/launcher/LeosWidgetInterface;->getScaleToFit()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/CellLayout$j;->g:F

    invoke-interface {p1}, Lcom/zui/launcher/LeosWidgetInterface;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/zui/launcher/CellLayout$j;->d:F

    invoke-interface {p1}, Lcom/zui/launcher/LeosWidgetInterface;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/zui/launcher/CellLayout$j;->g:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/CellLayout$j;->d:F

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/CellLayout$j;->g:F

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/CellLayout$j;->d:F

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$j;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/zui/launcher/CellLayout$j;->e:F

    :cond_3
    :goto_1
    return-void
.end method
