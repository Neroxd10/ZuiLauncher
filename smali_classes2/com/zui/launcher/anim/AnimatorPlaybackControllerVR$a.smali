.class Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;-><init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;


# direct methods
.method constructor <init>(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;->a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;->a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mTargetCancelled:Z

    iget-object p1, p1, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mOnCancelRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;->a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mOnCancelRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;->a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mTargetCancelled:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mOnCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR$a;->a:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->mTargetCancelled:Z

    return-void
.end method
