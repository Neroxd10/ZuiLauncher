.class public Lcom/zui/launcher/AppStoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/Launcher;

.field private b:Lcom/zui/launcher/AppStoreHelperProvider;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    new-instance v0, Lcom/zui/launcher/AppStoreHelperProvider;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zui/launcher/AppStoreHelperProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    return-void
.end method

.method private A(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->startRecommendInfos(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1, v1, p3}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;ZI)V

    iget-object v2, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v7, 0x2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/AppStoreHelperProvider;->updateTaskState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private B(Landroid/content/Intent;)V
    .locals 13

    const-string v0, "state_map"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncAllTask key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStoreHelper"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncAllTask value : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    const/4 v7, 0x5

    if-eq v1, v7, :cond_5

    const/4 v8, 0x3

    if-ne v1, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v5, v6}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_2
    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    if-ne v1, v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v10, v0, v6

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0, v0, v5, v10, v11}, Lcom/zui/launcher/AppStoreReceiver;->D(Lcom/zui/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v5, v6}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v8, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v12, 0x3

    move-object v9, v5

    invoke-virtual/range {v7 .. v12}, Lcom/zui/launcher/AppStoreHelperProvider;->updateTaskState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-direct {p0, v5, v0, v11}, Lcom/zui/launcher/AppStoreReceiver;->A(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v8, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v8, v5, v0}, Lcom/zui/launcher/AppStoreHelperProvider;->containTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v1, v7, :cond_6

    const/16 v0, 0x64

    if-eq v11, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncAllTask  exception, delete this key : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5, v4, v6}, Lcom/zui/launcher/AppStoreReceiver;->removeRecommendItemBackground(Ljava/lang/String;ZZ)V

    :cond_7
    :goto_3
    invoke-direct {p0, v5}, Lcom/zui/launcher/AppStoreReceiver;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package installed, delete this key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "....installFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/zui/launcher/AppStoreReceiver;->refreshDummyIcon(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/zui/launcher/LauncherModel;->removeDownloadingApp(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private C(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "task_state"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncTaskIcon, packageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  and task_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppStoreHelper"

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "state"

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncTaskIcon state ===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/AppStoreReceiver;->i(Landroid/content/Intent;)V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const p1, 0x7f1200b6

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/AppStoreUtil;->showToast(Lcom/zui/launcher/Launcher;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_4

    if-eqz v1, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/launcher/AppStoreReceiver;->i(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private D(Lcom/zui/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    move/from16 v7, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLauncherUIPercent, packageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  percent=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v11

    move v12, v10

    :goto_0
    if-ge v12, v11, :cond_0

    invoke-virtual {v9, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v7}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v0, v10}, Lcom/zui/launcher/ItemInfo;->setReadyDownload(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v0, v10}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    move-object v13, p0

    iget-object v1, v13, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v4, v0

    move-object v0, v1

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/AppStoreHelperProvider;->updatePercent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    :goto_1
    if-ge v10, v1, :cond_1

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v2, v7}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/AppStoreReceiver;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/AppStoreReceiver;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/AppStoreHelperProvider;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/AppStoreReceiver;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;[I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/zui/launcher/AppStoreReceiver;->p(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;[I)V

    return-void
.end method

.method private e(Ljava/util/ArrayList;Lcom/zui/launcher/WorkspaceItemInfo;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            "[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToWorkspace begin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " addScreens: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppStoreHelper"

    invoke-static {v5, v4}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v6, -0x64

    const/4 v7, 0x0

    if-ne v4, v6, :cond_2

    new-instance v4, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v4}, Lcom/zui/launcher/util/IntArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v8}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v8

    iget v9, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v8, v9}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v8

    if-nez v8, :cond_0

    iget v8, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v7

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/zui/launcher/util/IntArray;->add(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v4}, Lcom/zui/launcher/Launcher;->bindAddScreens(Lcom/zui/launcher/util/IntArray;)V

    :cond_2
    iget-object v1, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    iget-object v1, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/AppStoreReceiver;->h(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v4

    invoke-direct {v0, v3}, Lcom/zui/launcher/AppStoreReceiver;->r(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    iget-object v8, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v8, v3}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/zui/launcher/AppStoreReceiver;->v(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    iget-object v0, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/zui/launcher/AppStoreReceiver;->y(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Lcom/zui/launcher/icons/IconCache;)V

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4, v2}, Lcom/zui/launcher/Launcher;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :goto_1
    iget v4, v2, Lcom/zui/launcher/ItemInfo;->container:I

    if-lez v4, :cond_5

    invoke-static {v4}, Lcom/zui/launcher/LauncherModel;->getItemInfoById(I)Lcom/zui/launcher/ItemInfo;

    move-result-object v1

    instance-of v4, v1, Lcom/zui/launcher/FolderInfo;

    if-eqz v4, :cond_7

    check-cast v1, Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v1, v2, v7}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    goto :goto_2

    :cond_5
    if-ne v4, v6, :cond_6

    iget-object v4, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4, v2}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v9

    iget-object v4, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4, v9, v2, v1, v7}, Lcom/zui/launcher/Launcher;->J0(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Workspace;Z)Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cell occupied status is : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    iget v10, v2, Lcom/zui/launcher/ItemInfo;->container:I

    iget v11, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v12, p3, v7

    const/4 v4, 0x1

    aget v13, p3, v4

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v8, v1

    invoke-virtual/range {v8 .. v15}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->requestLayout()V

    iget v2, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->updatePageScroll()V

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v4

    if-eq v4, v2, :cond_7

    iget-object v4, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    new-instance v5, Lcom/zui/launcher/g;

    invoke-direct {v5, v0, v1, v2}, Lcom/zui/launcher/g;-><init>(Lcom/zui/launcher/AppStoreReceiver;Lcom/zui/launcher/Workspace;I)V

    invoke-virtual {v4, v5}, Lcom/zui/launcher/Launcher;->addOnResumeCallback(Lcom/zui/launcher/Launcher$OnResumeCallback;)V

    goto :goto_2

    :cond_6
    const/16 v1, -0x65

    if-ne v4, v1, :cond_7

    iget-object v1, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v1

    iget-object v4, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v2, v4}, Lcom/zui/launcher/Hotseat;->addCellAndShortcut(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)Z

    :cond_7
    :goto_2
    if-nez v16, :cond_8

    iget-object v0, v0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1}, Lcom/zui/launcher/AppStoreHelperProvider;->syncOneAppWithAppStore(Lcom/zui/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private f(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "dummy_icon"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "dummy_label"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "versionCode"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createIcon, packageName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  and version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppStoreHelper"

    invoke-static {v5, v4}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/zui/launcher/AppStoreReceiver;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignore installed packages : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v4, "com.sohu.inputmethod.sogou.zui"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x4

    const-string v5, "task_state"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zui/launcher/AppStoreReceiver;->l(Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;I)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p1

    invoke-direct {p0, p1, v2, v3}, Lcom/zui/launcher/AppStoreReceiver;->o(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.zui.launcher.action.DUMMYICON_DELETE deleteIcon, packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppStoreHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/AppStoreReceiver;->removeRecommendItemBackground(Ljava/lang/String;Z)V

    return-void
.end method

.method private h(Lcom/zui/launcher/Workspace;Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 16

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    move v15, v3

    :goto_1
    if-ge v15, v14, :cond_3

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v9, Lcom/zui/launcher/BubbleTextView;

    if-eqz v8, :cond_1

    instance-of v8, v7, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v8, :cond_1

    move-object v10, v7

    check-cast v10, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v11, v0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget v7, v0, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v12, v7

    move-object/from16 v7, p0

    move-object v8, v6

    invoke-direct/range {v7 .. v13}, Lcom/zui/launcher/AppStoreReceiver;->n(Lcom/zui/launcher/ShortcutAndWidgetContainer;Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;J)Z

    move-result v7

    :goto_2
    or-int/2addr v5, v7

    goto :goto_3

    :cond_1
    instance-of v8, v9, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v8, :cond_2

    instance-of v8, v7, Lcom/zui/launcher/FolderInfo;

    if-eqz v8, :cond_2

    move-object v10, v7

    check-cast v10, Lcom/zui/launcher/FolderInfo;

    iget-object v11, v0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget v7, v0, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v12, v7

    move-object/from16 v7, p0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-wide v11, v12

    invoke-direct/range {v7 .. v12}, Lcom/zui/launcher/AppStoreReceiver;->m(Landroid/view/View;Lcom/zui/launcher/FolderInfo;Ljava/lang/String;J)Z

    move-result v7

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method private i(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "versionCode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "percentage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadAppStateChanged, packageName= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppStoreHelper"

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    const/4 v0, -0x1

    const-string v6, "task_state"

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadAppStateChanged, task_state= "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3, v4, v5}, Lcom/zui/launcher/AppStoreReceiver;->A(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v3, v1, v5}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;ZI)V

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v2, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v3, v0, v5}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;ZI)V

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v2, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v6, 0x3

    :goto_0
    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/AppStoreHelperProvider;->updateTaskState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private j(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "versionCode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "percentage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failDownloadIcon, packageName= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppStoreHelper"

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0, v5}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;ZI)V

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v2, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v6, 0x6

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/AppStoreHelperProvider;->updateTaskState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private k(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "versionCode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failInstallIcon, packageName= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppStoreHelper"

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const v0, 0x7f1200b4

    invoke-static {p1, v3, v0}, Lcom/zui/launcher/AppStoreUtil;->showToast(Lcom/zui/launcher/Launcher;Ljava/lang/String;I)V

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {v3}, Lcom/zui/launcher/LauncherModel;->removeDownloadingApp(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v3}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v5, v1}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v5, v6}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v5}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v2, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/16 v5, 0x64

    const/4 v6, 0x5

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/AppStoreHelperProvider;->updateTaskState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private l(Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;I)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncherContext()Lcom/zui/launcher/LauncherContext;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/LauncherContext;->createCustomIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    new-instance p0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    const/4 p1, 0x1

    if-nez v0, :cond_2

    const-string v0, "AppStoreHelper"

    const-string v1, "icon == null, get fallback icon"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->usingFallbackIcon:Z

    :cond_2
    invoke-virtual {p0, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->setIcon(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p2, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/16 p2, -0x64

    iput p2, p0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 p2, 0x8

    iput p2, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 p2, 0x4

    if-ne p4, p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ItemInfo;->setReadyDownload(Z)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x2

    if-ne p4, p2, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/ItemInfo;->setReadyDownload(Z)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    :cond_4
    :goto_1
    return-object p0
.end method

.method private m(Landroid/view/View;Lcom/zui/launcher/FolderInfo;Ljava/lang/String;J)Z
    .locals 4

    iget-object p1, p2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFolderWhenDelete delete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppStoreHelper"

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v2, v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, v3, v1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeOldRecommendInfos(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    :cond_0
    iget-object v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, p5, v2, v1}, Lcom/zui/launcher/AppStoreReceiver;->x(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    or-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private n(Lcom/zui/launcher/ShortcutAndWidgetContainer;Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;J)Z
    .locals 0

    iget-object p1, p3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleOneAppWhenDelete delete : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppStoreHelper"

    invoke-static {p2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long p1, p1

    cmp-long p1, p1, p5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p2, p3}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeOldRecommendInfos(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    :cond_0
    iget-object p1, p3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object p2, p3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p5, p6, p1, p2}, Lcom/zui/launcher/AppStoreReceiver;->x(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private o(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infoAdded begin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/AppStoreReceiver$c;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/zui/launcher/AppStoreReceiver$c;-><init>(Lcom/zui/launcher/AppStoreReceiver;Ljava/lang/String;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private p(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infoAddedView begin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iget p4, p1, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v2, p4

    iget-object p4, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, p4, v0}, Lcom/zui/launcher/AppStoreReceiver;->x(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p6

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/AppStoreReceiver;->e(Ljava/util/ArrayList;Lcom/zui/launcher/WorkspaceItemInfo;[ILjava/lang/String;Ljava/lang/String;)V

    const-string p0, "createIcon, end"

    invoke-static {v1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private q(Landroid/content/Intent;)V
    .locals 11

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installIcon, packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStoreHelper"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_0

    invoke-virtual {v7, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v1, v9}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v1, v9}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v2, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/16 v5, 0x64

    const/4 v6, 0x4

    move-object v3, v0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/AppStoreHelperProvider;->updateTaskState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private r(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private s(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Z
    .locals 3

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v0, 0x0

    const/16 v1, -0x64

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isViewAdded, screenId---- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppStoreHelper"

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    :cond_0
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    goto :goto_0

    :cond_1
    const/16 v1, -0x65

    if-ne p0, v1, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/zui/launcher/LauncherModel;->getItemInfoById(I)Lcom/zui/launcher/ItemInfo;

    move-result-object p0

    instance-of p1, p0, Lcom/zui/launcher/FolderInfo;

    if-eqz p1, :cond_3

    instance-of p1, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/zui/launcher/FolderInfo;

    iget-object p0, p0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    move-object p0, v0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private v(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/AppStoreHelperProvider;->deleteItemFromDatabase(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zui/launcher/LauncherModel;->removeDownloadingApp(Ljava/lang/String;)V

    return-void
.end method

.method private w(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "percentage"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v0}, Lcom/zui/launcher/Launcher;->containsRecommendItem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v0}, Lcom/zui/launcher/Launcher;->containsRecommendWidget(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v3, v0}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object v3

    const-string v4, "AppStoreHelper"

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPercent()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string p0, "same package, same progress, ignore."

    :goto_0
    invoke-static {v4, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x1

    const-string v5, "task_state"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "task state is paused, ignore.."

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/launcher/AppStoreReceiver;->D(Lcom/zui/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private x(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object p4, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p4, p3}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------removeOldRecommendItems--xxxxxxxxxx--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppStoreHelper"

    invoke-static {v4, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v3}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v4, v2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeOldRecommendInfos(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private y(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Lcom/zui/launcher/icons/IconCache;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Lcom/zui/launcher/LauncherModel;->getAppInfo(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/AppInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, -0x1

    iput v1, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    new-instance v1, Landroid/content/Intent;

    iget-object p2, p2, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {p1, p1, p3}, Lcom/zui/launcher/WorkspaceItemInfo;->recommendReplaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)Z

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method private z(Ljava/lang/String;II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTaskResumeMessage, packageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and onlineState ===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->setTaskState(I)V

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->b:Lcom/zui/launcher/AppStoreHelperProvider;

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPercent()I

    move-result v4

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/AppStoreHelperProvider;->updateTaskState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.zui.launcher.action.UITASK_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "versionCode"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "task_state"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.lenovo.leos.appstore"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const-string p1, "com.zui.launcher.permission.REPORT_UITASK"

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handlePauseApp(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1, p2}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info.taskState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getTaskState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStoreHelper"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getTaskState()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "~~ install fail ~~"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AppStoreReceiver;->sendTaskManagerMessage(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getTaskState()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "~~ download fail ~~"

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->sendTaskResumeMessage(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->getPercent()I

    move-result v0

    invoke-virtual {p1, p2, p0, v0}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppStoreReceiver, onReceive, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStoreHelper"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "com.zui.launcher.action.CREATE_DUMMYICON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->f(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "com.zui.launcher.action.PROGRESS_REPORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->w(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "com.zui.launcher.action.DOWNLOADTASK_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->i(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string p1, "com.zui.launcher.action.TASKSYNC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->C(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string p1, "com.zui.launcher.action.DUMMYICON_DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->g(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string p1, "com.zui.launcher.action.DUMMY_INSTALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->q(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string p1, "com.zui.launcher.action.DOWNLOAD_FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->j(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string p1, "com.zui.launcher.action.INSTALL_FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->k(Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const-string p1, "com.zui.launcher.action.TASK_STATE_RESULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, p2}, Lcom/zui/launcher/AppStoreReceiver;->B(Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/AppStoreReceiver;->v(Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void

    :cond_c
    :goto_1
    const-string p0, "no launcher, so return"

    invoke-static {v2, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshDummyIcon(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v4}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeRecommendItemBackground ignore : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppStoreHelper"

    invoke-static {v5, v4}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, p1, v1}, Lcom/zui/launcher/AppStoreReceiver;->y(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Lcom/zui/launcher/icons/IconCache;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeRecommendItemBackground(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/AppStoreReceiver;->removeRecommendItemBackground(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public removeRecommendItemBackground(Ljava/lang/String;ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeRecommendItemBackground ignore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppStoreHelper"

    invoke-static {v4, v3}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-wide/16 v4, 0x5dc

    if-nez p2, :cond_1

    iget-object v6, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0, v6, v3}, Lcom/zui/launcher/AppStoreReceiver;->s(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v3, Lcom/zui/launcher/AppStoreReceiver$a;

    invoke-direct {v3, p0, p1, p3}, Lcom/zui/launcher/AppStoreReceiver$a;-><init>(Lcom/zui/launcher/AppStoreReceiver;Ljava/lang/String;Z)V

    :goto_1
    iget-object v6, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v6}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v6, v7, v3}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeOldRecommendInfos(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    if-nez p3, :cond_2

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lcom/zui/launcher/LauncherModel;->addCacheInDatabaseHelper(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Z)V

    :cond_3
    new-instance v3, Lcom/zui/launcher/AppStoreReceiver$b;

    invoke-direct {v3, p0}, Lcom/zui/launcher/AppStoreReceiver$b;-><init>(Lcom/zui/launcher/AppStoreReceiver;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public sendTaskManagerMessage(Landroid/content/Context;)V
    .locals 2

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.lenovo.leos.appstore.action.LOCAL_MANAGE_CONTAINER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "LocalManage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isShortCut"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public sendTaskPauseMessage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/AppStoreReceiver;->z(Ljava/lang/String;II)V

    return-void
.end method

.method public sendTaskResumeMessage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/AppStoreReceiver;->z(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic t(Lcom/zui/launcher/Workspace;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->updatePageScroll()V

    iget-object v0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseDraggingActivity;->fastFinishFIVIfNeeded()V

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver;->a:Lcom/zui/launcher/Launcher;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseDraggingActivity;->setIgnoreWorkspaceView(Z)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    return-void
.end method

.method public synthetic u(Lcom/zui/launcher/Workspace;I)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/f;-><init>(Lcom/zui/launcher/AppStoreReceiver;Lcom/zui/launcher/Workspace;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
