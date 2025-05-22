.class Lcom/zui/launcher/XDockViewAnimUtil$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->animAllAnimator(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zui/launcher/XDockViewAnimUtil;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->c:Lcom/zui/launcher/XDockViewAnimUtil;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "XDockViewAnimUtil"

    const-string v0, "bouncer cancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "XDockViewAnimUtil"

    const-string v0, "bouncer end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->c:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/XDockView;->setAnimationStatus(Z)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->c:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p1}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/XDockView;->setAddLayoutMode(Z)V

    iget-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->c:Lcom/zui/launcher/XDockViewAnimUtil;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/zui/launcher/XDockViewAnimUtil;->c:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "XDockViewAnimUtil"

    const-string v0, "bouncer start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$e;->c:Lcom/zui/launcher/XDockViewAnimUtil;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewAnimUtil;->a(Lcom/zui/launcher/XDockViewAnimUtil;)Lcom/zui/launcher/XDockView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockView;->setAnimationStatus(Z)V

    return-void
.end method
