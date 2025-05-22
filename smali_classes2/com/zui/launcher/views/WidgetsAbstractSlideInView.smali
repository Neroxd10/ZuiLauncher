.class public abstract Lcom/zui/launcher/views/WidgetsAbstractSlideInView;
.super Lcom/zui/launcher/AbstractFloatingView;
.source ""

# interfaces
.implements Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/views/WidgetsAbstractSlideInView$OnCloseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/zui/launcher/views/ActivityContext;",
        ">",
        "Lcom/zui/launcher/AbstractFloatingView;",
        "Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;"
    }
.end annotation


# static fields
.field protected static final TRANSLATION_SHIFT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/views/WidgetsAbstractSlideInView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TRANSLATION_SHIFT_CLOSED:F = 1.0f

.field protected static final TRANSLATION_SHIFT_OPENED:F


# instance fields
.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mColorScrim:Landroid/view/View;

.field protected mContent:Landroid/view/View;

.field protected mNoIntercept:Z

.field protected mOnCloseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/views/WidgetsAbstractSlideInView$OnCloseListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field protected mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected final mSwipeDetector:Lcom/zui/launcher/touch/SingleAxisSwipeDetector;

.field protected mTranslationShift:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationShift"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mTranslationShift:F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    invoke-static {p1}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    new-instance p2, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;

    sget-object p3, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p2, p1, p0, p3}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object p2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mSwipeDetector:Lcom/zui/launcher/touch/SingleAxisSwipeDetector;

    const/4 p2, 0x0

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$b;

    invoke-direct {p3, p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$b;-><init>(Lcom/zui/launcher/views/WidgetsAbstractSlideInView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getScrimColor(Landroid/content/Context;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->createColorScrim(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mColorScrim:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/views/WidgetsAbstractSlideInView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method


# virtual methods
.method public addOnCloseListener(Lcom/zui/launcher/views/WidgetsAbstractSlideInView$OnCloseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected attachToContainer()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected createColorScrim(Landroid/content/Context;I)Landroid/view/View;
    .locals 0

    new-instance p0, Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method protected getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p0

    return-object p0
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected handleClose(ZJ)V
    .locals 5

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->setTranslationShift(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->onCloseComplete()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$c;-><init>(Lcom/zui/launcher/views/WidgetsAbstractSlideInView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mSwipeDetector:Lcom/zui/launcher/touch/SingleAxisSwipeDetector;

    invoke-virtual {p1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->isIdleState()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected onCloseComplete()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    sget-object v0, Lcom/zui/launcher/views/u;->a:Lcom/zui/launcher/views/u;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDrag(F)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->setTranslationShift(F)V

    const/4 p0, 0x0

    return p0
.end method

.method public onDragEnd(F)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mSwipeDetector:Lcom/zui/launcher/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v1

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mTranslationShift:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/zui/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v1, v3

    invoke-static {p1, v1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v1, v2, v5

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mTranslationShift:F

    invoke-static {p1, v1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0

    return-void
.end method

.method protected setTranslationShift(F)V
    .locals 2

    iput p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mTranslationShift:F

    iget-object v0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
