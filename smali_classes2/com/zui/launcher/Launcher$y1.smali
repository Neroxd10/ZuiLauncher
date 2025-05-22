.class Lcom/zui/launcher/Launcher$y1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->removePendingBindItems(Ljava/util/HashSet;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Landroid/os/UserHandle;

.field final synthetic c:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$y1;->c:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$y1;->a:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/zui/launcher/Launcher$y1;->b:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher$y1;->a:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zui/launcher/Launcher$y1;->b:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$y1;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromTheOtherDatabase(Lcom/zui/launcher/util/ItemInfoMatcher;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Launcher$y1;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher$y1;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/Launcher;->bindWorkspaceComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$y1;->b:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher$y1;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/Launcher$y1;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/Launcher;->k0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/Launcher$y1;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/Launcher;->k0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/launcher/LauncherModel;->removeRecommendWidgets(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
