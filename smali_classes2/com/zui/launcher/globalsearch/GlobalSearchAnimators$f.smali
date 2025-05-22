.class Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->onFlingShowGlobalSearch(Landroid/view/View;ILcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/LauncherRootView;

.field final synthetic c:Landroid/animation/AnimatorSet;

.field final synthetic d:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Landroid/view/View;Lcom/zui/launcher/LauncherRootView;Landroid/animation/AnimatorSet;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->b:Lcom/zui/launcher/LauncherRootView;

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->c:Landroid/animation/AnimatorSet;

    iput-object p5, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->d:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->d:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    const-string p1, "alphaAnimator  --- cancel "

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "alphaAnimator  --- end "

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    const-string p1, "innerAnimatorSet  --- start "

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const-string p1, "alphaAnimator  --- start "

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->b:Lcom/zui/launcher/LauncherRootView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->b:Lcom/zui/launcher/LauncherRootView;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$f;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
