.class Lcom/zui/launcher/LauncherModel$y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Lcom/zui/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$y;->b:Lcom/zui/launcher/LauncherModel;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindItems add recommend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, v1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->sRecommendInfos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v3, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInRecommendMap -sRecommendInfos.put-------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$y;->b:Lcom/zui/launcher/LauncherModel;

    iget-object v0, v0, Lcom/zui/launcher/LauncherModel;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherModel$Callbacks;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-interface {v0, v2}, Lcom/zui/launcher/LauncherModel$Callbacks;->getDownloadStatus(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_3
    if-eqz v1, :cond_4

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/LauncherModel$y$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/LauncherModel$y$a;-><init>(Lcom/zui/launcher/LauncherModel$y;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$y;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getDownloadProgress()I

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method
