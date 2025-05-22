.class Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$j;
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

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$j;->b:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$j;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$j;->b:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$j;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getTempView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->c(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;Landroid/view/View;)Landroid/view/View;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  removeGlobalSearchView   smoothAnimator   onAnimationStart tempView  --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators$j;->b:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->b(Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    return-void
.end method
