.class Lcom/zui/launcher/XDockView$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView;->doStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/XDockView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->p(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/XDockViewLayout;->setRelativeX(F)V

    iget-object v0, p0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->p(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScrollX(I)V

    iget-object v0, p0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->p(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/XDockView$i$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/XDockView$i$a;-><init>(Lcom/zui/launcher/XDockView$i;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/XDockViewLayout;->animateStack(ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    sget-object v1, Lcom/zui/launcher/XDockView$q;->STACK_MODE:Lcom/zui/launcher/XDockView$q;

    invoke-static {v0, v1}, Lcom/zui/launcher/XDockView;->f(Lcom/zui/launcher/XDockView;Lcom/zui/launcher/XDockView$q;)Lcom/zui/launcher/XDockView$q;

    iget-object v0, p0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->g(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockView$m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p0}, Lcom/zui/launcher/XDockView;->g(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockView$m;

    move-result-object p0

    invoke-interface {p0}, Lcom/zui/launcher/XDockView$m;->d()V

    :cond_0
    return-void
.end method
