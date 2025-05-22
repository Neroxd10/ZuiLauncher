.class public Lcom/zui/launcher/model/PackageUpdatedTask;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_SUSPEND:I = 0x5

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UNSUSPEND:I = 0x6

.field public static final OP_UPDATE:I = 0x2

.field public static final OP_USER_AVAILABILITY_CHANGE:I = 0x7

.field public static final TAG:Ljava/lang/String; = "PackageUpdatedTask"


# instance fields
.field private final f:I

.field private final g:Landroid/os/UserHandle;

.field private final h:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    iput p1, p0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    iput-object p2, p0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/zui/launcher/model/PackageUpdatedTask;->h:[Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--------PackageUpdatedTask  mOp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  mUser: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " packages: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    array-length p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "null"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageUpdatedTask"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/model/PackageUpdatedTask;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic h(Ljava/util/HashSet;Lcom/zui/launcher/AppInfo;)V
    .locals 0

    iget-object p1, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic i(Ljava/util/ArrayList;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic j(Ljava/util/ArrayList;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method private k(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v0, p3, p0}, Lcom/zui/launcher/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iput-object p0, p2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput p1, p2, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v4

    iget-object v5, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->h:[Ljava/lang/String;

    array-length v6, v5

    sget-object v7, Lcom/zui/launcher/util/FlagOp;->NO_OP:Lcom/zui/launcher/util/FlagOp;

    new-instance v8, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v9, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-static {v8, v9}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v9

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    iget v11, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    const/4 v12, 0x2

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-static {v3}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v7

    iget-object v9, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v7, v9}, Lcom/zui/launcher/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    const/16 v9, 0x8

    if-eqz v7, :cond_0

    invoke-static {v9}, Lcom/zui/launcher/util/FlagOp;->addFlag(I)Lcom/zui/launcher/util/FlagOp;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-static {v9}, Lcom/zui/launcher/util/FlagOp;->removeFlag(I)Lcom/zui/launcher/util/FlagOp;

    move-result-object v7

    :goto_0
    iget-object v9, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-static {v9}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v9

    goto :goto_2

    :pswitch_1
    const/4 v7, 0x5

    const/4 v14, 0x4

    if-ne v11, v7, :cond_1

    invoke-static {v14}, Lcom/zui/launcher/util/FlagOp;->addFlag(I)Lcom/zui/launcher/util/FlagOp;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-static {v14}, Lcom/zui/launcher/util/FlagOp;->removeFlag(I)Lcom/zui/launcher/util/FlagOp;

    move-result-object v7

    :goto_1
    const-string v11, "PackageUpdatedTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mAllAppsList.(un)suspend "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v2, v9, v7}, Lcom/zui/launcher/AllAppsList;->updateDisabledFlags(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/util/FlagOp;)V

    goto/16 :goto_9

    :pswitch_2
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_2

    aget-object v11, v5, v7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-static {v3, v11, v14}, Lcom/zui/launcher/BluePoint;->removePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    aget-object v11, v5, v7

    iget-object v14, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v4, v11, v14}, Lcom/zui/launcher/icons/cache/BaseIconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    :pswitch_3
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_3

    const-string v11, "PackageUpdatedTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mAllAppsList.removePackage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v5, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v11, v5, v7

    iget-object v14, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v14}, Lcom/zui/launcher/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v11

    aget-object v14, v5, v7

    iget-object v15, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v11, v14, v15}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    invoke-static {v12}, Lcom/zui/launcher/util/FlagOp;->addFlag(I)Lcom/zui/launcher/util/FlagOp;

    move-result-object v7

    goto/16 :goto_9

    :pswitch_4
    new-instance v7, Lcom/zui/launcher/model/m1;

    invoke-direct {v7, v10}, Lcom/zui/launcher/model/m1;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v2, v7}, Lcom/zui/launcher/AllAppsList;->trackRemoves(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v7

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v6, :cond_5

    :try_start_0
    const-string v14, "PackageUpdatedTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mAllAppsList.updatePackage "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v5, v11

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v13, v5, v11

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-static {v3, v13, v14}, Lcom/zui/launcher/BluePoint;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v13, v5, v11

    iget-object v14, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v4, v13, v14}, Lcom/zui/launcher/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v13, v5, v11

    iget-object v14, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v13, v14}, Lcom/zui/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v13, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v13, v3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zui/quickstep/RecentsModel;

    aget-object v14, v5, v11

    iget-object v15, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v13, v14, v15}, Lcom/zui/quickstep/RecentsModel;->updatePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v13

    aget-object v14, v5, v11

    iget-object v15, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v13, v14, v15}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v7, :cond_4

    :try_start_1
    invoke-interface {v7}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    throw v1

    :cond_5
    if-eqz v7, :cond_7

    invoke-interface {v7}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    goto :goto_8

    :pswitch_5
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_7

    const-string v11, "PackageUpdatedTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mAllAppsList.addPackage "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v5, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v11, v5, v7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-static {v3, v11, v13}, Lcom/zui/launcher/BluePoint;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v11, v5, v7

    iget-object v13, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v4, v11, v13}, Lcom/zui/launcher/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v11, v5, v7

    iget-object v13, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v11, v13}, Lcom/zui/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getAutoInstallApps(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v11

    aget-object v13, v5, v7

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    aget-object v13, v5, v7

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v13, v5, v7

    invoke-virtual {v1, v13}, Lcom/zui/launcher/model/BgDataModel;->removeAutoInstallApps(Ljava/lang/String;)V

    :cond_6
    invoke-static {v3, v11}, Lcom/zui/launcher/Utilities;->saveAutoInstallApps(Landroid/content/Context;Ljava/util/HashMap;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    invoke-static {v12}, Lcom/zui/launcher/util/FlagOp;->removeFlag(I)Lcom/zui/launcher/util/FlagOp;

    move-result-object v7

    :goto_9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v2, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v13, "PackageUpdatedTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "--package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_9

    array-length v15, v5

    if-gtz v15, :cond_8

    goto :goto_a

    :cond_8
    const/4 v15, 0x0

    aget-object v17, v5, v15

    goto :goto_b

    :cond_9
    :goto_a
    const/16 v17, 0x0

    :goto_b
    move-object/from16 v15, v17

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "----added: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "   updated: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lcom/zui/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "  removed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lcom/zui/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, v2, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_c
    iget-object v14, v2, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_c

    iget-object v14, v2, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/zui/launcher/AppInfo;

    move/from16 v18, v6

    iget-object v6, v2, Lcom/zui/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v5

    iget-object v5, v14, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/zui/launcher/Utilities;->getAppsInSamePkg(Ljava/util/List;Ljava/lang/String;)I

    move-result v5

    iget-object v6, v2, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v20, v4

    iget-object v4, v14, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/zui/launcher/Utilities;->getAppsInSamePkg(Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    if-eq v4, v6, :cond_b

    :cond_a
    invoke-virtual {v14}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v4

    invoke-static {v4, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v18

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto :goto_c

    :cond_c
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move/from16 v18, v6

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/zui/launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    invoke-static {v3}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v3}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/zui/launcher/category/AllAppsCategory;->addItems(Ljava/util/ArrayList;)V

    goto :goto_d

    :cond_d
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move/from16 v18, v6

    :cond_e
    :goto_d
    iget-object v4, v2, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v2, Lcom/zui/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v2, Lcom/zui/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    new-instance v4, Lcom/zui/launcher/model/n1;

    invoke-direct {v4, v11}, Lcom/zui/launcher/model/n1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/zui/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v2, Lcom/zui/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    iget v5, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    const/4 v12, 0x1

    if-eq v5, v12, :cond_11

    sget-object v5, Lcom/zui/launcher/util/FlagOp;->NO_OP:Lcom/zui/launcher/util/FlagOp;

    if-eq v7, v5, :cond_10

    goto :goto_e

    :cond_10
    move-object/from16 v25, v4

    move-object/from16 v24, v11

    goto/16 :goto_1b

    :cond_11
    :goto_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget v14, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    if-eq v14, v12, :cond_13

    const/4 v12, 0x2

    if-ne v14, v12, :cond_12

    goto :goto_f

    :cond_12
    const/4 v12, 0x0

    goto :goto_10

    :cond_13
    :goto_f
    const/4 v12, 0x1

    :goto_10
    monitor-enter p2

    :try_start_2
    iget-object v14, v1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v14}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_28

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zui/launcher/ItemInfo;

    instance-of v6, v15, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v6, :cond_26

    iget-object v6, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    move-object/from16 v21, v14

    iget-object v14, v15, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v14}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    check-cast v15, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v6, v15, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v6, :cond_14

    iget-object v6, v15, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v6, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v3}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v6

    iget-object v14, v15, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v6, v14}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v14

    invoke-virtual {v6}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    if-eqz v14, :cond_14

    invoke-virtual {v15, v14}, Lcom/zui/launcher/WorkspaceItemInfo;->applyOriginalFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    iget-object v6, v14, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v14, v14, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {v6, v14}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v6

    iput-object v6, v15, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    const/4 v6, 0x1

    goto :goto_12

    :cond_14
    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_20

    invoke-interface {v9, v15, v14}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v22

    if-eqz v22, :cond_20

    move/from16 v22, v6

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v23, v9

    const/16 v9, 0x10

    invoke-virtual {v15, v9}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v9

    if-eqz v9, :cond_15

    iget v9, v15, Lcom/zui/launcher/ItemInfo;->id:I

    move-object/from16 v24, v11

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v9, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_16

    move-object/from16 v14, v21

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    goto :goto_11

    :cond_15
    move-object/from16 v24, v11

    :cond_16
    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v9

    if-eqz v9, :cond_1d

    if-eqz v12, :cond_1d

    iget v9, v15, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v11, 0x9

    if-ne v9, v11, :cond_18

    invoke-static {v3}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object v9

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v25, v4

    const/4 v14, 0x1

    new-array v4, v14, [Ljava/lang/String;

    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v4, v16

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v14, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v9, v11, v4, v14}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_17

    const/4 v4, 0x0

    goto :goto_13

    :cond_17
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v15, v4, v3}, Lcom/zui/launcher/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    const/4 v4, 0x1

    const/16 v22, 0x1

    goto :goto_13

    :cond_18
    move-object/from16 v25, v4

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "."

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    iget-object v9, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v4, v14, v9}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    goto :goto_13

    :cond_19
    const/4 v4, 0x1

    :goto_13
    const/4 v9, 0x3

    invoke-virtual {v15, v9}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-direct {v0, v3, v15, v6}, Lcom/zui/launcher/model/PackageUpdatedTask;->k(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_14

    :cond_1a
    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget v4, v15, Lcom/zui/launcher/ItemInfo;->id:I

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :cond_1b
    if-nez v4, :cond_1c

    iget v4, v15, Lcom/zui/launcher/ItemInfo;->id:I

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v4, "PackageUpdatedTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restored shortcut no longer valid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/zui/launcher/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_1c
    const/4 v4, 0x0

    iput v4, v15, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    goto :goto_14

    :cond_1d
    move-object/from16 v25, v4

    if-eqz v12, :cond_1e

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-direct {v0, v3, v15, v6}, Lcom/zui/launcher/model/PackageUpdatedTask;->k(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :goto_14
    const/16 v22, 0x1

    :cond_1e
    if-eqz v12, :cond_1f

    iget v4, v15, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v4, :cond_1f

    invoke-virtual {v15}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v4

    move-object/from16 v6, v20

    invoke-virtual {v6, v15, v4}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V

    const/16 v22, 0x1

    goto :goto_15

    :cond_1f
    move-object/from16 v6, v20

    :goto_15
    iget v4, v15, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget v9, v15, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-interface {v7, v9}, Lcom/zui/launcher/util/FlagOp;->apply(I)I

    move-result v9

    iput v9, v15, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-eq v9, v4, :cond_21

    const/4 v4, 0x1

    goto :goto_16

    :cond_20
    move-object/from16 v25, v4

    move/from16 v22, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v6, v20

    :cond_21
    const/4 v4, 0x0

    :goto_16
    if-nez v22, :cond_22

    if-eqz v4, :cond_23

    :cond_22
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v22, :cond_27

    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_24

    sget-object v4, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v4, v4, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v9, "zui.launcher.key"

    sget-object v11, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v11, v11, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v4

    :goto_17
    invoke-virtual {v4, v15}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_19

    :cond_25
    move-object/from16 v25, v4

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    goto :goto_18

    :cond_26
    move-object/from16 v25, v4

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v21, v14

    :goto_18
    move-object/from16 v6, v20

    instance-of v4, v15, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v4, :cond_27

    if-eqz v12, :cond_27

    check-cast v15, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v4, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    iget-object v9, v15, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v9

    if-eqz v9, :cond_27

    iget-object v4, v15, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget v4, v15, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v4, v4, -0xb

    iput v4, v15, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v15, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v4

    goto :goto_17

    :cond_27
    :goto_19
    move-object/from16 v20, v6

    :goto_1a
    move-object/from16 v14, v21

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    move-object/from16 v4, v25

    goto/16 :goto_11

    :cond_28
    move-object/from16 v25, v4

    move-object/from16 v24, v11

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0, v5}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofItemIds(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/lang/Boolean;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zui/launcher/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    :cond_29
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a

    new-instance v4, Lcom/zui/launcher/model/l1;

    invoke-direct {v4, v13}, Lcom/zui/launcher/model/l1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_2a
    if-eqz v12, :cond_2b

    const-string v4, "com.zui.launchersdk"

    const/4 v5, 0x0

    aget-object v6, v19, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    new-instance v4, Lcom/zui/launcher/model/PackageUpdatedTask$a;

    invoke-direct {v4, v0}, Lcom/zui/launcher/model/PackageUpdatedTask$a;-><init>(Lcom/zui/launcher/model/PackageUpdatedTask;)V

    invoke-virtual {v0, v4}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_2b
    :goto_1b
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget v5, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2c

    move-object/from16 v6, v19

    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-static {v3, v6, v5}, Lcom/zui/launcher/notification/NotificationProvider;->removeRedHot(Landroid/content/Context;[Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_1d

    :cond_2c
    move-object/from16 v6, v19

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2e

    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    move/from16 v7, v18

    const/4 v15, 0x0

    :goto_1c
    if-ge v15, v7, :cond_2f

    aget-object v8, v6, v15

    iget-object v9, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    if-nez v8, :cond_2d

    aget-object v8, v6, v15

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c

    :cond_2e
    :goto_1d
    move/from16 v7, v18

    :cond_2f
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v10}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_1e

    :cond_30
    move-object/from16 v8, v25

    goto :goto_1f

    :cond_31
    :goto_1e
    invoke-static {v3}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object v5

    move-object/from16 v8, v25

    invoke-virtual {v5, v8}, Lcom/zui/launcher/category/AllAppsCategory;->removeItems(Ljava/util/ArrayList;)V

    iget-object v5, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-static {v4, v5}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v5

    iget-object v9, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-static {v10, v9}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/zui/launcher/util/ItemInfoMatcher;->or(Lcom/zui/launcher/util/ItemInfoMatcher;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v9}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofItemIds(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/lang/Boolean;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/zui/launcher/util/ItemInfoMatcher;->and(Lcom/zui/launcher/util/ItemInfoMatcher;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    sget-object v2, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/ItemInstallQueue;

    iget-object v5, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Lcom/zui/launcher/model/ItemInstallQueue;->removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0, v4}, Lcom/zui/launcher/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/HashSet;)V

    iget-object v2, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-nez v2, :cond_33

    :cond_32
    invoke-static {v3}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/zui/launcher/LauncherModel;->removeRecommendPendingItems(Ljava/util/HashSet;Z)V

    new-instance v2, Lcom/zui/launcher/model/PackageUpdatedTask$b;

    invoke-direct {v2, v0, v4}, Lcom/zui/launcher/model/PackageUpdatedTask$b;-><init>(Lcom/zui/launcher/model/PackageUpdatedTask;Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_33
    :goto_1f
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    new-instance v2, Lcom/zui/launcher/model/PackageUpdatedTask$c;

    invoke-direct {v2, v0, v8}, Lcom/zui/launcher/model/PackageUpdatedTask$c;-><init>(Lcom/zui/launcher/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_34
    sget-boolean v2, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz v2, :cond_37

    iget v2, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_35

    const/4 v5, 0x2

    if-ne v2, v5, :cond_37

    :cond_35
    const/4 v15, 0x0

    :goto_20
    if-ge v15, v7, :cond_36

    iget-object v2, v1, Lcom/zui/launcher/model/BgDataModel;->widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

    new-instance v5, Lcom/zui/launcher/util/PackageUserKey;

    aget-object v8, v6, v15

    iget-object v9, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-direct {v5, v8, v9}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v8, p1

    invoke-virtual {v2, v8, v5}, Lcom/zui/launcher/model/WidgetsModel;->update(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;

    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    :cond_36
    invoke-virtual {v0, v1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/zui/launcher/model/BgDataModel;)V

    :cond_37
    iget-object v1, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->g:Landroid/os/UserHandle;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_39

    :cond_38
    iget v1, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {v3}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/zui/launcher/LauncherModel;->removeRecommendPendingItems(Ljava/util/HashSet;Z)V

    new-instance v1, Lcom/zui/launcher/model/PackageUpdatedTask$d;

    invoke-direct {v1, v0, v6}, Lcom/zui/launcher/model/PackageUpdatedTask$d;-><init>(Lcom/zui/launcher/model/PackageUpdatedTask;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_39
    iget v1, v0, Lcom/zui/launcher/model/PackageUpdatedTask;->f:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3a

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_3a
    new-instance v1, Lcom/zui/launcher/model/PackageUpdatedTask$e;

    invoke-direct {v1, v0, v6}, Lcom/zui/launcher/model/PackageUpdatedTask$e;-><init>(Lcom/zui/launcher/model/PackageUpdatedTask;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_3b
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    new-instance v1, Lcom/zui/launcher/model/PackageUpdatedTask$f;

    invoke-direct {v1, v0, v4}, Lcom/zui/launcher/model/PackageUpdatedTask$f;-><init>(Lcom/zui/launcher/model/PackageUpdatedTask;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_3c
    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
