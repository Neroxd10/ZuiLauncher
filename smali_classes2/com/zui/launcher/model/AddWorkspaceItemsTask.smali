.class public Lcom/zui/launcher/model/AddWorkspaceItemsTask;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->f:Ljava/util/List;

    iput-boolean p2, p0, Lcom/zui/launcher/model/BaseModelUpdateTask;->mForceExecute:Z

    return-void
.end method

.method private g(Lcom/zui/launcher/AppInfo;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/AppInfo;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p1, p1, Lcom/zui/launcher/AppInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/launcher/LauncherModel;->getItemInfoForPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecommendItem item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseModelUpdateTask"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/launcher/LauncherModel;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private h(Lcom/zui/launcher/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/util/GridOccupancy;

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-direct {p1, v0, p0}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/ItemInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p4, p5}, Lcom/zui/launcher/util/GridOccupancy;->findVacantCell([III)Z

    move-result p0

    return p0
.end method

.method private i(Lcom/zui/launcher/AppInfo;)Z
    .locals 8

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->a()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object v0

    iget-object v1, p1, Lcom/zui/launcher/AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zui/launcher/LauncherModel$Callbacks;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->g(Lcom/zui/launcher/AppInfo;)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read recommend list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseModelUpdateTask"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/zui/launcher/AppStoreUtil;->containInfo(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find from appstore recommendItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget v6, v4, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    iget-object v6, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    iget-object v7, v4, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, p1, v4}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->j(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    move v2, v5

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v3, v5, :cond_7

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getBgAppsList()Lcom/zui/launcher/AllAppsList;

    move-result-object v3

    iget-object v4, p1, Lcom/zui/launcher/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/zui/launcher/AllAppsList;->findApplicationInfoForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->j(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_3

    :cond_7
    move v5, v2

    :goto_3
    return v5
.end method

.method private j(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/LauncherModel;->updateShortcutByRecommend(Landroid/content/Context;Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-object v0, v8, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v11}, Lcom/zui/launcher/util/IntArray;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->useDummyIcon(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    monitor-enter p2

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/zui/launcher/model/BgDataModel;->collectWorkspaceScreens()Lcom/zui/launcher/util/IntArray;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v8, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v16, 0x0

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iget-object v4, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v5, "zdx1"

    move-object/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v12

    const-string v12, "workspaceApps title:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v2, :cond_d

    instance-of v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v2, :cond_d

    move-object v2, v3

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getInstance()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    move-result-object v5

    move/from16 v22, v15

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v23, v10

    move-object v10, v3

    check-cast v10, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v5, v15, v10}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->addGameProvider(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)V

    if-eqz v0, :cond_c

    iget-object v5, v2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v24, v0

    move-object/from16 v26, v7

    move-object/from16 v25, v11

    :goto_2
    move-object/from16 v5, v16

    goto/16 :goto_6

    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/zui/launcher/LauncherModel;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v5

    const-string v10, "zdx1"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v0

    const-string v0, "getRecommendItem list:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v26, v7

    move-object/from16 v25, v11

    goto/16 :goto_6

    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    const/4 v10, 0x0

    invoke-static {v10}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/launcher/LauncherModel;->getItemInfoForPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zui/launcher/ItemInfo;

    move-object/from16 v16, v10

    const-string v10, "zdx1"

    move-object/from16 v25, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v7

    const-string v7, "getRecommendItem item:"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v15, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v10, 0x8

    if-ne v7, v10, :cond_6

    move-object v7, v15

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v7

    check-cast v15, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v7, v15}, Lcom/zui/launcher/LauncherModel;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_6
    move-object/from16 v10, v16

    move-object/from16 v11, v25

    move-object/from16 v7, v26

    goto :goto_5

    :cond_7
    move-object/from16 v26, v7

    move-object/from16 v25, v11

    move-object/from16 v16, v5

    const-string v5, "zdx1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRecommendItem list222222:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :goto_6
    const-string v0, "zdx1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read recommend list:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/zui/launcher/AppStoreUtil;->containInfo(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v0, "zdx1"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "find recommendItem:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_8
    iget v10, v7, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_9

    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, v7, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_9

    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    iget-object v11, v7, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_7

    :cond_9
    :goto_8
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0, v2, v7}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->updateShortcutByRecommend(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_b

    goto/16 :goto_e

    :cond_b
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_e

    const/4 v10, 0x0

    invoke-static {v10}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    move-object/from16 v11, p3

    invoke-virtual {v11, v12, v0}, Lcom/zui/launcher/AllAppsList;->findApplicationInfoForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_f

    invoke-virtual {v5, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v8, v3, v2, v0}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->updateShortcutByRecommend(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_c
    move/from16 v24, v0

    move-object/from16 v26, v7

    move-object/from16 v25, v11

    goto :goto_a

    :cond_d
    move/from16 v24, v0

    move-object/from16 v26, v7

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move/from16 v22, v15

    :cond_e
    :goto_a
    move-object/from16 v11, p3

    :cond_f
    iget v0, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_10

    iget v0, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    iget v0, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_14

    :cond_10
    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v0, v2}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/zui/launcher/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "BaseModelUpdateTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->shortcutExists:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_11
    iget v0, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_13

    instance-of v0, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_13

    iget-object v0, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_12

    const/4 v5, 0x0

    goto :goto_c

    :cond_12
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    iget-object v2, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v10

    long-to-int v5, v10

    :goto_c
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-static {v0, v4, v6, v2, v5}, Lcom/zui/launcher/LauncherModel;->shortcutGenerallyExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v0

    const-string v2, "zdx1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---------itemUserId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_13

    new-instance v2, Lcom/zui/launcher/ItemInfo;

    invoke-direct {v2, v3}, Lcom/zui/launcher/ItemInfo;-><init>(Lcom/zui/launcher/ItemInfo;)V

    iput v0, v2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    :cond_13
    if-nez v14, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/launcher/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_e

    :cond_14
    iget v0, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_15

    iget v0, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_19

    :cond_15
    instance-of v0, v3, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_17

    move-object v0, v3

    check-cast v0, Lcom/zui/launcher/AppInfo;

    invoke-direct {v8, v0}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->i(Lcom/zui/launcher/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "BaseModelUpdateTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->recomend Exists:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    :cond_16
    check-cast v3, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v3}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v3

    :cond_17
    const-string v0, "BaseModelUpdateTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->isApp  item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isPromise: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v4, :cond_18

    move-object v4, v3

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v4}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_d

    :cond_18
    const-string v4, " no:"

    :goto_d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_19

    instance-of v0, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_19

    move-object v0, v3

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_e

    :cond_19
    if-eqz v3, :cond_1a

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_e
    move-object/from16 v2, v19

    move-object/from16 v12, v20

    move/from16 v15, v22

    move-object/from16 v10, v23

    move/from16 v0, v24

    move-object/from16 v11, v25

    move-object/from16 v7, v26

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v26, v7

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-object/from16 v20, v12

    move/from16 v22, v15

    sget-object v0, Lcom/zui/launcher/pm/InstallSessionHelper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/LauncherApps;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v15

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez v1, :cond_1e

    instance-of v1, v0, Lcom/zui/launcher/FolderInfo;

    if-nez v1, :cond_1e

    instance-of v1, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v1, :cond_1e

    instance-of v1, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v1, :cond_1c

    goto :goto_10

    :cond_1c
    instance-of v1, v0, Lcom/zui/launcher/AppInfo;

    if-eqz v1, :cond_1d

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v1

    goto :goto_11

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected info type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_10
    move-object v1, v0

    :goto_11
    instance-of v2, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v2, :cond_28

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_1f
    move-object/from16 v3, v16

    :goto_12
    if-nez v3, :cond_20

    goto :goto_f

    :cond_20
    iget-object v4, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v3}, Lcom/zui/launcher/pm/InstallSessionHelper;->getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    iget-object v5, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_13

    :cond_21
    const/4 v5, 0x0

    :goto_13
    const-string v6, "BaseModelUpdateTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v10

    const-string v10, "-----addWorkspaceItems   isPromise   sessionInfo: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "  hasActivity: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_22

    if-nez v5, :cond_23

    goto/16 :goto_1c

    :cond_22
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/WorkspaceItemInfo;->setInstallProgress(I)V

    :cond_23
    if-eqz v5, :cond_25

    new-instance v1, Lcom/zui/launcher/AppInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    iget-object v4, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4}, Lcom/zui/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v2, v3}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/zui/launcher/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v0, "BaseModelUpdateTask"

    const-string v1, "-----addWorkspaceItems   isPromise   shortcutExists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_24
    const-string v2, ""

    iput-object v2, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v2

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v0

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V

    const-string v0, "BaseModelUpdateTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----addWorkspaceItems   isPromise   addInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v10, v26

    const/4 v2, 0x1

    invoke-static {v0, v10, v2}, Lcom/zui/launcher/LauncherModel;->getFinalPosition(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Z)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v10}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v2

    if-le v2, v15, :cond_26

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v7, v25

    invoke-virtual {v7, v2}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/zui/launcher/util/IntArray;->add(I)V

    goto :goto_14

    :cond_26
    move-object/from16 v7, v25

    :cond_27
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v27

    const/16 v29, -0x64

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v30

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v31, v2, v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v2, 0x1

    aget v32, v0, v2

    move-object/from16 v28, v1

    invoke-virtual/range {v27 .. v32}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    move-object/from16 v6, v23

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v7

    move-object/from16 v21, v20

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v20, v10

    goto/16 :goto_19

    :cond_28
    move-object/from16 p3, v10

    move-object/from16 v6, v23

    move-object/from16 v7, v25

    move-object/from16 v10, v26

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v2, :cond_29

    const/4 v2, 0x0

    goto :goto_15

    :cond_29
    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_15
    instance-of v3, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v3, :cond_2b

    if-eqz v14, :cond_2b

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v2, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5, v1, v4, v10}, Lcom/zui/launcher/LauncherModel;->findCachePosition(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Landroid/content/Intent;Lcom/zui/launcher/util/IntArray;)Lcom/zui/launcher/CacheInfo;

    move-result-object v2

    goto :goto_16

    :cond_2a
    move-object/from16 v2, v16

    :goto_16
    if-eqz v2, :cond_2c

    iget v4, v2, Lcom/zui/launcher/CacheInfo;->container:I

    if-ltz v4, :cond_2c

    iget v4, v2, Lcom/zui/launcher/CacheInfo;->container:I

    invoke-virtual {v9, v4}, Lcom/zui/launcher/model/BgDataModel;->findFolder(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v4

    if-eqz v4, :cond_2b

    iget-object v4, v4, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2c

    :cond_2b
    move-object/from16 v2, v16

    :cond_2c
    if-eqz v2, :cond_32

    instance-of v4, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v4, :cond_32

    const-string v0, "BaseModelUpdateTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------Cache is not null -------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v0, v2, Lcom/zui/launcher/CacheInfo;->container:I

    const/16 v3, -0x64

    if-ne v0, v3, :cond_2e

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/launcher/LauncherModel;->getItemInfoByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v5, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v5, :cond_2d

    iget-object v5, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_17

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_17

    :cond_2e
    iget v0, v2, Lcom/zui/launcher/CacheInfo;->container:I

    if-ltz v0, :cond_2f

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v4, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v0, v4

    iget v5, v2, Lcom/zui/launcher/CacheInfo;->screen:I

    mul-int/2addr v0, v5

    iget v5, v2, Lcom/zui/launcher/CacheInfo;->cellY:I

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    iget v4, v2, Lcom/zui/launcher/CacheInfo;->cellX:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/zui/launcher/ItemInfo;->rank:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_2f

    move/from16 v5, v22

    if-ge v0, v5, :cond_30

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update favorites set rank = rank + 1 where container = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/zui/launcher/CacheInfo;->container:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and rank >= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->executeSqlInLauncherDb(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_18

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :cond_2f
    move/from16 v5, v22

    :cond_30
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v23

    iget v0, v2, Lcom/zui/launcher/CacheInfo;->container:I

    iget v4, v2, Lcom/zui/launcher/CacheInfo;->screen:I

    iget v15, v2, Lcom/zui/launcher/CacheInfo;->cellX:I

    iget v3, v2, Lcom/zui/launcher/CacheInfo;->cellY:I

    move-object/from16 v24, v1

    move/from16 v25, v0

    move/from16 v26, v4

    move/from16 v27, v15

    move/from16 v28, v3

    invoke-virtual/range {v23 .. v28}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget v0, v2, Lcom/zui/launcher/CacheInfo;->container:I

    const/16 v3, -0x64

    if-ne v0, v3, :cond_31

    iget v0, v2, Lcom/zui/launcher/CacheInfo;->screen:I

    invoke-virtual {v7, v0}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_31

    iget v0, v2, Lcom/zui/launcher/CacheInfo;->screen:I

    invoke-virtual {v7, v0}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_31
    new-instance v0, Lcom/zui/launcher/model/CachePair;

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/model/CachePair;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V

    move-object/from16 v4, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object v15, v7

    move-object/from16 v20, v10

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_19
    move-object v10, v6

    goto/16 :goto_1b

    :cond_32
    move-object/from16 v4, v20

    move/from16 v5, v22

    instance-of v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v2, :cond_34

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10, v3}, Lcom/zui/launcher/LauncherModel;->getFinalPosition(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Z)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v10}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v2

    if-le v2, v15, :cond_33

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v2

    const/16 v15, -0x64

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [I

    const/16 v18, 0x0

    aget v20, v3, v18

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [I

    const/16 v17, 0x1

    aget v0, v0, v17

    move-object v3, v1

    move-object/from16 v21, v4

    move v4, v15

    move/from16 v22, v5

    move/from16 v5, v19

    move-object v15, v6

    move/from16 v6, v20

    move-object/from16 v25, v7

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v10

    move-object v10, v15

    move-object/from16 v15, v25

    goto :goto_1b

    :cond_34
    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v25, v7

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v7, v6

    iget v6, v0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v5, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v19, v5

    move-object/from16 v5, v25

    move-object/from16 v20, v10

    move-object v10, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->findSpaceForItem(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/util/IntArray;Lcom/zui/launcher/util/IntArray;II)[I

    move-result-object v0

    aget v5, v0, v18

    invoke-virtual/range {v20 .. v20}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v1

    if-le v1, v15, :cond_35

    move-object/from16 v15, v25

    invoke-virtual {v15, v5}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v15, v5}, Lcom/zui/launcher/util/IntArray;->add(I)V

    goto :goto_1a

    :cond_35
    move-object/from16 v15, v25

    :cond_36
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v2

    const/16 v4, -0x64

    aget v6, v0, v17

    const/4 v1, 0x2

    aget v7, v0, v1

    move-object/from16 v3, v19

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    move-object/from16 v23, v10

    move-object/from16 v25, v15

    move-object/from16 v26, v20

    move-object/from16 v20, v21

    :goto_1c
    move-object/from16 v10, p3

    goto/16 :goto_f

    :cond_37
    move-object/from16 v21, v20

    move-object/from16 v10, v23

    move-object/from16 v15, v25

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_38
    new-instance v0, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v10

    move-object/from16 v4, v21

    move-object v5, v15

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/model/AddWorkspaceItemsTask$a;-><init>(Lcom/zui/launcher/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_39
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected findSpaceForItem(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/util/IntArray;Lcom/zui/launcher/util/IntArray;II)[I
    .locals 17

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    monitor-enter p2

    :try_start_0
    iget-object v3, v1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_0

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v6, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    new-array v9, v1, [I

    invoke-virtual/range {p3 .. p3}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v3

    const/4 v11, 0x1

    xor-int/2addr v3, v11

    const/4 v12, 0x0

    if-ge v3, v10, :cond_3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v13

    int-to-long v3, v13

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v9

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->h(Lcom/zui/launcher/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v3

    move/from16 v16, v13

    move v13, v3

    move/from16 v3, v16

    goto :goto_1

    :cond_3
    move v3, v12

    move v13, v3

    :goto_1
    if-nez v13, :cond_5

    move v14, v11

    :goto_2
    if-ge v14, v10, :cond_5

    invoke-virtual {v0, v14}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v15

    int-to-long v3, v15

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v9

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->h(Lcom/zui/launcher/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v3

    if-eqz v3, :cond_4

    move v13, v11

    move v3, v15

    goto :goto_3

    :cond_4
    add-int/lit8 v14, v14, 0x1

    move v3, v15

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v13, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "generate_new_screen_id"

    invoke-static {v3, v4}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/zui/launcher/util/IntArray;->add(I)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/zui/launcher/util/IntArray;->add(I)V

    int-to-long v3, v10

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v9

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/zui/launcher/model/AddWorkspaceItemsTask;->h(Lcom/zui/launcher/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v10

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t find space to add the item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v3, v0, v12

    aget v2, v9, v12

    aput v2, v0, v11

    aget v2, v9, v11

    aput v2, v0, v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected shortcutExists(Lcom/zui/launcher/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 10

    const/4 p0, 0x1

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_0
    invoke-static {p2}, Lcom/zui/launcher/util/PackageManagerHelper;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    monitor-enter p1

    :try_start_0
    iget-object v5, p1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v5}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ItemInfo;

    instance-of v7, v6, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v6}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Landroid/content/Intent;

    invoke-virtual {v6}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_3

    invoke-virtual {v7}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v7, v6}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v7}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    monitor-exit p1

    return p0

    :cond_5
    :goto_1
    monitor-exit p1

    return p0

    :cond_6
    monitor-exit p1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateShortcutByRecommend(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 8

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget p1, p3, Lcom/zui/launcher/ItemInfo;->id:I

    iget v0, p3, Lcom/zui/launcher/ItemInfo;->container:I

    iget v1, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-gez v1, :cond_1

    const/16 v1, -0x65

    if-ne v0, v1, :cond_1

    iget v1, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    goto :goto_0

    :cond_1
    iget v1, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    :goto_0
    iget v2, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget v5, p3, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iget-object v6, p3, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    iget v7, p3, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {p3, p2}, Lcom/zui/launcher/WorkspaceItemInfo;->copyFrom(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iput p1, p3, Lcom/zui/launcher/ItemInfo;->id:I

    iput v0, p3, Lcom/zui/launcher/ItemInfo;->container:I

    iput v1, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v2, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v3, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v7, p3, Lcom/zui/launcher/ItemInfo;->rank:I

    iput-object v6, p3, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "--------SQLite--------"

    invoke-static {p1, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {p3, p0}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {p3, p0}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p3, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    iput v4, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput v5, p3, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iget p0, p3, Lcom/zui/launcher/WorkspaceItemInfo;->changeCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p3, Lcom/zui/launcher/WorkspaceItemInfo;->changeCount:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateShortcutByRecommend---title: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " icon: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "zdx1"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method
