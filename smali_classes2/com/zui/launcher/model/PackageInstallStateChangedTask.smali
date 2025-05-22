.class public Lcom/zui/launcher/model/PackageInstallStateChangedTask;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# instance fields
.field private final f:Lcom/zui/launcher/pm/PackageInstallInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/pm/PackageInstallInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindIncrementalDownloadProgressUpdated(Lcom/zui/launcher/AppInfo;)V

    return-void
.end method

.method static synthetic i(Ljava/util/HashSet;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget v0, v0, Lcom/zui/launcher/pm/PackageInstallInfo;->state:I

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget-object p3, p3, Lcom/zui/launcher/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/util/InstantAppResolver;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/zui/launcher/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget-object p0, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/LauncherModel;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    :cond_1
    monitor-enter p3

    :try_start_1
    iget-object p1, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    invoke-virtual {p3, p1}, Lcom/zui/launcher/AllAppsList;->updatePromiseInstallInfo(Lcom/zui/launcher/pm/PackageInstallInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/AppInfo;

    new-instance v1, Lcom/zui/launcher/model/j1;

    invoke-direct {v1, v0}, Lcom/zui/launcher/model/j1;-><init>(Lcom/zui/launcher/AppInfo;)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p2

    :try_start_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object p3, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget-object p3, p3, Lcom/zui/launcher/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    new-instance v0, Lcom/zui/launcher/model/i1;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/model/i1;-><init>(Lcom/zui/launcher/model/PackageInstallStateChangedTask;Ljava/util/HashSet;)V

    invoke-virtual {p2, p3, v0}, Lcom/zui/launcher/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    iget-object p3, p2, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v1, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget-object v2, v2, Lcom/zui/launcher/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget v1, v1, Lcom/zui/launcher/pm/PackageInstallInfo;->progress:I

    iput v1, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->installProgress:I

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    new-instance p3, Lcom/zui/launcher/model/k1;

    invoke-direct {p3, p1}, Lcom/zui/launcher/model/k1;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_5
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public synthetic h(Ljava/util/HashSet;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget-object v0, v0, Lcom/zui/launcher/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget v0, v0, Lcom/zui/launcher/pm/PackageInstallInfo;->progress:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/zui/launcher/ItemInfoWithIcon;->setProgressLevel(II)V

    iget-object p0, p0, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->f:Lcom/zui/launcher/pm/PackageInstallInfo;

    iget p0, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->state:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    iget p0, p2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p0, p0, -0x401

    iput p0, p2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
