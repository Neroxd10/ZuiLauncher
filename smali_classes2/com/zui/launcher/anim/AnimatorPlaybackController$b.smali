.class Lcom/zui/launcher/anim/AnimatorPlaybackController$b;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field final synthetic d:Lcom/zui/launcher/anim/AnimatorPlaybackController;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->d:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->a:Z

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->b:Z

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/anim/AnimatorPlaybackController;Lcom/zui/launcher/anim/AnimatorPlaybackController$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;-><init>(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method private c(Landroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->e(Ljava/util/ArrayList;)Ljava/util/List;

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

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->e(Ljava/util/ArrayList;)Ljava/util/List;

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

    invoke-direct {p0, v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->c(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimationSuccessListener;->mCancelled:Z

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->c:Z

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->d:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->a(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->a:Z

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->b:Z

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->d:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->b(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->a:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->b:Z

    :goto_0
    iget-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->c:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->d:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->c(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->a:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->b:Z

    if-eqz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->d:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iget-object p1, p1, Lcom/zui/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->c(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->d:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->d(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->d:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->d(Lcom/zui/launcher/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackController$b;->c:Z

    :cond_4
    return-void
.end method
