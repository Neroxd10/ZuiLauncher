.class public Lcom/zui/launcher/anim/PendingAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/anim/PropertySetterVR;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/anim/PendingAnimation$EndState;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/anim/PendingAnimation$EndState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/animation/AnimatorSet;

.field private final d:J

.field private e:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->b:Ljava/util/ArrayList;

    iput-wide p1, p0, Lcom/zui/launcher/anim/PendingAnimation;->d:J

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/PendingAnimation;->c:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic a(Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public add(Landroid/animation/Animator;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/anim/SpringProperty;->DEFAULT:Lcom/zui/launcher/anim/SpringProperty;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;Lcom/zui/launcher/anim/SpringProperty;)V

    return-void
.end method

.method public add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/zui/launcher/anim/SpringProperty;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;Lcom/zui/launcher/anim/SpringProperty;)V

    return-void
.end method

.method public add(Landroid/animation/Animator;Lcom/zui/launcher/anim/SpringProperty;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->c:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/zui/launcher/anim/PendingAnimation;->d:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-wide v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->d:J

    iget-object p0, p0, Lcom/zui/launcher/anim/PendingAnimation;->b:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1, p2, p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->d(Landroid/animation/Animator;JLcom/zui/launcher/anim/SpringProperty;Ljava/util/ArrayList;)V

    return-void
.end method

.method public addEndListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/anim/PendingAnimation$EndState;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/anim/PendingAnimation;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;FF",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    return-void
.end method

.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/PendingAnimation;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addOnFrameCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->e:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->e:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/anim/PendingAnimation;->e:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/launcher/anim/p;

    invoke-direct {v0, p1}, Lcom/zui/launcher/anim/p;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->e:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->e:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/anim/PendingAnimation;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildAnim()Landroid/animation/AnimatorSet;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->e:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/zui/launcher/anim/PendingAnimation;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/anim/PendingAnimation;->c:Landroid/animation/AnimatorSet;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createPlaybackController()Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;
    .locals 4

    new-instance v0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-virtual {p0}, Lcom/zui/launcher/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-wide v2, p0, Lcom/zui/launcher/anim/PendingAnimation;->d:J

    iget-object p0, p0, Lcom/zui/launcher/anim/PendingAnimation;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;-><init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V

    return-object v0
.end method

.method public finish(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    new-instance v2, Lcom/zui/launcher/anim/PendingAnimation$EndState;

    invoke-direct {v2, p1, p2}, Lcom/zui/launcher/anim/PendingAnimation$EndState;-><init>(ZI)V

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/anim/PendingAnimation;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/anim/PendingAnimation;->d:J

    return-wide v0
.end method

.method public setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;F",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide p2, p0, Lcom/zui/launcher/anim/PendingAnimation;->d:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    return-void
.end method

.method public setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;I",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/util/IntProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/anim/AlphaUpdateListener;

    invoke-direct {v0, p1}, Lcom/zui/launcher/anim/AlphaUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void
.end method
