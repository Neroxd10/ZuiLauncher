.class Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;
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
.field final synthetic a:Lcom/zui/launcher/GlobalSearchView;

.field final synthetic b:Lcom/zui/launcher/LauncherRootView;

.field final synthetic c:I

.field final synthetic d:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/LauncherRootView;ILcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->a:Lcom/zui/launcher/GlobalSearchView;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->b:Lcom/zui/launcher/LauncherRootView;

    iput p4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->c:I

    iput-object p5, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->d:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->d:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    const-string p0, "innerAnimatorSet  --- cancel "

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->a(Z)Z

    sget-object p1, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    const-string v0, "onFlingShowGlobalSearch.AnimationEnd: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->d:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->doGlobalSearch()V

    const-string p0, "innerAnimatorSet  --- end "

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->a:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->b:Lcom/zui/launcher/LauncherRootView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->b:Lcom/zui/launcher/LauncherRootView;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->a:Lcom/zui/launcher/GlobalSearchView;

    iget p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$e;->c:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setY(F)V

    :cond_1
    return-void
.end method
