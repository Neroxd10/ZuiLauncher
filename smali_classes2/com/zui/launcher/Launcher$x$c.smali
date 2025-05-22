.class Lcom/zui/launcher/Launcher$x$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher$x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher$x;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher$x;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockView;->setAnimationStatus(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object v0, v0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object v1, v0, Lcom/zui/launcher/Launcher$x;->f:Landroid/view/View;

    iget-object v0, v0, Lcom/zui/launcher/Launcher$x;->i:Lcom/zui/launcher/ItemInfo;

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/XDockView;->flyBackAnItem(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object v0, v0, Lcom/zui/launcher/Launcher$x;->f:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0, p1}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->y(Lcom/zui/launcher/Launcher;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object v1, v1, Lcom/zui/launcher/Launcher$x;->h:Landroid/view/View;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockView;->setAnimationStatus(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v0, -0x64

    if-eq p1, v0, :cond_3

    const/16 v0, -0x65

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object v2, v2, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object v2, v2, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/Launcher;->findFolderIcon(I)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderIcon;->getFolderInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/FolderInfo;->remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object v0, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object v0, v0, Lcom/zui/launcher/Launcher$x;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/Launcher$x$c;->a:Lcom/zui/launcher/Launcher$x;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
