.class Lcom/zui/quickstep/t4$a;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/t4;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/t4;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/t4;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/t4$a;->a:Lcom/zui/quickstep/t4;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/quickstep/t4$a;->a:Lcom/zui/quickstep/t4;

    invoke-static {p1}, Lcom/zui/quickstep/t4;->c(Lcom/zui/quickstep/t4;)Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/t4$a;->a:Lcom/zui/quickstep/t4;

    invoke-static {p0}, Lcom/zui/quickstep/t4;->c(Lcom/zui/quickstep/t4;)Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->setDrawRootViewBackground(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/quickstep/t4$a;->a:Lcom/zui/quickstep/t4;

    invoke-static {p1}, Lcom/zui/quickstep/t4;->c(Lcom/zui/quickstep/t4;)Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/t4$a;->a:Lcom/zui/quickstep/t4;

    invoke-static {p0}, Lcom/zui/quickstep/t4;->c(Lcom/zui/quickstep/t4;)Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->setDrawRootViewBackground(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/t4$a;->a:Lcom/zui/quickstep/t4;

    invoke-static {p1}, Lcom/zui/quickstep/t4;->b(Lcom/zui/quickstep/t4;)Lcom/zui/quickstep/BaseRecentsView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/t4$a;->a:Lcom/zui/quickstep/t4;

    invoke-static {p0}, Lcom/zui/quickstep/t4;->b(Lcom/zui/quickstep/t4;)Lcom/zui/quickstep/BaseRecentsView;

    move-result-object p0

    invoke-interface {p0}, Lcom/zui/quickstep/BaseRecentsView;->animateUpRunningTaskIconScale()V

    :cond_0
    return-void
.end method
