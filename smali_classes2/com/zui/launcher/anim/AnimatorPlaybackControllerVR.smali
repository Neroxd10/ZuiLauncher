.class public Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;,
        Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;,
        Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/animation/ValueAnimator;

.field private final b:J

.field private final c:Landroid/animation/AnimatorSet;

.field private final d:[Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;

.field private e:Ljava/lang/Runnable;

.field protected mCurrentFraction:F

.field protected mOnCancelRunnable:Ljava/lang/Runnable;

.field protected mTargetCancelled:Z


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mTargetCancelled:Z

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    iput-wide p2, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->b:J

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$c;-><init>(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;-><init>(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->d:[Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic b(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->f(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static d(Landroid/animation/Animator;JLcom/zui/launcher/anim/SpringProperty;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "J",
            "Lcom/zui/launcher/anim/SpringProperty;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/animation/Animator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    instance-of v3, p0, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    new-instance v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;

    long-to-float p1, p1

    invoke-direct {v0, p0, p1, p3}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;-><init>(Landroid/animation/Animator;FLcom/zui/launcher/anim/SpringProperty;)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v3, p0, Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_4

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    invoke-static {v3, p1, p2, p3, p4}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->d(Landroid/animation/Animator;JLcom/zui/launcher/anim/SpringProperty;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown animation type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static e(Landroid/animation/Animator;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Ljava/util/function/Consumer<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->j(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->e(Landroid/animation/Animator;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static f(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/animation/Animator$AnimatorListener;",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/anim/b;

    invoke-direct {v0, p1}, Lcom/zui/launcher/anim/b;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->e(Landroid/animation/Animator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic g(Ljava/util/function/BiConsumer;Landroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->j(Ljava/util/ArrayList;)Ljava/util/List;

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

    invoke-interface {p0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private static j(Ljava/util/ArrayList;)Ljava/util/List;
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

.method public static wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/zui/launcher/anim/SpringProperty;->DEFAULT:Lcom/zui/launcher/anim/SpringProperty;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->d(Landroid/animation/Animator;JLcom/zui/launcher/anim/SpringProperty;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;-><init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V

    return-object v1
.end method


# virtual methods
.method protected clampDuration(F)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->b:J

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

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/zui/launcher/anim/g;->a:Lcom/zui/launcher/anim/g;

    invoke-static {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->f(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public dispatchOnCancelWithoutCancelRunnable()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchOnCancelWithoutCancelRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchOnCancelWithoutCancelRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mOnCancelRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->setOnCancelRunnable(Ljava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchOnCancel()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->setOnCancelRunnable(Ljava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    return-void
.end method

.method public dispatchOnStart()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/zui/launcher/anim/h;->a:Lcom/zui/launcher/anim/h;

    invoke-static {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->f(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/zui/launcher/anim/e;

    invoke-direct {v0, p1}, Lcom/zui/launcher/anim/e;-><init>(Landroid/animation/TimeInterpolator;)V

    invoke-static {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->e(Landroid/animation/Animator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forceFinishIfCloseToEnd()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method public getAnimationPlayer()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->b:J

    return-wide v0
.end method

.method public getInterpolatedProgress()F
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mCurrentFraction:F

    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    :goto_0
    return-object p0
.end method

.method public getProgressFraction()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mCurrentFraction:F

    return p0
.end method

.method public getTarget()Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->c:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public synthetic i(FFF)F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p2

    long-to-float p0, p2

    div-float/2addr p0, p1

    return p0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->setPlayFraction(F)V

    return-void
.end method

.method public pause()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->d:[Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public reverse()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mCurrentFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mCurrentFraction:F

    invoke-virtual {p0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->clampDuration(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setEndAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnCancelRunnable(Ljava/lang/Runnable;)Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mOnCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setPlayFraction(F)V
    .locals 3

    iput p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mCurrentFraction:F

    iget-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mTargetCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->d:[Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->b(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mCurrentFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mCurrentFraction:F

    sub-float/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->clampDuration(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startWithVelocity(Landroid/content/Context;ZFFJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    mul-float v5, p3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getProgressFraction()F

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/util/DefaultDisplay;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v6

    if-eqz p2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x2

    :goto_0
    iget-object v11, v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->d:[Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;

    array-length v12, v11

    move-wide v7, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_3

    aget-object v4, v11, v14

    iget-object v15, v4, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->b:Lcom/zui/launcher/anim/SpringProperty;

    iget v15, v15, Lcom/zui/launcher/anim/SpringProperty;->flags:I

    and-int/2addr v15, v10

    if-eqz v15, :cond_2

    new-instance v15, Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-object/from16 v9, p1

    invoke-direct {v15, v9}, Lcom/zui/launcher/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    iget v13, v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mCurrentFraction:F

    invoke-virtual {v15, v13}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v13

    if-eqz p2, :cond_1

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v13, v15}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setStartVelocity(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setMinimumVisibleChange(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v13

    iget-object v15, v4, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->b:Lcom/zui/launcher/anim/SpringProperty;

    iget v15, v15, Lcom/zui/launcher/anim/SpringProperty;->a:F

    invoke-virtual {v13, v15}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v13

    iget-object v15, v4, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->b:Lcom/zui/launcher/anim/SpringProperty;

    iget v15, v15, Lcom/zui/launcher/anim/SpringProperty;->b:F

    invoke-virtual {v13, v15}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->computeParams()Lcom/zui/launcher/anim/SpringAnimationBuilder;

    move-result-object v13

    move v15, v10

    invoke-virtual {v13}, Lcom/zui/launcher/anim/SpringAnimationBuilder;->getDuration()J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-float v9, v9

    new-instance v10, Lcom/zui/launcher/anim/d;

    invoke-direct {v10, v0, v9}, Lcom/zui/launcher/anim/d;-><init>(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;F)V

    iput-object v10, v4, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->e:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$d;

    iget-object v4, v4, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;->a:Landroid/animation/ValueAnimator;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/zui/launcher/anim/v;

    invoke-direct {v9, v13}, Lcom/zui/launcher/anim/v;-><init>(Lcom/zui/launcher/anim/SpringAnimationBuilder;)V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_2
    move v15, v10

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move v10, v15

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    if-eqz p2, :cond_4

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    aput v16, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    cmp-long v3, v7, v1

    if-gtz v3, :cond_5

    iget-object v3, v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-static/range {p3 .. p3}, Lcom/zui/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_5

    :cond_5
    iget-object v3, v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    long-to-float v1, v1

    long-to-float v2, v7

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-static/range {p3 .. p3}, Lcom/zui/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_5
    iget-object v0, v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
