.class public abstract Lcom/zui/launcher/anim/AnimatorPlaybackController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/anim/AnimatorPlaybackController$b;,
        Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;
    }
.end annotation


# static fields
.field private static h:Z = false


# instance fields
.field private final a:Landroid/animation/ValueAnimator;

.field private final b:J

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;

.field private e:Lcom/zui/launcher/anim/AnimatorPlaybackController$b;

.field private f:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private g:Z

.field protected final mAnim:Landroid/animation/AnimatorSet;

.field protected mCurrentFraction:F

.field protected mOnCancelRunnable:Ljava/lang/Runnable;

.field protected mTargetCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->g:Z

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    iput-wide p2, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->b:J

    iput-object p4, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mOnCancelRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;-><init>(Lcom/zui/launcher/anim/AnimatorPlaybackController;Lcom/zui/launcher/anim/AnimatorPlaybackController$a;)V

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController$b;

    iget-object p2, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/zui/launcher/anim/AnimatorPlaybackController$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController$a;-><init>(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->c:Ljava/util/Set;

    new-instance p1, Lcom/zui/launcher/anim/a;

    invoke-direct {p1, p0}, Lcom/zui/launcher/anim/a;-><init>(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->f:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->c:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->k(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->k(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->k(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->f(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private g(Landroid/animation/Animator;)V
    .locals 2

    instance-of v0, p1, Lcom/zui/launcher/anim/SpringObjectAnimator;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/anim/SpringObjectAnimator;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->getObjectAnimatorListeners()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->k(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->k(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->g(Landroid/animation/Animator;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private h(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->k(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {p0, v0, p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->h(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static k(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 7

    new-instance v6, Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;-><init>(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;Lcom/zui/launcher/anim/AnimatorPlaybackController$a;)V

    return-object v6
.end method


# virtual methods
.method protected clampDuration(F)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->b:J

    long-to-float p0, v0

    mul-float/2addr p0, p1

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    float-to-long p0, p0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public dispatchOnCancel()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->f(Landroid/animation/Animator;)V

    return-void
.end method

.method public dispatchOnStart()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->g(Landroid/animation/Animator;)V

    return-void
.end method

.method public dispatchOnStartWithVelocity(FF)V
    .locals 5

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    return-void

    :cond_0
    sget-boolean v0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->h:Z

    const-string v1, "AnimatorPlaybackCtrler"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchOnStartWithVelocity#end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", velocity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    instance-of v3, v2, Lcom/zui/launcher/anim/SpringObjectAnimator;

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/zui/launcher/anim/AnimatorPlaybackController;->h:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found springAnimator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    check-cast v2, Lcom/zui/launcher/anim/SpringObjectAnimator;

    iget-object v3, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->c:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/zui/launcher/anim/SpringObjectAnimator;->getSpring()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->f:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v2, p1, p2, v3}, Lcom/zui/launcher/anim/SpringObjectAnimator;->startSpring(FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    return-void
.end method

.method public dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->h(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public getAnimationPlayer()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->b:J

    return-wide v0
.end method

.method public getInterpolatedProgress()F
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    :goto_0
    return-object p0
.end method

.method public getOnCancelRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mOnCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getProgressFraction()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    return p0
.end method

.method public getTarget()Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public synthetic j(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->e:Lcom/zui/launcher/anim/AnimatorPlaybackController$b;

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public reverse()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    invoke-virtual {p0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->clampDuration(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setEndAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnCancelRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mOnCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public abstract setPlayFraction(F)V
.end method

.method public skipToEnd()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->g:Z

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->g:Z

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    sub-float/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->clampDuration(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
