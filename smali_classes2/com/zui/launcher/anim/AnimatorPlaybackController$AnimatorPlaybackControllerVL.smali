.class public Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;
.super Lcom/zui/launcher/anim/AnimatorPlaybackController;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorPlaybackControllerVL"
.end annotation


# instance fields
.field private final i:[Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->l(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->i:[Landroid/animation/ValueAnimator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;Lcom/zui/launcher/anim/AnimatorPlaybackController$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;-><init>(Landroid/animation/AnimatorSet;JLjava/lang/Runnable;)V

    return-void
.end method

.method private l(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    instance-of v4, v3, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v3, p2}, Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->l(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown animation type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method


# virtual methods
.method public setPlayFraction(F)V
    .locals 6

    iput p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    iget-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->clampDuration(F)J

    move-result-wide v0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->i:[Landroid/animation/ValueAnimator;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
