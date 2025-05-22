.class Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->onFingSmoothSearch(FLcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;Lcom/zui/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/GlobalSearchView;

.field final synthetic b:Lcom/zui/launcher/LauncherRootView;

.field final synthetic c:F

.field final synthetic d:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;FLcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->a:Lcom/zui/launcher/GlobalSearchView;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->b:Lcom/zui/launcher/LauncherRootView;

    iput p4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->c:F

    iput-object p5, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->d:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    const-string p1, "onFingSmoothAnimator onAnimationCancel ----   "

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->d:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    const-string p1, "onFingSmoothSearch.AnimationEnd: "

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->d:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->doGlobalSearch()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->a:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->b:Lcom/zui/launcher/LauncherRootView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->b:Lcom/zui/launcher/LauncherRootView;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->a:Lcom/zui/launcher/GlobalSearchView;

    iget p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$b;->c:F

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setY(F)V

    :cond_1
    return-void
.end method
