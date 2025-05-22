.class Lcom/zui/launcher/folder/Folder$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v0, v0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v2, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v4, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v2, v4, v0}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v2, v2, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget-object v2, v2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v2, v2, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, v0, v5}, Lcom/zui/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v4

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v6, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v7, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v8, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v9, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual/range {v4 .. v9}, Lcom/zui/launcher/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v4, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v5, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v4, v5, v0}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    instance-of v4, v0, Lcom/zui/launcher/HotseatLayout;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    if-eqz v2, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Lcom/zui/launcher/HotseatLayout;->setFolderReplaced(Z)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v4, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iget-object v5, v0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v4, v5, v0, v1, v3}, Lcom/zui/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/zui/launcher/ItemInfo;ZZ)Z

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v1, v0, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    instance-of v3, v1, Lcom/zui/launcher/DropTarget;

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mDragController:Lcom/zui/launcher/dragndrop/DragController;

    check-cast v1, Lcom/zui/launcher/DropTarget;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragController;->removeDropTarget(Lcom/zui/launcher/DropTarget;)V

    :cond_3
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$a;->a:Lcom/zui/launcher/folder/Folder;

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v0, v2, p0}, Lcom/zui/launcher/Workspace;->addInScreenFromBindAndCheck(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_5
    return-void
.end method
