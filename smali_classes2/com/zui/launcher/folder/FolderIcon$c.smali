.class Lcom/zui/launcher/folder/FolderIcon$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/FolderIcon;->j(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic c:Lcom/zui/launcher/folder/FolderIcon;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/FolderIcon;ILcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon$c;->c:Lcom/zui/launcher/folder/FolderIcon;

    iput p2, p0, Lcom/zui/launcher/folder/FolderIcon$c;->a:I

    iput-object p3, p0, Lcom/zui/launcher/folder/FolderIcon$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon$c;->c:Lcom/zui/launcher/folder/FolderIcon;

    invoke-static {v0}, Lcom/zui/launcher/folder/FolderIcon;->c(Lcom/zui/launcher/folder/FolderIcon;)Lcom/zui/launcher/folder/PreviewItemManager;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/folder/FolderIcon$c;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon$c;->c:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/Folder;->showItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon$c;->c:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
