.class public Lcom/zui/launcher/anim/SpringObjectAnimator;
.super Landroid/animation/ValueAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/anim/SpringObjectAnimator$SpringProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/ValueAnimator;"
    }
.end annotation


# static fields
.field private static i:Z = false


# instance fields
.field private a:Landroid/animation/ObjectAnimator;

.field private b:[F

.field private c:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private d:Lcom/zui/launcher/anim/SpringObjectAnimator$SpringProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/anim/SpringObjectAnimator$SpringProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;FFF[F)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->f:Z

    iput-boolean v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->g:Z

    iput-boolean v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->h:Z

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->createFloatPropertyCompat(Landroid/util/FloatProperty;)Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p3, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v0, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    const p4, 0x3c23d70a    # 0.01f

    invoke-virtual {p3, p4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance p3, Lcom/zui/launcher/anim/SpringObjectAnimator$SpringProperty;

    iget-object p4, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p3, p2, p4}, Lcom/zui/launcher/anim/SpringObjectAnimator$SpringProperty;-><init>(Landroid/util/FloatProperty;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iput-object p3, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->d:Lcom/zui/launcher/anim/SpringObjectAnimator$SpringProperty;

    invoke-static {p1, p3, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    iput-object p6, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->b:[F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/zui/launcher/anim/SpringObjectAnimator$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/anim/SpringObjectAnimator$a;-><init>(Lcom/zui/launcher/anim/SpringObjectAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/zui/launcher/anim/u;

    invoke-direct {p2, p0}, Lcom/zui/launcher/anim/u;-><init>(Lcom/zui/launcher/anim/SpringObjectAnimator;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/zui/launcher/anim/t;

    invoke-direct {p2, p0}, Lcom/zui/launcher/anim/t;-><init>(Lcom/zui/launcher/anim/SpringObjectAnimator;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/anim/SpringObjectAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/zui/launcher/anim/SpringObjectAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/anim/SpringObjectAnimator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/anim/SpringObjectAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->i()V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/anim/SpringObjectAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method private i()V
    .locals 2

    sget-boolean v0, Lcom/zui/launcher/anim/SpringObjectAnimator;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryEnding#mAnimatorEnded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSpringEnded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpringObjectAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->g:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->h:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    return-void
.end method

.method public end()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public synthetic f(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->f:Z

    return-void
.end method

.method public synthetic g(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->f:Z

    invoke-direct {p0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->i()V

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getObjectAnimatorListeners()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public getStartDelay()J
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic h(F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public isPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->pause()V

    return-void
.end method

.method public removeAllListeners()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->resume()V

    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/anim/SpringObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startSpring(FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p3, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->d:Lcom/zui/launcher/anim/SpringObjectAnimator$SpringProperty;

    invoke-virtual {p3}, Lcom/zui/launcher/anim/SpringObjectAnimator$SpringProperty;->switchToSpring()V

    iget-object p3, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p3, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->b:[F

    if-nez p1, :cond_0

    aget v0, v0, p2

    goto :goto_0

    :cond_0
    aget v0, v0, p3

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->b:[F

    aget p1, p1, p3

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->b:[F

    aget p1, p1, p2

    :goto_1
    iget-object p2, p0, Lcom/zui/launcher/anim/SpringObjectAnimator;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/zui/launcher/anim/s;

    invoke-direct {p3, p0, p1}, Lcom/zui/launcher/anim/s;-><init>(Lcom/zui/launcher/anim/SpringObjectAnimator;F)V

    invoke-virtual {p0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->getStartDelay()J

    move-result-wide p0

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
