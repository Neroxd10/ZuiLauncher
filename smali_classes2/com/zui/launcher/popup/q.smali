.class public final synthetic Lcom/zui/launcher/popup/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/shortcuts/DeepShortcutView;

.field public final synthetic b:Lcom/zui/launcher/WorkspaceItemInfo;

.field public final synthetic c:Landroid/content/pm/ShortcutInfo;

.field public final synthetic d:Lcom/zui/launcher/popup/PopupContainerWithArrow;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/shortcuts/DeepShortcutView;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/zui/launcher/popup/PopupContainerWithArrow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/q;->a:Lcom/zui/launcher/shortcuts/DeepShortcutView;

    iput-object p2, p0, Lcom/zui/launcher/popup/q;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/popup/q;->c:Landroid/content/pm/ShortcutInfo;

    iput-object p4, p0, Lcom/zui/launcher/popup/q;->d:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/popup/q;->a:Lcom/zui/launcher/shortcuts/DeepShortcutView;

    iget-object v1, p0, Lcom/zui/launcher/popup/q;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, p0, Lcom/zui/launcher/popup/q;->c:Landroid/content/pm/ShortcutInfo;

    iget-object p0, p0, Lcom/zui/launcher/popup/q;->d:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {v0, v1, v2, p0}, Lcom/zui/launcher/popup/PopupPopulator;->c(Lcom/zui/launcher/shortcuts/DeepShortcutView;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/zui/launcher/popup/PopupContainerWithArrow;)V

    return-void
.end method
