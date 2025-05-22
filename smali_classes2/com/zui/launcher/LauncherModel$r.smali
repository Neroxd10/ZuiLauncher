.class Lcom/zui/launcher/LauncherModel$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->startSearchedAppDownload(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/LauncherModel$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/zui/launcher/LauncherModel$Callbacks;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/zui/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/LauncherModel$Callbacks;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$r;->f:Lcom/zui/launcher/LauncherModel;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$r;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/LauncherModel$r;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/zui/launcher/LauncherModel$r;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/launcher/LauncherModel$r;->d:Lcom/zui/launcher/LauncherModel$Callbacks;

    iput-object p6, p0, Lcom/zui/launcher/LauncherModel$r;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    new-instance v3, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v3}, Lcom/zui/launcher/util/IntArray;-><init>()V

    const/4 v0, 0x2

    new-array v4, v0, [I

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$r;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$r;->b:Landroid/content/Context;

    check-cast v1, Lcom/zui/launcher/Launcher;

    sget-object v2, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v2

    :try_start_0
    sget-object v5, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/zui/launcher/LauncherModel$r;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v5, p0, Lcom/zui/launcher/LauncherModel$r;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/zui/launcher/LauncherModel;->addIntoDownloadingApps(Ljava/lang/String;)V

    const-string v5, "com.sohu.inputmethod.sogou.zui"

    iget-object v6, p0, Lcom/zui/launcher/LauncherModel$r;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    iget-object v5, p0, Lcom/zui/launcher/LauncherModel$r;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v5

    const-string v6, "GlobalSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recommendItemList --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v8, p0, Lcom/zui/launcher/LauncherModel$r;->f:Lcom/zui/launcher/LauncherModel;

    invoke-static {v8, v1, v5}, Lcom/zui/launcher/LauncherModel;->f(Lcom/zui/launcher/LauncherModel;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v5, :cond_2

    iget v1, v5, Lcom/zui/launcher/ItemInfo;->container:I

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$r;->c:Ljava/lang/String;

    iput-object v0, v5, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$r;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, v5, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$r;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    move-object v0, v5

    :goto_1
    move-object v5, v0

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/zui/launcher/LauncherModel;->getScreensList()Lcom/zui/launcher/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v5

    iget-object v8, p0, Lcom/zui/launcher/LauncherModel$r;->b:Landroid/content/Context;

    invoke-static {v8, v1, v6}, Lcom/zui/launcher/LauncherModel;->getFinalPosition(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Z)Landroid/util/Pair;

    move-result-object v8

    if-nez v8, :cond_5

    const-string p0, "no space for this icon."

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView$LOG;->e(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_5
    iget-object v9, p0, Lcom/zui/launcher/LauncherModel$r;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [I

    aget v9, v9, v7

    aput v9, v4, v7

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [I

    aget v9, v9, v6

    aput v9, v4, v6

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    if-le v1, v5, :cond_6

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_6
    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$r;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/zui/launcher/LauncherModel$r;->c:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/zui/launcher/LauncherModel;->deleteCacheByPackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v8

    iget-object v9, p0, Lcom/zui/launcher/LauncherModel$r;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$r;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v10, v1, Lcom/zui/launcher/ItemInfo;->container:I

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$r;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v11, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v12, v4, v7

    aget v13, v4, v6

    invoke-virtual/range {v8 .. v13}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    move-object v5, v0

    move v6, v7

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "GlobalSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tempShortInfo --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GlobalSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tempRecommendItem --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v8, Lcom/zui/launcher/LauncherModel$r$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/LauncherModel$r$a;-><init>(Lcom/zui/launcher/LauncherModel$r;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/util/IntArray;[IZ)V

    invoke-virtual {v7, v8}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
