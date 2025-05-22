.class public Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# instance fields
.field private final f:Landroid/os/UserHandle;

.field private final g:I

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->f:Landroid/os/UserHandle;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    float-to-double v0, p2

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double p2, v0, v2

    if-lez p2, :cond_0

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p3, p2

    float-to-int p2, p3

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    :goto_0
    iput p2, p0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->g:I

    iput-object p1, p0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindIncrementalDownloadProgressUpdated(Lcom/zui/launcher/AppInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 4

    new-instance p1, Lcom/zui/launcher/pm/PackageInstallInfo;

    iget-object v0, p0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->h:Ljava/lang/String;

    iget v1, p0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->g:I

    iget-object v2, p0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->f:Landroid/os/UserHandle;

    const/4 v3, 0x2

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/zui/launcher/pm/PackageInstallInfo;-><init>(Ljava/lang/String;IILandroid/os/UserHandle;)V

    monitor-enter p3

    :try_start_0
    invoke-virtual {p3, p1}, Lcom/zui/launcher/AllAppsList;->updatePromiseInstallInfo(Lcom/zui/launcher/pm/PackageInstallInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/AppInfo;

    iget v2, v1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    new-instance v2, Lcom/zui/launcher/model/g1;

    invoke-direct {v2, v1}, Lcom/zui/launcher/model/g1;-><init>(Lcom/zui/launcher/AppInfo;)V

    invoke-virtual {p0, v2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->f:Landroid/os/UserHandle;

    new-instance v1, Lcom/zui/launcher/model/h1;

    invoke-direct {v1, p0, p1, p3}, Lcom/zui/launcher/model/h1;-><init>(Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;Lcom/zui/launcher/pm/PackageInstallInfo;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0, v1}, Lcom/zui/launcher/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p3}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
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

.method public synthetic h(Lcom/zui/launcher/pm/PackageInstallInfo;Ljava/util/ArrayList;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/model/PackageIncrementalDownloadUpdatedTask;->h:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/zui/launcher/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p3, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p0, p0, -0x401

    iput p0, p3, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {p3, p1}, Lcom/zui/launcher/ItemInfoWithIcon;->setProgressLevel(Lcom/zui/launcher/pm/PackageInstallInfo;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
