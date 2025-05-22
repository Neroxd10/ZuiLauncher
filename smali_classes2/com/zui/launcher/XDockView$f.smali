.class Lcom/zui/launcher/XDockView$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView;->flyBackAllItems()Z
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

    iput-object p1, p0, Lcom/zui/launcher/XDockView$f;->a:Lcom/zui/launcher/XDockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/XDockView$f;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->r(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/XDockView$f;->a:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->r(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView$f;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/XDockView$f;->a:Lcom/zui/launcher/XDockView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_0
    return-void
.end method
