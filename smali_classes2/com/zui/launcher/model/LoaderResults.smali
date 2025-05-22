.class public Lcom/zui/launcher/model/LoaderResults;
.super Lcom/zui/launcher/model/BaseLoaderResults;
.source ""


# direct methods
.method public constructor <init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;ILjava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/LauncherAppState;",
            "Lcom/zui/launcher/model/BgDataModel;",
            "Lcom/zui/launcher/AllAppsList;",
            "I",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/LauncherModel$Callbacks;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/model/BaseLoaderResults;-><init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;ILjava/lang/ref/WeakReference;)V

    return-void
.end method

.method static synthetic n(Ljava/util/HashMap;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic o(Ljava/util/List;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindAllWidgets(Ljava/util/List;)V

    return-void
.end method

.method static synthetic p(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->finishBindingAllApps()V

    invoke-interface {p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->autoDownloadAfterRestore()V

    return-void
.end method


# virtual methods
.method public bindDeepShortcuts()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/zui/launcher/model/j0;

    invoke-direct {v0, v1}, Lcom/zui/launcher/model/j0;-><init>(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bindWidgets()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

    iget-object v1, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mApp:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/model/WidgetsModel;->getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/model/i0;

    invoke-direct {v1, v0}, Lcom/zui/launcher/model/i0;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public finishBindingAllApps()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/model/h0;->a:Lcom/zui/launcher/model/h0;

    iget-object v1, p0, Lcom/zui/launcher/model/BaseLoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/model/BaseLoaderResults;->executeCallbacksTask(Lcom/zui/launcher/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method
