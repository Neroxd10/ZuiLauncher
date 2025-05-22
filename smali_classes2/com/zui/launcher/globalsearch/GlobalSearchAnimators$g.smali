.class Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;
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
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;->a:Lcom/zui/launcher/Launcher;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;->b:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scaleAnimator  cancel  alphaAnimator start isRunning -->  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$g;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    sget p1, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->LAUNCHER_ICON_SACLE:F

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->doViewScale(F)V

    const-string p0, "scaleAnimator  --- end "

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    const-string p0, "scaleAnimator  --- start "

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    return-void
.end method
