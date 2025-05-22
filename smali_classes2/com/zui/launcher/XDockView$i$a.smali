.class Lcom/zui/launcher/XDockView$i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/XDockView$i;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockView$i;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$i$a;->a:Lcom/zui/launcher/XDockView$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/XDockView$i$a;->a:Lcom/zui/launcher/XDockView$i;

    iget-object v0, v0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/XDockView;->o(Lcom/zui/launcher/XDockView;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/XDockView$i$a;->a:Lcom/zui/launcher/XDockView$i;

    iget-object v0, v0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->p(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockView$i$a;->a:Lcom/zui/launcher/XDockView$i;

    iget-object v0, v0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->p(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/XDockViewLayout;->setRelativeX(F)V

    iget-object p0, p0, Lcom/zui/launcher/XDockView$i$a;->a:Lcom/zui/launcher/XDockView$i;

    iget-object p0, p0, Lcom/zui/launcher/XDockView$i;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p0}, Lcom/zui/launcher/XDockView;->p(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScrollX(I)V

    :cond_0
    return-void
.end method
