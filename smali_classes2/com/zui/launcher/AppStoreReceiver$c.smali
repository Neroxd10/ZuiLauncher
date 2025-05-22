.class Lcom/zui/launcher/AppStoreReceiver$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/AppStoreReceiver;->o(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/zui/launcher/AppStoreReceiver;


# direct methods
.method constructor <init>(Lcom/zui/launcher/AppStoreReceiver;Ljava/lang/String;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    iput-object p2, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p4, p0, Lcom/zui/launcher/AppStoreReceiver$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/launcher/AppStoreReceiver;->b(Lcom/zui/launcher/AppStoreReceiver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppStoreHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoAdded, ignore installed packages : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "AppStoreHelper"

    const-string v0, "createIcon, end"

    :goto_0
    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v3, -0x1

    :try_start_0
    iget-object v4, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v4}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v8, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v9, v4, Lcom/zui/launcher/ItemInfo;->container:I

    iput v9, v8, Lcom/zui/launcher/ItemInfo;->container:I

    iget-object v8, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v9, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v9, v8, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v8, v4, Lcom/zui/launcher/ItemInfo;->cellX:I

    aput v8, v0, v7

    iget v8, v4, Lcom/zui/launcher/ItemInfo;->cellY:I

    aput v8, v0, v6

    const-string v8, "AppStoreHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-------There has the same one: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto/16 :goto_2

    :cond_1
    iget-object v4, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v4}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v4

    iget-object v8, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v4, v8}, Lcom/zui/launcher/Launcher;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-static {}, Lcom/zui/launcher/LauncherModel;->getScreensList()Lcom/zui/launcher/util/IntArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v8

    sget-object v9, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "AppStoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-----createIcon----------add downing--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v9, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v10}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zui/launcher/LauncherModel;->getRecommendCacheInDatabase(Ljava/lang/String;Landroid/content/Context;)Lcom/zui/launcher/CacheInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v3}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/zui/launcher/LauncherModel;->checkCacheInfo(Landroid/content/Context;Lcom/zui/launcher/CacheInfo;)I

    move-result v3

    :cond_3
    const-string v10, "AppStoreHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--------getCahce----"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "....hasdabaDb: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_4

    if-eqz v3, :cond_4

    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v11, v9, Lcom/zui/launcher/CacheInfo;->screen:I

    iput v11, v10, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v10, v9, Lcom/zui/launcher/CacheInfo;->cellX:I

    aput v10, v0, v7

    iget v10, v9, Lcom/zui/launcher/CacheInfo;->cellY:I

    aput v10, v0, v6

    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v11, v9, Lcom/zui/launcher/CacheInfo;->container:I

    iput v11, v10, Lcom/zui/launcher/ItemInfo;->container:I

    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v10, v10, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v11, -0x64

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v10, v10, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v4, v10}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v10, v10, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v4, v10}, Lcom/zui/launcher/util/IntArray;->add(I)V

    goto :goto_1

    :cond_4
    move-object v9, v5

    :cond_5
    :goto_1
    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v9}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v9

    invoke-static {v9, v4, v6}, Lcom/zui/launcher/LauncherModel;->getFinalPosition(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Z)Landroid/util/Pair;

    move-result-object v9

    if-nez v9, :cond_6

    const-string p0, "AppStoreHelper"

    const-string v0, "no space for this icon. so return"

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_6
    iget-object v10, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [I

    aget v10, v10, v7

    aput v10, v0, v7

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [I

    aget v9, v9, v6

    aput v9, v0, v6

    const-string v9, "AppStoreHelper"

    const-string v10, "-------There has NoNoNo one"

    invoke-static {v9, v10}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v4}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v4

    if-le v4, v8, :cond_8

    iget-object v4, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v4, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v4, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v4, v7

    :goto_2
    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/zui/launcher/LauncherModel;->getItemInfoByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    move v4, v6

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v8, v5, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v8}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v3}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    iget-object v5, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/zui/launcher/LauncherModel;->deleteCacheByPackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v3}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v8

    iget-object v9, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v10, v3, Lcom/zui/launcher/ItemInfo;->container:I

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v11, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v12, v0, v7

    aget v13, v0, v6

    invoke-virtual/range {v8 .. v13}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v3}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v3

    iget-object v5, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {v3, v5, v7}, Lcom/zui/launcher/LauncherModel;->addCacheInDatabaseHelper(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Z)V

    const-string v3, "AppStoreHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------insertDummy--xxxxxxxxxx--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v6}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".....screenSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v3}, Lcom/zui/launcher/AppStoreReceiver;->c(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/AppStoreHelperProvider;

    move-result-object v5

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->d:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {v3}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/launcher/AppStoreReceiver$c;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/zui/launcher/AppStoreReceiver$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver$c;->b:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v9, v3

    invoke-virtual/range {v5 .. v10}, Lcom/zui/launcher/AppStoreHelperProvider;->addValue(Lcom/zui/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v3, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v5, Lcom/zui/launcher/AppStoreReceiver$c$a;

    invoke-direct {v5, p0, v4, v1, v0}, Lcom/zui/launcher/AppStoreReceiver$c$a;-><init>(Lcom/zui/launcher/AppStoreReceiver$c;ZLjava/util/ArrayList;[I)V

    invoke-virtual {v3, v5}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "AppStoreHelper"

    const-string v0, "createIcon addItemInDatabase, end"

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
