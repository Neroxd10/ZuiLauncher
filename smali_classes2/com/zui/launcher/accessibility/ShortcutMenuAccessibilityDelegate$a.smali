.class Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:I

.field final synthetic c:[I

.field final synthetic d:Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/zui/launcher/WorkspaceItemInfo;I[I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;

    iput-object p2, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iput p3, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->b:I

    iput-object p4, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v0, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v4, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->b:I

    iget-object v0, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->c:[I

    const/4 v3, 0x0

    aget v5, v0, v3

    const/4 v7, 0x1

    aget v6, v0, v7

    const/16 v3, -0x64

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, v1, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v0, v7}, Lcom/zui/launcher/Launcher;->bindItems(Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v0, v0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    iget-object p0, p0, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;->d:Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;

    const v0, 0x7f12040e

    invoke-virtual {p0, v0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a(I)V

    return-void
.end method
