.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation


# instance fields
.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget v0, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/material/transformation/TransformationChildLayout;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/google/android/material/transformation/TransformationChildCard;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p2, p3, p5, p7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result p3

    invoke-direct {p0, p2, p4, p6, p8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result p2

    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    invoke-virtual {p5, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p4, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p4, p5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {p9, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result p0

    neg-float p0, p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    iget p1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    return p0
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result p0

    neg-float p0, p0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    iget p1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p1

    return p0
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p0, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget p0, v1, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget p0, v1, Landroid/graphics/RectF;->left:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    :goto_0
    sub-float/2addr p0, p1

    :goto_1
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    add-float/2addr p0, p1

    return p0
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p0, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 p0, p0, 0x70

    const/16 p1, 0x10

    if-eq p0, p1, :cond_2

    const/16 p1, 0x30

    if-eq p0, p1, :cond_1

    const/16 p1, 0x50

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget p0, v1, Landroid/graphics/RectF;->bottom:F

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    iget p0, v1, Landroid/graphics/RectF;->top:F

    iget p1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    :goto_0
    sub-float/2addr p0, p1

    :goto_1
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    add-float/2addr p0, p1

    return p0
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F
    .locals 6

    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    iget-object p0, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p1, "expansion"

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide p0

    add-long/2addr v4, p0

    const-wide/16 p0, 0x11

    add-long/2addr v4, p0

    sub-long/2addr v4, v0

    long-to-float p0, v4

    long-to-float p1, v2

    div-float/2addr p0, p1

    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    invoke-static {p3, p4, p0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    instance-of p1, p2, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p1, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz p1, :cond_1

    sget p1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p7, 0x1

    if-eqz p3, :cond_4

    if-nez p4, :cond_3

    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    sget-object p1, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array p3, p7, [F

    const/high16 p4, 0x3f800000    # 1.0f

    aput p4, p3, p2

    invoke-static {p0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array p4, p7, [F

    aput p1, p4, p2

    invoke-static {p0, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    iget-object p1, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p2, "contentFade"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {p6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    instance-of p7, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez p7, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p1, p0

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    invoke-interface {p2, p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    :cond_1
    sget-object p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array p3, v0, [I

    aput p1, p3, p7

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array p3, v0, [I

    aput p0, p3, p7

    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p1, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p2, "color"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {p6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    const/4 p7, 0x1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    neg-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    sget-object p0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array p3, p7, [F

    const/4 p4, 0x0

    aput p4, p3, p1

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array p4, p7, [F

    neg-float p0, p0

    aput p0, p4, p1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    iget-object p1, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p2, "elevation"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {p6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    instance-of v1, v9, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v12, v9

    check-cast v12, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    iget-object v1, v10, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v8, v0, v9, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v1

    iget-object v2, v10, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v8, v0, v9, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v11

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    iget-object v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v0, v2

    iget-object v0, v10, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v2, "expansion"

    invoke-virtual {v0, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v14

    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, v1, v11, v13}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    invoke-interface {v12, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {v12}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v13, v0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v1

    move v3, v11

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v0

    invoke-static {v12, v1, v11, v0}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v10

    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    invoke-direct {v0, v8, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v4, v1

    float-to-int v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v6, v13

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-interface {v12}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v6, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-static {v12, v1, v11, v13}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v15

    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v7, v1

    float-to-int v11, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v4, v7

    move v5, v11

    move/from16 v16, v7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    iget-object v0, v10, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    invoke-virtual {v0}, Lcom/google/android/material/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v6

    move-object/from16 v0, p0

    move/from16 v8, v16

    move v9, v11

    move v10, v13

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    move-object v10, v15

    :goto_0
    invoke-virtual {v14, v10}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    sget-object p3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array p4, v2, [I

    aput v3, p4, v3

    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    goto :goto_0

    :cond_3
    sget-object p3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array p4, v2, [I

    aput v1, p4, v3

    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    :goto_0
    new-instance p4, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    invoke-direct {p4, p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p4, "iconFade"

    invoke-virtual {p2, p4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    add-long/2addr p2, p4

    cmp-long p0, p2, p6

    if-gez p0, :cond_0

    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr p6, p2

    invoke-virtual {p0, p6, p7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {p11, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {p7, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v10, p6

    iget-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {p0, v1, v2, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v4

    iget-object v5, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {p0, v1, v2, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_4

    cmpl-float v6, v1, v5

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    cmpg-float v7, v1, v5

    if-ltz v7, :cond_2

    :cond_1
    if-nez p3, :cond_3

    if-lez v6, :cond_3

    :cond_2
    iget-object v6, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "translationXCurveUpwards"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v8, "translationYCurveUpwards"

    goto :goto_1

    :cond_3
    iget-object v6, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "translationXCurveDownwards"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v8, "translationYCurveDownwards"

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v6, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "translationXLinear"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v8, "translationYLinear"

    :goto_1
    invoke-virtual {v7, v8}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v7

    move-object v11, v6

    move-object v12, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p3, :cond_6

    if-nez p4, :cond_5

    neg-float v8, v4

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationX(F)V

    neg-float v8, v1

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v7, [F

    aput v5, v9, v6

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v7, [F

    aput v5, v7, v6

    invoke-static {v2, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    neg-float v5, v4

    neg-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v7, [F

    neg-float v4, v4

    aput v4, v3, v6

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v7, [F

    neg-float v1, v1

    aput v1, v3, v6

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    :goto_2
    invoke-virtual {v11, v13}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v12, v14}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_2

    instance-of p0, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p0, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_0
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v10, p0

    move/from16 v11, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object v9, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    move v6, v8

    move v7, v9

    move-object v8, v13

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v13}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, p0, v11, v3, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
