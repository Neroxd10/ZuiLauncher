.class Lcom/zui/launcher/folder/FolderIcon$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/FolderIcon;->onLayoutDrop(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/graphics/Rect;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/zui/launcher/DropTarget$DragObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Lcom/zui/launcher/folder/FolderIcon;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderIcon;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon$e;->b:Lcom/zui/launcher/folder/FolderIcon;

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderIcon$e;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon$e;->b:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon$e;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/Folder;->showItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon$e;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
