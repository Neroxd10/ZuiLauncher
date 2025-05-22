.class public Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# instance fields
.field private final f:Lcom/zui/launcher/ItemInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 12

    iget-object p3, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    if-eqz p3, :cond_b

    instance-of v0, p3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez v0, :cond_0

    instance-of p3, p3, Lcom/zui/launcher/FolderInfo;

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p3, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    instance-of p3, p3, Lcom/zui/launcher/WorkspaceItemInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v1}, Lcom/zui/launcher/util/IntArray;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Lcom/zui/launcher/model/BgDataModel;->collectWorkspaceScreens()Lcom/zui/launcher/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_3

    iget-object v7, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v8, v7, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iget-object v10, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    iget-object v10, v10, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v10, :cond_1

    move v10, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v10

    iget-object v11, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    iget-object v11, v11, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v11}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v10

    long-to-int v10, v10

    :goto_0
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8, v9, v10}, Lcom/zui/launcher/LauncherModel;->shortcutGenerallyExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_2

    monitor-exit p2

    return-void

    :cond_2
    if-nez v10, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v5, p1, v7, v9, v3}, Lcom/zui/launcher/LauncherModel;->findCachePosition(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Landroid/content/Intent;Lcom/zui/launcher/util/IntArray;)Lcom/zui/launcher/CacheInfo;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget p3, v5, Lcom/zui/launcher/CacheInfo;->container:I

    const/16 v3, -0x64

    if-ne p3, v3, :cond_5

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/zui/launcher/LauncherModel;->getItemInfoByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v6, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v6

    iget v8, v5, Lcom/zui/launcher/CacheInfo;->container:I

    iget v9, v5, Lcom/zui/launcher/CacheInfo;->screen:I

    iget v10, v5, Lcom/zui/launcher/CacheInfo;->cellX:I

    iget v11, v5, Lcom/zui/launcher/CacheInfo;->cellY:I

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget p3, v5, Lcom/zui/launcher/CacheInfo;->container:I

    if-ne p3, v3, :cond_6

    iget p3, v5, Lcom/zui/launcher/CacheInfo;->screen:I

    invoke-virtual {v1, p3}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result p3

    if-nez p3, :cond_6

    iget p3, v5, Lcom/zui/launcher/CacheInfo;->screen:I

    invoke-virtual {v1, p3}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_6
    new-instance p3, Lcom/zui/launcher/model/CachePair;

    invoke-direct {p3, p1, v5}, Lcom/zui/launcher/model/CachePair;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, p3}, Lcom/zui/launcher/LauncherModel;->getFinalPosition(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Z)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v3}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result p3

    if-le p3, v4, :cond_8

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    const/16 v5, -0x64

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v7, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [I

    aget v7, v7, v6

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v6, 0x1

    aget v8, p1, v6

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object p1, p0, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;->f:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    new-instance p1, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask$a;

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask$a;-><init>(Lcom/zui/launcher/model/AddFolderItemToWorkspaceTask;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/zui/launcher/util/IntArray;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_a
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_b
    :goto_3
    return-void
.end method
