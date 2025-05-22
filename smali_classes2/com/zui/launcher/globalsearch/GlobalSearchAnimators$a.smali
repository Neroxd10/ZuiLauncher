.class Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->removeGlobalSearchView(Lcom/zui/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->b:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->b:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   removeGlobalSearchView  mRemoveViewAnimator  onAnimationCancel    --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->b:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   removeGlobalSearchView  mRemoveViewAnimator  onAnimationEnd   --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->b:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->d(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Z)Z

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->notifySearchState()V

    return-void
.end method
