.class Lcom/zui/launcher/XDockViewLayout$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewLayout;->removeItem(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/XDockViewLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewLayout$f;->b:Lcom/zui/launcher/XDockViewLayout;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewLayout$f;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout$f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout$f;->b:Lcom/zui/launcher/XDockViewLayout;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewLayout$f;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout$f;->b:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewLayout;->a(Lcom/zui/launcher/XDockViewLayout;)Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->updateSelectCount()V

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout$f;->b:Lcom/zui/launcher/XDockViewLayout;

    invoke-static {p0}, Lcom/zui/launcher/XDockViewLayout;->a(Lcom/zui/launcher/XDockViewLayout;)Lcom/zui/launcher/XDockView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->hideDockView()V

    return-void
.end method
