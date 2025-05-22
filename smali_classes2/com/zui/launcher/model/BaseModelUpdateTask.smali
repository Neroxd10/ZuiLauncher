.class public abstract Lcom/zui/launcher/model/BaseModelUpdateTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$ModelUpdateTask;


# instance fields
.field private a:Lcom/zui/launcher/LauncherAppState;

.field private b:Lcom/zui/launcher/LauncherModel;

.field private c:Lcom/zui/launcher/model/BgDataModel;

.field private d:Lcom/zui/launcher/AllAppsList;

.field private e:Ljava/util/concurrent/Executor;

.field protected mForceExecute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->mForceExecute:Z

    return-void
.end method

.method static synthetic b(Ljava/util/ArrayList;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic c(Ljava/util/HashMap;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic d(Ljava/util/ArrayList;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindWorkspaceItemsChanged(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindWorkspaceComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    return-void
.end method


# virtual methods
.method a()Lcom/zui/launcher/LauncherModel$Callbacks;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object p0

    return-object p0
.end method

.method public bindApplicationsIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->d:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/AllAppsList;->getAndResetChangeFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->d:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/zui/launcher/AllAppsList;->copyData()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/model/q;

    invoke-direct {v1, v0}, Lcom/zui/launcher/model/q;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_0
    return-void
.end method

.method public bindDeepShortcuts(Lcom/zui/launcher/model/BgDataModel;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance p1, Lcom/zui/launcher/model/o;

    invoke-direct {p1, v0}, Lcom/zui/launcher/model/o;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindUpdatedWidgets(Lcom/zui/launcher/model/BgDataModel;)V
    .locals 1

    iget-object p1, p1, Lcom/zui/launcher/model/BgDataModel;->widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

    iget-object v0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/model/WidgetsModel;->getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/model/BaseModelUpdateTask$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask$a;-><init>(Lcom/zui/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindUpdatedWorkspaceItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/model/m;

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/m;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_0
    return-void
.end method

.method public deleteAndBindComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromTheOtherDatabase(Lcom/zui/launcher/util/ItemInfoMatcher;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/model/ModelWriter;->removeGameProvider(Landroid/content/Context;Ljava/lang/Iterable;)V

    new-instance v0, Lcom/zui/launcher/model/n;

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/n;-><init>(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public deleteAndBindComponentsRemoved(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromTheOtherDatabase(Ljava/util/HashSet;)V

    return-void
.end method

.method public abstract execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
.end method

.method public synthetic f(Lcom/zui/launcher/LauncherModel$Callbacks;Lcom/zui/launcher/LauncherModel$CallbackTask;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object p0

    if-ne p1, p0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Lcom/zui/launcher/LauncherModel$CallbackTask;->execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-------scheduleCallbackTask callbacks is null or callbacks != cb "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  cb: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Model"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getBgAppsList()Lcom/zui/launcher/AllAppsList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->d:Lcom/zui/launcher/AllAppsList;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getModel()Lcom/zui/launcher/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->b:Lcom/zui/launcher/LauncherModel;

    return-object p0
.end method

.method public getModelWriter()Lcom/zui/launcher/model/ModelWriter;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->b:Lcom/zui/launcher/LauncherModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/launcher/LauncherModel;->getWriter(ZZ)Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->a:Lcom/zui/launcher/LauncherAppState;

    iput-object p2, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->b:Lcom/zui/launcher/LauncherModel;

    iput-object p3, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iput-object p4, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->d:Lcom/zui/launcher/AllAppsList;

    iput-object p5, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->mForceExecute:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->a:Lcom/zui/launcher/LauncherAppState;

    iget-object v1, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->d:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V

    return-void
.end method

.method public final scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/zui/launcher/model/p;

    invoke-direct {v2, p0, v0, p1}, Lcom/zui/launcher/model/p;-><init>(Lcom/zui/launcher/model/BaseModelUpdateTask;Lcom/zui/launcher/LauncherModel$Callbacks;Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
