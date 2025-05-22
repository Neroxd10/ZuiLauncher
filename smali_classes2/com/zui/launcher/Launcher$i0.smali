.class Lcom/zui/launcher/Launcher$i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->removeGlobalSearchView(Z)V
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

    iput-object p1, p0, Lcom/zui/launcher/Launcher$i0;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$i0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->updateDisableAnimationsToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$i0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher$i0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$i0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->removeGlobalSearchView(Lcom/zui/launcher/Launcher;)V

    :goto_0
    return-void
.end method
