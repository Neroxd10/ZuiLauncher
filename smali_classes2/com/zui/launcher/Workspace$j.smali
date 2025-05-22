.class Lcom/zui/launcher/Workspace$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->updateZuiDots(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/util/ShortcutUserKey;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/util/ShortcutUserKey;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$j;->c:Lcom/zui/launcher/Workspace;

    iput-object p2, p0, Lcom/zui/launcher/Workspace$j;->a:Lcom/zui/launcher/util/ShortcutUserKey;

    iput-object p3, p0, Lcom/zui/launcher/Workspace$j;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 6

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/Workspace$j;->a:Lcom/zui/launcher/util/ShortcutUserKey;

    move-object v3, p1

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/ShortcutUserKey;->updateFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/Workspace$j;->b:Ljava/util/Set;

    iget-object v3, p0, Lcom/zui/launcher/Workspace$j;->a:Lcom/zui/launcher/util/ShortcutUserKey;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_4

    :goto_0
    check-cast p2, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p2, p1, v3}, Lcom/zui/launcher/WorkspaceIconCompat;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/Workspace$j;->a:Lcom/zui/launcher/util/ShortcutUserKey;

    invoke-virtual {v2}, Lcom/zui/launcher/util/ShortcutUserKey;->resetClassName()V

    iget-object v2, p0, Lcom/zui/launcher/Workspace$j;->b:Ljava/util/Set;

    iget-object p0, p0, Lcom/zui/launcher/Workspace$j;->a:Lcom/zui/launcher/util/ShortcutUserKey;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zui/launcher/FolderInfo;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/zui/launcher/dot/FolderDotInfo;

    iget-object v2, p0, Lcom/zui/launcher/Workspace$j;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/zui/launcher/dot/FolderDotInfo;-><init>(Z)V

    check-cast p1, Lcom/zui/launcher/FolderInfo;

    iget-object p1, p1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v3, p0, Lcom/zui/launcher/Workspace$j;->c:Lcom/zui/launcher/Workspace;

    iget-object v3, v3, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/launcher/popup/PopupDataProvider;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v4, p2

    check-cast v4, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v5, v4, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v4, v2, v1}, Lcom/zui/launcher/WorkspaceIconCompat;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/zui/launcher/dot/FolderDotInfo;->addDotInfo(Lcom/zui/launcher/dot/DotInfo;)V

    goto :goto_1

    :cond_3
    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/folder/FolderIcon;->setDotInfo(Lcom/zui/launcher/dot/FolderDotInfo;)V

    :cond_4
    :goto_2
    return v1
.end method
