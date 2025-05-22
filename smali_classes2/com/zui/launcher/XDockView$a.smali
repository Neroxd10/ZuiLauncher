.class Lcom/zui/launcher/XDockView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView;->startAnimatorSet(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zui/launcher/XDockView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockView;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$a;->c:Lcom/zui/launcher/XDockView;

    iput-boolean p2, p0, Lcom/zui/launcher/XDockView$a;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/XDockView$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/XDockView$a;->c:Lcom/zui/launcher/XDockView;

    iget-boolean v1, p0, Lcom/zui/launcher/XDockView$a;->a:Z

    invoke-static {v0, v1}, Lcom/zui/launcher/XDockView;->j(Lcom/zui/launcher/XDockView;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/XDockView$a;->c:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->i(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewAnimUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView$a;->c:Lcom/zui/launcher/XDockView;

    iget-object v1, v1, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zui/launcher/XDockView$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/XDockViewAnimUtil;->animAllAnimator(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/launcher/XDockView$a;->c:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->k(Lcom/zui/launcher/XDockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockView$a;->c:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->i(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewAnimUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockViewAnimUtil;->endAnimatorSet()Z

    iget-object p0, p0, Lcom/zui/launcher/XDockView$a;->c:Lcom/zui/launcher/XDockView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/XDockView;->l(Lcom/zui/launcher/XDockView;Z)Z

    :cond_0
    return-void
.end method
