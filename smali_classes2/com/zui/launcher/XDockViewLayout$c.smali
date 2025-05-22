.class Lcom/zui/launcher/XDockViewLayout$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewLayout;->p(IZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/zui/launcher/XDockViewLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewLayout;ZILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    iput-boolean p2, p0, Lcom/zui/launcher/XDockViewLayout$c;->a:Z

    iput p3, p0, Lcom/zui/launcher/XDockViewLayout$c;->b:I

    iput-object p4, p0, Lcom/zui/launcher/XDockViewLayout$c;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "XDockView"

    const-string v0, "onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zui/launcher/XDockViewLayout;->d(Lcom/zui/launcher/XDockViewLayout;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-boolean p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->a:Z

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/zui/launcher/XDockViewLayout$c;->b:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v2, p1}, Lcom/zui/launcher/WorkspaceIconCompat;->setShadowsEnabled(Z)V

    invoke-interface {v2, p1}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    invoke-interface {v2}, Lcom/zui/launcher/WorkspaceIconCompat;->invalidate()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewLayout;->c(Lcom/zui/launcher/XDockViewLayout;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->a:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewLayout;->e(Lcom/zui/launcher/XDockViewLayout;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p1}, Lcom/zui/launcher/XDockViewLayout;->adjustLayout()V

    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewLayout;->f(Lcom/zui/launcher/XDockViewLayout;)V

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewLayout;->a(Lcom/zui/launcher/XDockViewLayout;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/XDockView;->setAnimStacking(Z)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p1, v0}, Lcom/zui/launcher/XDockViewLayout;->d(Lcom/zui/launcher/XDockViewLayout;Z)Z

    iget-object p1, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewLayout;->g(Lcom/zui/launcher/XDockViewLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout$c;->d:Lcom/zui/launcher/XDockViewLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/XDockViewLayout;->h(Lcom/zui/launcher/XDockViewLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
