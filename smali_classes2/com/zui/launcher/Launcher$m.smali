.class Lcom/zui/launcher/Launcher$m;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->finishBindingItems(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$m;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher$m;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->k0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher$m;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->canReaperWorksItems(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher$m;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->k0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$m;->a:Lcom/zui/launcher/Launcher;

    iget-object v1, v1, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherModel;->reaperWorkspaceItem(I)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$m;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->reaperLauncherSettings(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
