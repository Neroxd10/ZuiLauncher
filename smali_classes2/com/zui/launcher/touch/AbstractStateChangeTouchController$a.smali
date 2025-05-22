.class Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->s(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->b(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Z)Z

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    invoke-static {p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->a(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    invoke-static {p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->c(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)V

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    iget-object v0, p1, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/zui/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    invoke-static {p1, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->d(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;F)F

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    invoke-virtual {p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->getShiftRange()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    iget-object v2, p1, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mFromState:Lcom/zui/launcher/LauncherState;

    iget-object v3, p1, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    invoke-static {p1, v2, v3, v0, v1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->g(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;J)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->f(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/anim/AnimatorPlaybackController;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    invoke-static {p1}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->e(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    iget-object p1, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    iget-object v0, p1, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->mToState:Lcom/zui/launcher/LauncherState;

    invoke-static {p1, v0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->h(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/LauncherState;

    iget-object p0, p0, Lcom/zui/launcher/touch/AbstractStateChangeTouchController$a;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    invoke-static {p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->i(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;)V

    :cond_1
    return-void
.end method
