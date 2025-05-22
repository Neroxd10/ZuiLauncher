.class Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/ItemInfo;

.field final synthetic b:I

.field final synthetic c:[I

.field final synthetic d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;Lcom/zui/launcher/ItemInfo;I[I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->a:Lcom/zui/launcher/ItemInfo;

    iput p3, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->b:I

    iput-object p4, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->a:Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/AppInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    const/16 v3, -0x64

    iget v4, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->b:I

    iget-object v2, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->c:[I

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v7, 0x1

    aget v6, v2, v7

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1, v7}, Lcom/zui/launcher/Launcher;->bindItems(Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/zui/launcher/PendingAddItemInfo;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/zui/launcher/PendingAddItemInfo;

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->b:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    iget-object v0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object v2, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    const/16 v4, -0x64

    iget v5, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->b:I

    iget-object v6, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->c:[I

    iget v7, v3, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v8, v3, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual/range {v2 .. v8}, Lcom/zui/launcher/Launcher;->addPendingItem(Lcom/zui/launcher/PendingAddItemInfo;II[III)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    const v0, 0x7f12040e

    invoke-virtual {p0, v0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a(I)V

    return-void
.end method
