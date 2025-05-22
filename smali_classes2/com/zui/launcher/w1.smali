.class public final synthetic Lcom/zui/launcher/w1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherModel;

.field public final synthetic b:Lcom/zui/launcher/WorkspaceItemInfo;

.field public final synthetic c:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/w1;->a:Lcom/zui/launcher/LauncherModel;

    iput-object p2, p0, Lcom/zui/launcher/w1;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/w1;->c:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/w1;->a:Lcom/zui/launcher/LauncherModel;

    iget-object v1, p0, Lcom/zui/launcher/w1;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/w1;->c:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/LauncherModel;->K(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method
