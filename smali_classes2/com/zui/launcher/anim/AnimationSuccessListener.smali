.class public abstract Lcom/zui/launcher/anim/AnimationSuccessListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/anim/AnimationSuccessListener$b;
    }
.end annotation


# instance fields
.field protected mCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/anim/AnimationSuccessListener;->mCancelled:Z

    return-void
.end method

.method public static forRunnable(Ljava/lang/Runnable;)Lcom/zui/launcher/anim/AnimationSuccessListener;
    .locals 2

    new-instance v0, Lcom/zui/launcher/anim/AnimationSuccessListener$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/anim/AnimationSuccessListener$b;-><init>(Ljava/lang/Runnable;Lcom/zui/launcher/anim/AnimationSuccessListener$a;)V

    return-object v0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/anim/AnimationSuccessListener;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/anim/AnimationSuccessListener;->mCancelled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimationSuccessListener;->onAnimationSuccess(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public abstract onAnimationSuccess(Landroid/animation/Animator;)V
.end method
