.class Lcom/zui/launcher/Launcher$b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->clickWorkspaceItemInEditViewMode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$b0;->c:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$b0;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/Launcher$b0;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher$b0;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$b0;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zui/launcher/Launcher$b0;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$b0;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/zui/launcher/XDockView;->addExternalItem(Lcom/zui/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$b0;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->updateSelectCount()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$b0;->c:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/launcher/Launcher$b0;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$b0;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {v1, v2, v0, p0}, Lcom/zui/launcher/Launcher;->B(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher$b0;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->y(Lcom/zui/launcher/Launcher;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$b0;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/zui/launcher/Launcher$b0;->c:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/zui/launcher/XDockView;->setAnimationStatus(Z)V

    :cond_1
    :goto_0
    return-void
.end method
