.class public Lcom/zui/launcher/model/LoaderTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/model/LoaderTask$ItemInfoFilter;
    }
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/LauncherAppState;

.field private final b:Lcom/zui/launcher/AllAppsList;

.field private final c:Lcom/zui/launcher/model/BgDataModel;

.field private d:Lcom/zui/launcher/model/FirstScreenBroadcast;

.field private final e:Lcom/zui/launcher/model/LoaderResults;

.field private final f:Landroid/content/pm/LauncherApps;

.field private final g:Lcom/zui/launcher/compat/UserManagerCompat;

.field private final h:Lcom/zui/launcher/shortcuts/DeepShortcutManager;

.field private final i:Lcom/zui/launcher/pm/InstallSessionHelper;

.field private final j:Lcom/zui/launcher/widget/WidgetManagerHelper;

.field private final k:Lcom/zui/launcher/icons/IconCache;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/AllAppsList;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/model/LoaderResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    iput-object p2, p0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    iput-object p3, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iput-object p4, p0, Lcom/zui/launcher/model/LoaderTask;->e:Lcom/zui/launcher/model/LoaderResults;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->f:Landroid/content/pm/LauncherApps;

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->h:Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    sget-object p1, Lcom/zui/launcher/pm/InstallSessionHelper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p2, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/pm/InstallSessionHelper;

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->i:Lcom/zui/launcher/pm/InstallSessionHelper;

    new-instance p1, Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object p2, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->j:Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderTask;->k:Lcom/zui/launcher/icons/IconCache;

    return-void
.end method

.method private a(Lcom/zui/launcher/model/LoaderCursor;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Lcom/zui/launcher/model/LoaderCursor;->hasActiveIconIndex:I

    invoke-virtual {p1, p0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/zui/launcher/ItemInfoWithIcon;->setActiveIconApp(Z)V

    :cond_1
    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string p1, "android.intent.category.ACTIVE_ICON"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;->clone()Lcom/zui/launcher/util/IntSparseArrayMap;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2}, Lcom/zui/launcher/model/LoaderTask;->i(Lcom/zui/launcher/util/IntSparseArrayMap;)Z

    move-result v1

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ItemInfo;

    if-eqz v6, :cond_0

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v8, -0x65

    if-ne v7, v8, :cond_0

    if-eqz v1, :cond_1

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v6, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_1

    :cond_1
    iget v7, v6, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v6, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_1
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/LauncherModel;->getWriter(ZZ)Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    :goto_2
    if-gt v4, v5, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v4, 0x1

    :goto_3
    if-gt v3, v5, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ItemInfo;

    if-eqz v1, :cond_4

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_4

    :cond_4
    iget v7, v6, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iput v4, v6, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_5

    :cond_5
    iput v4, v6, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_5
    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iget v8, v6, Lcom/zui/launcher/ItemInfo;->cellY:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    goto :goto_6

    :cond_6
    iget v7, v6, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_6
    iput v7, v6, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_7
    move v4, v3

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v5, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    new-array v4, v5, [Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    aput-boolean v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;->clone()Lcom/zui/launcher/util/IntSparseArrayMap;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2}, Lcom/zui/launcher/model/LoaderTask;->i(Lcom/zui/launcher/util/IntSparseArrayMap;)Z

    move-result v6

    invoke-direct {p0, v2, v0, v4, v6}, Lcom/zui/launcher/model/LoaderTask;->f(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/util/ArrayList;[ZZ)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/model/LoaderTask;->s(Landroid/content/Context;Ljava/util/ArrayList;[ZIZ)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private d(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static e(Lcom/zui/launcher/util/IntSparseArrayMap;Lcom/zui/launcher/model/LoaderTask$ItemInfoFilter;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Lcom/zui/launcher/model/LoaderTask$ItemInfoFilter;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    instance-of v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, v1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v3, v1, v2, p2}, Lcom/zui/launcher/model/LoaderTask$ItemInfoFilter;->filterItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/zui/launcher/FolderInfo;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/zui/launcher/FolderInfo;

    iget-object v2, v1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v1, v3, v4, p2}, Lcom/zui/launcher/model/LoaderTask$ItemInfoFilter;->filterItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    instance-of v2, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v2, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-interface {p1, v3, v1, v2, p2}, Lcom/zui/launcher/model/LoaderTask$ItemInfoFilter;->filterItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private f(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/util/ArrayList;[ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;[ZZ)V"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/zui/launcher/model/k0;

    invoke-direct {p1, p4}, Lcom/zui/launcher/model/k0;-><init>(Z)V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    if-eqz p4, :cond_2

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_2
    array-length v2, p3

    if-lt v1, v2, :cond_3

    goto :goto_1

    :cond_3
    aget-boolean v2, p3, v1

    if-nez v2, :cond_4

    const/4 v0, 0x1

    aput-boolean v0, p3, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private g(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/zui/launcher/util/IntSparseArrayMap;->clone()Lcom/zui/launcher/util/IntSparseArrayMap;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/zui/launcher/model/LoaderTask$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/model/LoaderTask$a;-><init>(Lcom/zui/launcher/model/LoaderTask;Landroid/content/ComponentName;)V

    invoke-static {v1, v0, p2}, Lcom/zui/launcher/model/LoaderTask;->e(Lcom/zui/launcher/util/IntSparseArrayMap;Lcom/zui/launcher/model/LoaderTask$ItemInfoFilter;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private h(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LauncherModel.getWidgetIconFromCursor app="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherModelLog(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    array-length p2, p0

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private i(Lcom/zui/launcher/util/IntSparseArrayMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic j(ZLcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_0
    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_0
.end method

.method static synthetic k(Lcom/zui/launcher/model/LoaderCursor;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/LauncherIcons;)Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/model/LoaderCursor;->loadIcon(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/LauncherIcons;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private l()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-virtual {v1}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {v3}, Lcom/zui/launcher/AllAppsList;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/zui/launcher/model/LoaderTask;->f:Landroid/content/pm/LauncherApps;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v3}, Lcom/zui/launcher/Utilities;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v7}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/zui/launcher/ActiveIconUtil;->getAllActiveIcons(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Lcom/zui/launcher/model/LoaderTask;->f:Landroid/content/pm/LauncherApps;

    invoke-static {v8, v7, v3}, Lcom/zui/launcher/ActiveIconUtil;->convertResolveInfoToActivityInfo(Landroid/content/pm/LauncherApps;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/zui/launcher/ActiveIconUtil;->resolveActiveIcons(Ljava/util/List;Ljava/util/List;)V

    iget-object v9, v0, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-virtual {v9, v3}, Lcom/zui/launcher/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v9

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v8, :cond_2

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v8, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    new-instance v13, Lcom/zui/launcher/AppInfo;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13, v12, v3, v9}, Lcom/zui/launcher/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Z)V

    iget-object v12, v0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {v12, v13, v11}, Lcom/zui/launcher/AllAppsList;->add(Lcom/zui/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    if-lez v12, :cond_3

    new-instance v12, Lcom/zui/launcher/AppInfo;

    invoke-direct {v12, v11, v3, v9}, Lcom/zui/launcher/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    iget-object v13, v0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {v13, v12, v11}, Lcom/zui/launcher/AllAppsList;->add(Lcom/zui/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v5

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_4

    invoke-virtual {v11}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v11}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v13, v14

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :cond_6
    if-eqz v13, :cond_7

    invoke-interface {v6, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v5, Lcom/zui/launcher/AppInfo;

    invoke-direct {v5, v11, v3, v9}, Lcom/zui/launcher/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    iget-object v12, v0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {v12, v5, v11}, Lcom/zui/launcher/AllAppsList;->add(Lcom/zui/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    :cond_7
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    iget-object v3, v0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object v3

    iget-object v5, v0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    iget-object v5, v5, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/zui/launcher/category/AllAppsCategory;->setup(Ljava/util/ArrayList;)V

    iget-object v3, v0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    iget-object v3, v3, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v5}, Lcom/zui/launcher/AppInfo;->loadLookupKey()V

    goto :goto_4

    :cond_9
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, v0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/zui/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    return-object v2
.end method

.method private m()V
    .locals 14

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    invoke-virtual {v0}, Lcom/zui/launcher/CacheList;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/zui/launcher/LauncherSettings$Cache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "intent"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "container"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "screen"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "cellX"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "cellY"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "modified"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    :catch_0
    :goto_0
    iget-boolean v9, p0, Lcom/zui/launcher/model/LoaderTask;->l:Z

    if-nez v9, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    :try_start_2
    invoke-static {v9, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v12, Lcom/zui/launcher/CacheInfo;

    invoke-direct {v12}, Lcom/zui/launcher/CacheInfo;-><init>()V

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/zui/launcher/CacheInfo;->title:Ljava/lang/CharSequence;

    iput-object v9, v12, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    iput v10, v12, Lcom/zui/launcher/CacheInfo;->id:I

    iput v11, v12, Lcom/zui/launcher/CacheInfo;->container:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v12, Lcom/zui/launcher/CacheInfo;->screen:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v12, Lcom/zui/launcher/CacheInfo;->cellX:I

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v12, Lcom/zui/launcher/CacheInfo;->cellY:I

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v12, Lcom/zui/launcher/CacheInfo;->modified:J

    iget-object v9, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v9, v9, Lcom/zui/launcher/model/BgDataModel;->mCacheList:Lcom/zui/launcher/CacheList;

    invoke-virtual {v9, v12}, Lcom/zui/launcher/CacheList;->addCache(Lcom/zui/launcher/CacheInfo;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v9

    :try_start_4
    const-string v10, "Cache items loading interrupted:"

    invoke-static {v10, v9}, Lcom/zui/launcher/util/Debug;->saveLauncherModelWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :try_start_5
    const-string v1, "------loadCache failed: "

    invoke-static {v1, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderTask;->h:Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    invoke-virtual {v1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v1

    iput-boolean v1, v0, Lcom/zui/launcher/model/BgDataModel;->hasShortcutHostPermission:Z

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-boolean v0, v0, Lcom/zui/launcher/model/BgDataModel;->hasShortcutHostPermission:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->h:Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lcom/zui/launcher/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private p()V
    .locals 47

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-direct {v10, v2}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/zui/launcher/util/PackageManagerHelper;->isSafeMode()Z

    move-result v11

    invoke-static {}, Lcom/zui/launcher/Utilities;->isBootCompleted()Z

    move-result v12

    new-instance v13, Lcom/zui/launcher/util/MultiHashMap;

    invoke-direct {v13}, Lcom/zui/launcher/util/MultiHashMap;-><init>()V

    invoke-static {v2}, Lcom/zui/launcher/model/GridSizeMigrationTask;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v3

    const/4 v14, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v14

    :goto_0
    if-eqz v3, :cond_1

    const-string v3, "LoaderTask"

    const-string v4, "loadWorkspace: resetting launcher database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "create_empty_db"

    invoke-static {v9, v3}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "after_restore_success_firstlaunch"

    invoke-interface {v3, v4, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    const-string v3, "DELETE FROM downloadapps;"

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->executeSqlInLauncherDb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const-string v3, "LoaderTask"

    const-string v4, "loadWorkspace: loading default favorites"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "load_default_favorites"

    invoke-static {v9, v3}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v8, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v8

    :try_start_1
    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v3}, Lcom/zui/launcher/model/BgDataModel;->clear()V

    invoke-static {v2}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v16

    invoke-direct {v1, v2}, Lcom/zui/launcher/model/LoaderTask;->r(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/model/LoaderTask;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v16, :cond_3

    :try_start_2
    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->autoInstallApps:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->getAutoInstallApps(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v8

    goto/16 :goto_6a

    :cond_3
    :goto_2
    :try_start_3
    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->i:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {v3}, Lcom/zui/launcher/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v7

    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/zui/launcher/model/f1;

    invoke-direct {v4, v3}, Lcom/zui/launcher/model/f1;-><init>(Lcom/zui/launcher/icons/IconCache;)V

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v6, Lcom/zui/launcher/util/PackageUserKey;

    const/4 v5, 0x0

    invoke-direct {v6, v5, v5}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v3, Lcom/zui/launcher/model/FirstScreenBroadcast;

    invoke-direct {v3, v7}, Lcom/zui/launcher/model/FirstScreenBroadcast;-><init>(Ljava/util/HashMap;)V

    iput-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->d:Lcom/zui/launcher/model/FirstScreenBroadcast;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/zui/launcher/model/LoaderCursor;

    sget-object v17, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v3

    move-object v3, v9

    move-object v15, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v23, v6

    move-object/from16 v6, v19

    move-object/from16 v24, v7

    move-object/from16 v7, v20

    move-object/from16 v17, v8

    move-object/from16 v8, v21

    :try_start_4
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-direct {v14, v3, v4}, Lcom/zui/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Lcom/zui/launcher/LauncherAppState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v3, "_id"

    invoke-virtual {v14, v3}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cellX"

    invoke-virtual {v14, v4}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cellY"

    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "screen"

    invoke-virtual {v14, v6}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "icon"

    invoke-virtual {v14, v7}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "container"

    invoke-virtual {v14, v8}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    const-string v8, "needConfig"

    invoke-virtual {v14, v8}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v18, v9

    const-string v9, "appWidgetId"

    invoke-virtual {v14, v9}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move/from16 v19, v11

    const-string v11, "appWidgetProvider"

    invoke-virtual {v14, v11}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v20, v13

    const-string v13, "spanX"

    invoke-virtual {v14, v13}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v21, v12

    const-string v12, "spanY"

    invoke-virtual {v14, v12}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v25, v10

    const-string v10, "rank"

    invoke-virtual {v14, v10}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move/from16 v26, v10

    const-string v10, "options"

    invoke-virtual {v14, v10}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move/from16 v27, v7

    iget-object v7, v14, Lcom/zui/launcher/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    move/from16 v28, v8

    new-instance v8, Landroid/util/LongSparseArray;

    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    move/from16 v29, v5

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    move/from16 v30, v4

    iget-object v4, v1, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-virtual {v4}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v4

    move-object/from16 v4, v31

    check-cast v4, Landroid/os/UserHandle;

    move/from16 v31, v6

    iget-object v6, v1, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    move-object/from16 v33, v2

    move/from16 v34, v3

    invoke-virtual {v6, v4}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v6, v1, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-virtual {v6, v4}, Lcom/zui/launcher/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v8, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v6, v1, Lcom/zui/launcher/model/LoaderTask;->g:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-virtual {v6, v4}, Lcom/zui/launcher/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_5

    move/from16 v35, v6

    iget-object v6, v1, Lcom/zui/launcher/model/LoaderTask;->h:Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-object/from16 v36, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;->wasSuccess()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    invoke-static {v6}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v7

    invoke-interface {v15, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    const/16 v35, 0x0

    goto :goto_5

    :cond_5
    move/from16 v35, v6

    move-object/from16 v36, v7

    :cond_6
    :goto_5
    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move/from16 v6, v31

    move-object/from16 v4, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v7, v36

    goto :goto_3

    :cond_7
    move-object/from16 v33, v2

    move/from16 v34, v3

    move/from16 v31, v6

    move-object/from16 v36, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    iget-boolean v4, v1, Lcom/zui/launcher/model/LoaderTask;->l:Z

    if-nez v4, :cond_5b

    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->moveToNext()Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_5b

    :try_start_6
    iget-object v4, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v4, :cond_8

    :try_start_7
    const-string v4, "User has been deleted"

    invoke-virtual {v14, v4}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v37, v3

    move-object/from16 v39, v5

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v44, v10

    move/from16 v41, v11

    move-object/from16 v38, v15

    :goto_7
    move-object/from16 v7, v23

    move-object/from16 v4, v25

    move/from16 v15, v30

    move-object/from16 v8, v33

    move-object/from16 v23, v2

    move/from16 v25, v12

    move/from16 v30, v27

    goto/16 :goto_41

    :catch_1
    move-exception v0

    :goto_8
    move-object/from16 v42, v2

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v44, v10

    move/from16 v41, v11

    move-object/from16 v38, v15

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v24, v30

    move-object/from16 v8, v33

    :goto_9
    const/4 v6, 0x1

    move-object v2, v0

    move-object v15, v5

    move/from16 v25, v12

    move/from16 v5, v26

    move/from16 v30, v27

    :goto_a
    move-object/from16 v26, v20

    :goto_b
    move/from16 v20, v13

    goto/16 :goto_63

    :cond_8
    :try_start_8
    iget v4, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3b
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v7, 0x4

    if-eqz v4, :cond_a

    const/4 v6, 0x1

    if-eq v4, v6, :cond_a

    const/4 v6, 0x2

    if-eq v4, v6, :cond_32

    if-eq v4, v7, :cond_9

    packed-switch v4, :pswitch_data_0

    move/from16 v37, v3

    move-object/from16 v39, v5

    move-object/from16 v43, v8

    move/from16 v40, v9

    move v5, v10

    move/from16 v41, v11

    move-object/from16 v38, v15

    :goto_c
    move-object/from16 v7, v23

    move/from16 v4, v27

    move/from16 v15, v30

    move-object/from16 v8, v33

    goto/16 :goto_2f

    :cond_9
    :pswitch_0
    move/from16 v37, v3

    move-object/from16 v39, v5

    move-object/from16 v38, v15

    goto/16 :goto_f

    :cond_a
    :pswitch_1
    move/from16 v37, v3

    move-object/from16 v39, v5

    move-object/from16 v43, v8

    move/from16 v40, v9

    move v5, v10

    move/from16 v41, v11

    move-object/from16 v38, v15

    move-object/from16 v7, v23

    move/from16 v4, v27

    move/from16 v15, v30

    move-object/from16 v8, v33

    goto/16 :goto_34

    :pswitch_2
    :try_start_9
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->loadLeosWidget()Lcom/zui/launcher/LenovoWidgetViewInfo;

    move-result-object v4

    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->updater()Lcom/zui/launcher/util/ContentWriter;

    move-result-object v7

    invoke-virtual {v14, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v37, v3

    :try_start_a
    invoke-virtual {v14, v12}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v38, v15

    :try_start_b
    const-string v15, "com.zui.timelaweather.activity.TimeWeatherWidgetView"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v39, v5

    :try_start_c
    iget-object v5, v4, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    if-ne v6, v5, :cond_b

    const-string v5, "com.zui.launcher.TimeWeatherWidgetView4X2old"

    iput-object v5, v4, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    const-string v15, "title"

    invoke-virtual {v7, v15, v5}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    const/4 v5, 0x1

    goto :goto_d

    :cond_b
    const/4 v5, 0x0

    :goto_d
    iget-object v15, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v15}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/FetchLenovoWidgetUtil;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->readConfigInfo(Lcom/zui/launcher/LenovoWidgetViewInfo;)Z

    move-result v15

    if-nez v15, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Leos Widget"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_e
    invoke-virtual {v14, v3}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_c
    iget-object v15, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v15, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget v15, v4, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-eq v3, v15, :cond_d

    const-string v3, "spanX"

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    const/4 v5, 0x1

    :cond_d
    iget v3, v4, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-eq v6, v3, :cond_e

    const-string v3, "spanY"

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    const/4 v5, 0x1

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v7}, Lcom/zui/launcher/util/ContentWriter;->commit()I

    :cond_f
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    goto :goto_e

    :cond_10
    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v14, v4, v3}, Lcom/zui/launcher/model/LoaderCursor;->checkAndAddItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/model/BgDataModel;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v43, v8

    move/from16 v40, v9

    move v5, v10

    move/from16 v41, v11

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v44, v10

    move/from16 v41, v11

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v24, v30

    move-object/from16 v8, v33

    goto/16 :goto_2b

    :catch_3
    move-exception v0

    move-object/from16 v42, v2

    move-object v15, v5

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v44, v10

    move/from16 v41, v11

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v24, v30

    move-object/from16 v8, v33

    move/from16 v3, v37

    goto/16 :goto_2c

    :catch_4
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v44, v10

    move/from16 v41, v11

    move-object/from16 v38, v15

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v24, v30

    move-object/from16 v8, v33

    move/from16 v3, v37

    goto/16 :goto_9

    :catch_5
    move-exception v0

    move/from16 v37, v3

    goto/16 :goto_8

    :goto_f
    :try_start_d
    iget v3, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    goto :goto_10

    :cond_11
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v14, v9}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    invoke-virtual {v14, v11}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v10}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_19
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v15, 0x1

    and-int/2addr v6, v15

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_11

    :cond_12
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_13

    :try_start_e
    invoke-static/range {v33 .. v33}, Lcom/zui/launcher/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_14

    const-string v3, "Discarding SearchWidget without packagename "
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_e

    :goto_12
    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v44, v10

    move/from16 v41, v11

    goto/16 :goto_7

    :cond_13
    :try_start_f
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_19
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_14
    const/4 v6, 0x1

    :try_start_10
    invoke-virtual {v14, v6}, Lcom/zui/launcher/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v15

    if-nez v15, :cond_15

    move v15, v6

    const/4 v7, 0x2

    goto :goto_13

    :cond_15
    const/4 v7, 0x2

    const/4 v15, 0x0

    :goto_13
    invoke-virtual {v14, v7}, Lcom/zui/launcher/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v22
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_18
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    xor-int/lit8 v7, v22, 0x1

    if-nez v2, :cond_16

    :try_start_11
    iget-object v6, v1, Lcom/zui/launcher/model/LoaderTask;->j:Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-virtual {v6}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getAllProvidersMap()Ljava/util/HashMap;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_16
    :try_start_12
    new-instance v6, Lcom/zui/launcher/util/ComponentKey;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_17
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move/from16 v40, v9

    :try_start_13
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_16
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move/from16 v41, v11

    :try_start_14
    iget-object v11, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v6, v9, v11}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    const-string v9, "DummyAppWidgetView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object/from16 v42, v2

    :try_start_15
    const-string v2, "loadworksapce   provider -->  "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-nez v6, :cond_17

    :try_start_16
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_14

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v43, v8

    move/from16 v44, v10

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v24, v30

    move-object/from16 v8, v33

    goto/16 :goto_2a

    :cond_17
    :try_start_17
    iget-object v2, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :goto_14
    invoke-static {v6}, Lcom/zui/launcher/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v9

    iget-object v11, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v11}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v11
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v9, :cond_1a

    move-object/from16 v43, v8

    move-object/from16 v8, v33

    :try_start_18
    invoke-static {v8, v6}, Lcom/zui/launcher/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v33
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move/from16 v44, v10

    :try_start_19
    new-instance v10, Lcom/zui/launcher/LauncherAppWidgetInfo;

    move-object/from16 v45, v5

    iget-object v5, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v10, v4, v5}, Lcom/zui/launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    const/4 v4, 0x0

    aget v5, v33, v4

    iput v5, v10, Lcom/zui/launcher/ItemInfo;->minSpanX:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    const/4 v4, 0x1

    :try_start_1a
    aget v5, v33, v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    iput v5, v10, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget-object v4, v6, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v10, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    const/4 v4, -0x1

    invoke-virtual {v10, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    iget-object v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    iput-object v4, v10, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v16, :cond_18

    iget-object v4, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v5, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/model/BgDataModel;->removeAutoInstallApps(Ljava/lang/String;)V

    const/16 v37, 0x1

    :cond_18
    iget-object v4, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v4

    iget-object v5, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Ljava/lang/String;)V

    iget v4, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v4, v4, -0x9

    and-int/lit8 v4, v4, -0x3

    if-nez v7, :cond_19

    if-eqz v15, :cond_19

    or-int/lit8 v4, v4, 0x4

    :cond_19
    iput v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move-object/from16 v7, v23

    :goto_15
    const/16 v4, 0x20

    goto/16 :goto_1e

    :catch_7
    move-exception v0

    move-object v2, v0

    move v6, v4

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v24, v30

    move/from16 v3, v37

    move-object/from16 v15, v39

    goto/16 :goto_2e

    :catch_8
    move-exception v0

    move-object v2, v0

    goto :goto_16

    :catch_9
    move-exception v0

    move-object v2, v0

    move/from16 v44, v10

    :goto_16
    move-object/from16 v7, v23

    goto/16 :goto_29

    :cond_1a
    move-object/from16 v45, v5

    move-object/from16 v43, v8

    move/from16 v44, v10

    move-object/from16 v8, v33

    :try_start_1c
    const-string v5, "LoaderTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget restore pending id="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v14, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " appWidgetId="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " status ="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-direct {v10, v4, v2}, Lcom/zui/launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v4, v10, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v4, v10, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v4, v10, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v4, v10, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    invoke-static {v8, v2}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v4

    iput v4, v10, Lcom/zui/launcher/ItemInfo;->subItemType:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_13
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    :try_start_1d
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_17

    :cond_1b
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/launcher/Utilities;->isPackageDisabledOrUninstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------LauncherModel--createAppWidgetInfo------provider==null  , packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "....isPackageInstalledAndEnabled.. so Info is null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    goto :goto_17

    :cond_1c
    invoke-static {v8}, Lcom/zui/launcher/Utilities;->useDummyIcon(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v2, "--------cannot use dummy widget --------"

    invoke-virtual {v14, v2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :goto_17
    move-object/from16 v33, v8

    :goto_18
    move/from16 v3, v37

    move-object/from16 v15, v38

    move-object/from16 v5, v39

    move/from16 v9, v40

    move/from16 v11, v41

    move-object/from16 v2, v42

    move-object/from16 v8, v43

    goto/16 :goto_5a

    :cond_1d
    :try_start_1e
    iget v4, v14, Lcom/zui/launcher/model/LoaderCursor;->titleIndex:I

    invoke-virtual {v14, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_13
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    if-nez v4, :cond_1e

    :try_start_1f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :cond_1e
    :try_start_20
    iput-object v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    iput-object v4, v10, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v4, v10, Lcom/zui/launcher/ItemInfo;->subItemType:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_13
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    :try_start_21
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/zui/launcher/AppStoreUtil;->isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    :try_start_22
    invoke-virtual {v10, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v10, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_7
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :try_start_23
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/zui/launcher/AppStoreUtil;->getProgress(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    goto :goto_19

    :cond_1f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/zui/launcher/DownloadSpan;->isDownloading(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    :try_start_24
    invoke-virtual {v10, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v10, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_7
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    :cond_20
    :goto_19
    :try_start_25
    iget v4, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    iput v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_13
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    move-object/from16 v7, v23

    :try_start_26
    invoke-virtual {v7, v4, v5}, Lcom/zui/launcher/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_11
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    move-object/from16 v4, v24

    :try_start_27
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v5, :cond_21

    const/4 v5, 0x0

    :goto_1a
    const/16 v15, 0x8

    goto :goto_1b

    :cond_21
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v5

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v5, v15

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1a

    :goto_1b
    invoke-virtual {v14, v15}, Lcom/zui/launcher/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v23
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_12
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    if-eqz v23, :cond_23

    :cond_22
    move-object/from16 v24, v4

    goto :goto_1c

    :cond_23
    if-eqz v5, :cond_22

    move-object/from16 v24, v4

    :try_start_28
    iget v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v4, v15

    iput v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    :goto_1c
    if-nez v5, :cond_24

    const/4 v4, 0x0

    goto :goto_1d

    :cond_24
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1d
    iput v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->installProgress:I

    goto/16 :goto_15

    :goto_1e
    invoke-virtual {v10, v4}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    :cond_25
    invoke-virtual {v14, v10}, Lcom/zui/launcher/model/LoaderCursor;->applyCommonProperties(Lcom/zui/launcher/ItemInfo;)V

    iget-object v4, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v4, v10, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_11
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    move/from16 v4, v34

    :try_start_29
    invoke-virtual {v14, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    iput v5, v10, Lcom/zui/launcher/ItemInfo;->id:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    move/from16 v5, v31

    :try_start_2a
    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v15

    iput v15, v10, Lcom/zui/launcher/ItemInfo;->screenId:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    move/from16 v34, v4

    move/from16 v15, v30

    :try_start_2b
    invoke-virtual {v14, v15}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/zui/launcher/ItemInfo;->cellX:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_e
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    move/from16 v31, v5

    move/from16 v4, v29

    :try_start_2c
    invoke-virtual {v14, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    iput v5, v10, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v14, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    iput v5, v10, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {v14, v12}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    iput v5, v10, Lcom/zui/launcher/ItemInfo;->spanY:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_d
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    move/from16 v29, v4

    move/from16 v5, v28

    :try_start_2d
    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    if-eqz v9, :cond_26

    invoke-static {v8, v6}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v4

    iget v9, v4, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v9, v10, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v9, v4, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v9, v10, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget v9, v4, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_c
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    move/from16 v28, v5

    :try_start_2e
    iget v5, v10, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v10, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v5, v4, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget v9, v10, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v10, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v5, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    const/4 v9, 0x1

    if-ne v5, v9, :cond_27

    invoke-virtual {v4}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isConfigurationOptional()Z

    move-result v4

    invoke-virtual {v10, v4}, Lcom/zui/launcher/LauncherAppWidgetInfo;->setReconfigOptional(Z)V

    goto :goto_1f

    :cond_26
    move/from16 v28, v5

    :cond_27
    :goto_1f
    iget v4, v10, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v5, v11, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v10, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v4, v10, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v5, v11, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v10, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v4, v11, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v5, v11, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v8, v10, v6, v4, v5}, Lcom/zui/launcher/LauncherModel;->verifyAppWidget(Landroid/content/Context;Lcom/zui/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;II)Z

    iget v4, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    const-string v4, "------LauncherModel--loadAppWidgetInfo------needConfig"

    invoke-static {v4}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_b
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    move/from16 v4, v27

    :try_start_2f
    invoke-direct {v1, v14, v4}, Lcom/zui/launcher/model/LoaderTask;->h(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_28

    iget v5, v10, Lcom/zui/launcher/ItemInfo;->subItemType:I

    if-nez v5, :cond_28

    invoke-static {v8, v2}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v2

    iput v2, v10, Lcom/zui/launcher/ItemInfo;->subItemType:I

    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget need config, icon:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->saveLauncherModelLog(Ljava/lang/String;)V

    goto :goto_20

    :cond_29
    move/from16 v4, v27

    iget v2, v10, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2a

    iget v2, v10, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2b

    :cond_2a
    invoke-direct {v1, v14, v4}, Lcom/zui/launcher/model/LoaderTask;->h(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    :cond_2b
    :goto_20
    const-string v2, "yudl2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadworkspace needConfig -->  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " subItemType -->  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/zui/launcher/ItemInfo;->subItemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  appWidgetInfo --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v10, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-lez v2, :cond_31

    iget v2, v10, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-gtz v2, :cond_2c

    goto :goto_22

    :cond_2c
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    :goto_21
    invoke-virtual {v14, v2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_2d
    if-nez v3, :cond_2f

    iget-object v2, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v45

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    iget v5, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    if-eq v3, v5, :cond_2f

    :cond_2e
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->updater()Lcom/zui/launcher/util/ContentWriter;

    move-result-object v3

    const-string v5, "appWidgetProvider"

    invoke-virtual {v3, v5, v2}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v2

    const-string v3, "restored"

    iget v5, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/util/ContentWriter;->commit()I

    :cond_2f
    iget v2, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v2, :cond_30

    iget-object v2, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-direct {v3, v2}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    iput-object v3, v10, Lcom/zui/launcher/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v2, v10, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v2, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v2, v1, Lcom/zui/launcher/model/LoaderTask;->k:Lcom/zui/launcher/icons/IconCache;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIconForApp(Lcom/zui/launcher/model/PackageItemInfo;Z)V

    :cond_30
    iget-object v2, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v14, v10, v2}, Lcom/zui/launcher/model/LoaderCursor;->checkAndAddItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/model/BgDataModel;)V

    move/from16 v30, v4

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v3, v37

    move-object/from16 v2, v42

    goto/16 :goto_30

    :cond_31
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widget has invalid size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_a
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    goto :goto_21

    :goto_23
    move/from16 v27, v4

    move-object/from16 v23, v7

    move-object/from16 v33, v8

    move/from16 v30, v15

    goto/16 :goto_18

    :catch_a
    move-exception v0

    move-object v2, v0

    move/from16 v30, v4

    goto/16 :goto_3b

    :catch_b
    move-exception v0

    goto :goto_24

    :catch_c
    move-exception v0

    move/from16 v28, v5

    goto :goto_24

    :catch_d
    move-exception v0

    move/from16 v29, v4

    goto :goto_24

    :catch_e
    move-exception v0

    move/from16 v31, v5

    :goto_24
    move-object v2, v0

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v30, v27

    goto/16 :goto_3c

    :catch_f
    move-exception v0

    move/from16 v34, v4

    move/from16 v31, v5

    goto :goto_25

    :catch_10
    move-exception v0

    move/from16 v34, v4

    goto :goto_25

    :catch_11
    move-exception v0

    goto :goto_25

    :catch_12
    move-exception v0

    move-object/from16 v24, v4

    goto :goto_25

    :catch_13
    move-exception v0

    move-object/from16 v7, v23

    :goto_25
    move-object v2, v0

    goto :goto_29

    :catch_14
    move-exception v0

    goto :goto_26

    :catch_15
    move-exception v0

    move-object/from16 v42, v2

    :goto_26
    move-object/from16 v43, v8

    goto :goto_28

    :catch_16
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v43, v8

    goto :goto_27

    :catch_17
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v43, v8

    move/from16 v40, v9

    :goto_27
    move/from16 v41, v11

    :goto_28
    move-object/from16 v7, v23

    move-object/from16 v8, v33

    move-object v2, v0

    move/from16 v44, v10

    :goto_29
    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v24, v30

    :goto_2a
    move/from16 v3, v37

    move-object/from16 v15, v39

    const/4 v6, 0x1

    goto :goto_2e

    :catch_18
    move-exception v0

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v41, v11

    move-object/from16 v7, v23

    move-object/from16 v8, v33

    move-object/from16 v42, v2

    move/from16 v44, v10

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v24, v30

    move/from16 v3, v37

    move-object/from16 v15, v39

    goto :goto_2d

    :catch_19
    move-exception v0

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v41, v11

    move-object/from16 v7, v23

    move-object/from16 v8, v33

    move-object/from16 v42, v2

    move/from16 v44, v10

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v24, v30

    :goto_2b
    move/from16 v3, v37

    move-object/from16 v15, v39

    :goto_2c
    const/4 v6, 0x1

    :goto_2d
    move-object v2, v0

    :goto_2e
    move/from16 v25, v12

    move-object/from16 v26, v20

    move/from16 v30, v27

    goto/16 :goto_b

    :cond_32
    move/from16 v37, v3

    move-object/from16 v39, v5

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v44, v10

    move/from16 v41, v11

    move-object/from16 v38, v15

    move-object/from16 v7, v23

    move/from16 v4, v27

    move/from16 v15, v30

    move-object/from16 v8, v33

    :try_start_30
    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget v5, v14, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-virtual {v3, v5}, Lcom/zui/launcher/model/BgDataModel;->findOrMakeFolder(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/zui/launcher/model/LoaderCursor;->applyCommonProperties(Lcom/zui/launcher/ItemInfo;)V

    iget v5, v14, Lcom/zui/launcher/model/LoaderCursor;->titleIndex:I

    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    iput v5, v3, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v5, v3, Lcom/zui/launcher/ItemInfo;->spanY:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_1a
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    move/from16 v5, v44

    :try_start_31
    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/zui/launcher/FolderInfo;->options:I

    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->markRestored()V

    iget-object v6, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v14, v3, v6}, Lcom/zui/launcher/model/LoaderCursor;->checkAndAddItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/model/BgDataModel;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1b
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    :goto_2f
    move/from16 v30, v4

    move/from16 v44, v5

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v3, v37

    :goto_30
    const/4 v6, 0x1

    move/from16 v25, v12

    move/from16 v24, v15

    move-object/from16 v26, v20

    move-object/from16 v15, v39

    move/from16 v20, v13

    goto/16 :goto_58

    :catch_1a
    move-exception v0

    move-object/from16 v42, v2

    move/from16 v30, v4

    :goto_31
    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    move/from16 v3, v37

    const/4 v6, 0x1

    move-object v2, v0

    :goto_32
    move/from16 v25, v12

    :goto_33
    move/from16 v24, v15

    move-object/from16 v26, v20

    move-object/from16 v15, v39

    goto/16 :goto_b

    :goto_34
    :try_start_32
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_3a
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    if-nez v3, :cond_33

    :try_start_33
    const-string v3, "Invalid or null intent"

    invoke-virtual {v14, v3}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1b
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    move-object/from16 v23, v2

    move/from16 v30, v4

    move/from16 v44, v5

    :goto_35
    move-object/from16 v4, v25

    move/from16 v25, v12

    goto/16 :goto_41

    :catch_1b
    move-exception v0

    move-object/from16 v42, v2

    move/from16 v30, v4

    move/from16 v44, v5

    goto :goto_31

    :cond_33
    :try_start_34
    iget-wide v9, v14, Lcom/zui/launcher/model/LoaderCursor;->serialNumber:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_3a
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    move-object/from16 v6, v43

    :try_start_35
    invoke-virtual {v6, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_34

    const/16 v9, 0x8

    goto :goto_36

    :cond_34
    const/4 v9, 0x0

    :goto_36
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_39
    .catchall {:try_start_35 .. :try_end_35} :catchall_1

    if-nez v10, :cond_35

    :try_start_36
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1c
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    goto :goto_37

    :catch_1c
    move-exception v0

    move-object/from16 v42, v2

    move/from16 v30, v4

    move/from16 v44, v5

    move-object/from16 v43, v6

    goto :goto_31

    :cond_35
    :try_start_37
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_39
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    :goto_37
    move-object/from16 v23, v2

    :try_start_38
    iget v2, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    move-object/from16 v27, v3

    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v3, v11}, Lcom/zui/launcher/model/BgDataModel;->getAutoInstallFlag(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    iget-object v2, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    move-object/from16 v3, v36

    :try_start_39
    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_37
    .catchall {:try_start_39 .. :try_end_39} :catchall_1

    if-gez v2, :cond_37

    :try_start_3a
    iget v2, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1d
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1

    move-object/from16 v36, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    :try_start_3b
    const-string v2, "Legacy shortcuts are only allowed for current users"

    :goto_38
    invoke-virtual {v14, v2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move/from16 v30, v4

    move/from16 v44, v5

    move-object/from16 v43, v6

    goto :goto_35

    :cond_36
    iget v2, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    if-eqz v2, :cond_38

    const-string v2, "Restore from other profiles not supported"
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_1e
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1

    goto :goto_38

    :catch_1d
    move-exception v0

    move-object/from16 v36, v3

    :goto_39
    move-object v2, v0

    move/from16 v30, v4

    :goto_3a
    move/from16 v44, v5

    move-object/from16 v43, v6

    move-object/from16 v42, v23

    :goto_3b
    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    :goto_3c
    move/from16 v3, v37

    const/4 v6, 0x1

    goto/16 :goto_32

    :cond_37
    move-object/from16 v36, v3

    :cond_38
    :try_start_3c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_38
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1

    if-eqz v2, :cond_39

    :try_start_3d
    iget v2, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_39

    const-string v2, "Only legacy shortcuts can have null package"
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_1e
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1

    goto :goto_38

    :catch_1e
    move-exception v0

    goto :goto_39

    :cond_39
    :try_start_3e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_38
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1

    if-nez v2, :cond_3b

    :try_start_3f
    iget-object v2, v1, Lcom/zui/launcher/model/LoaderTask;->f:Landroid/content/pm/LauncherApps;

    iget-object v3, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v3}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_1e
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1

    if-eqz v2, :cond_3a

    goto :goto_3d

    :cond_3a
    const/4 v2, 0x0

    goto :goto_3e

    :cond_3b
    :goto_3d
    const/4 v2, 0x1

    :goto_3e
    if-nez v10, :cond_3d

    if-eqz v11, :cond_3c

    :try_start_40
    iget v3, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    if-eqz v3, :cond_3d

    iget v3, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1f
    .catchall {:try_start_40 .. :try_end_40} :catchall_1

    move/from16 v30, v4

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    goto :goto_40

    :catch_1f
    move-exception v0

    move/from16 v30, v4

    :goto_3f
    move-object v2, v0

    goto :goto_3a

    :cond_3c
    move/from16 v30, v4

    goto/16 :goto_46

    :cond_3d
    move/from16 v30, v4

    :goto_40
    if-eqz v2, :cond_43

    if-eqz v10, :cond_3f

    :try_start_41
    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->f:Landroid/content/pm/LauncherApps;

    iget-object v4, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v10, v4}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3f

    if-eqz v16, :cond_3e

    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v3, v11}, Lcom/zui/launcher/model/BgDataModel;->removeAutoInstallApps(Ljava/lang/String;)V

    const/16 v37, 0x1

    :cond_3e
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->markRestored()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_20
    .catchall {:try_start_41 .. :try_end_41} :catchall_1

    move/from16 v44, v5

    move-object/from16 v43, v6

    move-object/from16 v4, v25

    move-object/from16 v3, v27

    const/4 v5, 0x1

    move/from16 v25, v12

    goto/16 :goto_48

    :catch_20
    move-exception v0

    goto :goto_3f

    :cond_3f
    :try_start_42
    iget-object v3, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_24
    .catchall {:try_start_42 .. :try_end_42} :catchall_1

    move-object/from16 v4, v25

    :try_start_43
    invoke-virtual {v4, v11, v3}, Lcom/zui/launcher/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_40

    const/4 v10, 0x0

    iput v10, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->updater()Lcom/zui/launcher/util/ContentWriter;

    move-result-object v10
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_23
    .catchall {:try_start_43 .. :try_end_43} :catchall_1

    move/from16 v44, v5

    :try_start_44
    const-string v5, "intent"
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_21
    .catchall {:try_start_44 .. :try_end_44} :catchall_1

    move-object/from16 v43, v6

    move/from16 v25, v12

    const/4 v6, 0x0

    :try_start_45
    invoke-virtual {v3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/util/ContentWriter;->commit()I

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v5, v11, v6}, Lcom/zui/launcher/model/BgDataModel;->modifyAutoInstallFlag(Ljava/lang/String;I)V

    goto/16 :goto_47

    :catch_21
    move-exception v0

    goto :goto_43

    :cond_40
    move/from16 v44, v5

    move-object/from16 v43, v6

    move/from16 v25, v12

    iget v3, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    if-eqz v3, :cond_42

    iget v3, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    const/16 v5, 0x8

    if-eq v3, v5, :cond_41

    goto :goto_42

    :cond_41
    const-string v2, "Unable to find a launch target"

    invoke-virtual {v14, v2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_22
    .catchall {:try_start_45 .. :try_end_45} :catchall_1

    :goto_41
    move-object/from16 v33, v8

    move-object/from16 v2, v23

    move/from16 v12, v25

    move/from16 v27, v30

    move/from16 v3, v37

    move-object/from16 v5, v39

    move/from16 v9, v40

    move/from16 v11, v41

    move-object/from16 v8, v43

    move/from16 v10, v44

    move-object/from16 v25, v4

    move-object/from16 v23, v7

    move/from16 v30, v15

    move-object/from16 v15, v38

    goto/16 :goto_6

    :cond_42
    :goto_42
    move-object/from16 v3, v27

    const/4 v5, 0x0

    goto :goto_48

    :catch_22
    move-exception v0

    goto :goto_45

    :catch_23
    move-exception v0

    move/from16 v44, v5

    :goto_43
    move-object/from16 v43, v6

    goto :goto_44

    :catch_24
    move-exception v0

    move/from16 v44, v5

    move-object/from16 v43, v6

    move-object/from16 v4, v25

    :goto_44
    move/from16 v25, v12

    :goto_45
    move-object v2, v0

    move-object/from16 v42, v23

    move-object/from16 v10, v24

    move/from16 v5, v26

    move/from16 v3, v37

    const/4 v6, 0x1

    goto/16 :goto_33

    :cond_43
    :goto_46
    move/from16 v44, v5

    move-object/from16 v43, v6

    move-object/from16 v4, v25

    move/from16 v25, v12

    move-object/from16 v3, v27

    :goto_47
    const/4 v5, 0x1

    :goto_48
    :try_start_46
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_36
    .catchall {:try_start_46 .. :try_end_46} :catchall_1

    if-nez v6, :cond_49

    if-nez v2, :cond_49

    :try_start_47
    iget v6, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    if-eqz v6, :cond_46

    const-string v6, "LoaderTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package not yet restored: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v11, v6}, Lcom/zui/launcher/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/16 v6, 0x8

    invoke-virtual {v14, v6}, Lcom/zui/launcher/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_26
    .catchall {:try_start_47 .. :try_end_47} :catchall_1

    if-eqz v10, :cond_44

    goto/16 :goto_4b

    :cond_44
    move-object/from16 v10, v24

    :try_start_48
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45

    iget v12, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    or-int/2addr v12, v6

    iput v12, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->updater()Lcom/zui/launcher/util/ContentWriter;

    move-result-object v6

    const-string v12, "restored"

    move/from16 v24, v2

    iget v2, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v12, v2}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/util/ContentWriter;->commit()I

    iget-object v2, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget v6, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v2, v11, v6}, Lcom/zui/launcher/model/BgDataModel;->modifyAutoInstallFlag(Ljava/lang/String;I)V

    move-object/from16 v6, v20

    goto/16 :goto_4c

    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrestored app removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move/from16 v24, v15

    move/from16 v5, v26

    move-object/from16 v12, v38

    move-object/from16 v15, v39

    move-object/from16 v26, v20

    move/from16 v20, v13

    goto/16 :goto_51

    :cond_46
    move-object/from16 v10, v24

    move/from16 v24, v2

    iget-object v2, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v11, v2}, Lcom/zui/launcher/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_48

    or-int/lit8 v9, v9, 0x2

    :cond_47
    move-object/from16 v6, v20

    :goto_49
    const/4 v2, 0x1

    goto :goto_4d

    :cond_48
    if-nez v21, :cond_47

    const-string v2, "LoaderTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing pkg, will check later: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_25
    .catchall {:try_start_48 .. :try_end_48} :catchall_1

    move-object/from16 v6, v20

    :try_start_49
    invoke-virtual {v6, v2, v11}, Lcom/zui/launcher/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_27
    .catchall {:try_start_49 .. :try_end_49} :catchall_1

    goto :goto_49

    :catch_25
    move-exception v0

    goto :goto_4a

    :catch_26
    move-exception v0

    move-object/from16 v10, v24

    :goto_4a
    move-object v2, v0

    move/from16 v24, v15

    move-object/from16 v42, v23

    move/from16 v5, v26

    move/from16 v3, v37

    move-object/from16 v15, v39

    const/4 v6, 0x1

    goto/16 :goto_a

    :cond_49
    :goto_4b
    move-object/from16 v6, v20

    move-object/from16 v10, v24

    move/from16 v24, v2

    :goto_4c
    const/4 v2, 0x0

    :goto_4d
    :try_start_4a
    iget v12, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_35
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_4a

    const/16 v24, 0x0

    :cond_4a
    if-eqz v24, :cond_4b

    if-eqz v5, :cond_4b

    :try_start_4b
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->markRestored()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_27
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1

    goto :goto_4f

    :catch_27
    move-exception v0

    move-object v2, v0

    move/from16 v20, v13

    move/from16 v24, v15

    move-object/from16 v42, v23

    move/from16 v5, v26

    move/from16 v3, v37

    move-object/from16 v15, v39

    move-object/from16 v26, v6

    :goto_4e
    const/4 v6, 0x1

    goto/16 :goto_63

    :cond_4b
    :goto_4f
    move/from16 v5, v26

    :try_start_4c
    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v12
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_34
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1

    move/from16 v20, v13

    :try_start_4d
    iget-object v13, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v13}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v13
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_33
    .catchall {:try_start_4d .. :try_end_4d} :catchall_1

    move/from16 v24, v15

    :try_start_4e
    iget v15, v14, Lcom/zui/launcher/model/LoaderCursor;->hasActiveIconIndex:I

    invoke-virtual {v14, v15}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v15
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_32
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1

    move-object/from16 v26, v6

    const/4 v6, 0x1

    if-eq v15, v6, :cond_4c

    :try_start_4f
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v6

    if-nez v6, :cond_4c

    iget v6, v13, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iget v13, v13, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_28
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1

    mul-int/2addr v6, v13

    if-lt v12, v6, :cond_4c

    const/4 v6, 0x1

    goto :goto_50

    :catch_28
    move-exception v0

    move-object v2, v0

    move-object/from16 v42, v23

    move/from16 v3, v37

    move-object/from16 v15, v39

    goto :goto_4e

    :cond_4c
    const/4 v6, 0x0

    :goto_50
    :try_start_50
    iget v12, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_31
    .catchall {:try_start_50 .. :try_end_50} :catchall_1

    if-eqz v12, :cond_4d

    :try_start_51
    invoke-virtual {v14, v3}, Lcom/zui/launcher/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_28
    .catchall {:try_start_51 .. :try_end_51} :catchall_1

    move-object/from16 v15, v39

    goto/16 :goto_55

    :cond_4d
    :try_start_52
    iget v12, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_31
    .catchall {:try_start_52 .. :try_end_52} :catchall_1

    if-eqz v12, :cond_54

    :try_start_53
    iget v12, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_4e

    goto/16 :goto_54

    :cond_4e
    iget v2, v14, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    const/16 v6, 0x9

    if-ne v2, v6, :cond_52

    iget-object v2, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v3, v2}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v2

    iget-wide v12, v14, Lcom/zui/launcher/model/LoaderCursor;->serialNumber:J
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_2e
    .catchall {:try_start_53 .. :try_end_53} :catchall_1

    move-object/from16 v15, v39

    :try_start_54
    invoke-virtual {v15, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_2d
    .catchall {:try_start_54 .. :try_end_54} :catchall_1

    if-eqz v6, :cond_51

    move-object/from16 v12, v38

    :try_start_55
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_2c
    .catchall {:try_start_55 .. :try_end_55} :catchall_1

    if-nez v2, :cond_4f

    :try_start_56
    const-string v2, "Pinned shortcut not found"

    invoke-virtual {v14, v2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_29
    .catchall {:try_start_56 .. :try_end_56} :catchall_1

    :goto_51
    move-object/from16 v33, v8

    move/from16 v13, v20

    move-object/from16 v2, v23

    move-object/from16 v20, v26

    move/from16 v27, v30

    move/from16 v3, v37

    move/from16 v9, v40

    move/from16 v11, v41

    move-object/from16 v8, v43

    move/from16 v26, v5

    move-object/from16 v23, v7

    move-object v5, v15

    move/from16 v30, v24

    move-object/from16 v24, v10

    move-object v15, v12

    move/from16 v12, v25

    move/from16 v10, v44

    move-object/from16 v25, v4

    goto/16 :goto_6

    :catch_29
    move-exception v0

    move-object v2, v0

    move-object/from16 v38, v12

    goto/16 :goto_53

    :cond_4f
    :try_start_57
    new-instance v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v3, v2, v8}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-static {v8}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v6
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_2c
    .catchall {:try_start_57 .. :try_end_57} :catchall_1

    :try_start_58
    new-instance v13, Lcom/zui/launcher/model/l0;

    invoke-direct {v13, v14, v3, v6}, Lcom/zui/launcher/model/l0;-><init>(Lcom/zui/launcher/model/LoaderCursor;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/LauncherIcons;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_2b
    .catchall {:try_start_58 .. :try_end_58} :catchall_1

    move-object/from16 v38, v12

    const/4 v12, 0x1

    :try_start_59
    invoke-virtual {v6, v2, v12, v13, v12}, Lcom/zui/launcher/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v13
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_2a
    .catchall {:try_start_59 .. :try_end_59} :catchall_1

    :try_start_5a
    invoke-virtual {v3, v13}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-virtual {v6}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Lcom/zui/launcher/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget v2, v3, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v6, 0x4

    or-int/2addr v2, v6

    iput v2, v3, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_50
    iget-object v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    move-object/from16 v46, v3

    move-object v3, v2

    move-object/from16 v2, v46

    goto/16 :goto_55

    :catch_2a
    move-exception v0

    move-object v2, v0

    move v6, v12

    goto/16 :goto_62

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_68

    :catch_2b
    move-exception v0

    move-object/from16 v38, v12

    goto :goto_52

    :catch_2c
    move-exception v0

    move-object/from16 v38, v12

    goto :goto_52

    :cond_51
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v2

    iget v6, v2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v12, 0x20

    or-int/2addr v6, v12

    iput v6, v2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto :goto_55

    :cond_52
    move-object/from16 v15, v39

    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_53

    iget-object v6, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v11, v6}, Lcom/zui/launcher/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_53

    or-int/lit8 v9, v9, 0x4

    :cond_53
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_55

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_55

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v12, "android.intent.action.MAIN"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v12, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    const/high16 v6, 0x10200000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_2d
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1

    goto :goto_55

    :catch_2d
    move-exception v0

    goto :goto_52

    :catch_2e
    move-exception v0

    move-object/from16 v15, v39

    :goto_52
    move-object v2, v0

    :goto_53
    move-object/from16 v42, v23

    move/from16 v3, v37

    goto/16 :goto_4e

    :cond_54
    :goto_54
    move-object/from16 v15, v39

    :try_start_5b
    invoke-virtual {v14, v3, v2, v6}, Lcom/zui/launcher/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v2

    :cond_55
    :goto_55
    if-eqz v2, :cond_5a

    invoke-virtual {v14, v2}, Lcom/zui/launcher/model/LoaderCursor;->applyCommonProperties(Lcom/zui/launcher/ItemInfo;)V

    iget-object v6, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_30
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1

    if-nez v6, :cond_56

    :try_start_5c
    iput-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_2d
    .catchall {:try_start_5c .. :try_end_5c} :catchall_1

    :cond_56
    :try_start_5d
    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/zui/launcher/ItemInfo;->rank:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_30
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1

    const/4 v6, 0x1

    :try_start_5e
    iput v6, v2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v6, v2, Lcom/zui/launcher/ItemInfo;->spanY:I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_2f
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1

    :try_start_5f
    iget v6, v2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/2addr v6, v9

    iput v6, v2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-eqz v19, :cond_57

    invoke-static {v8, v3}, Lcom/zui/launcher/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_57

    iget v3, v2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_30
    .catchall {:try_start_5f .. :try_end_5f} :catchall_1

    const/4 v6, 0x1

    or-int/2addr v3, v6

    :try_start_60
    iput v3, v2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto :goto_56

    :cond_57
    const/4 v6, 0x1

    :goto_56
    iget v3, v14, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    if-eqz v3, :cond_59

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_59

    iget-object v3, v14, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v11, v3}, Lcom/zui/launcher/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v3, :cond_58

    iget v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    goto :goto_57

    :cond_58
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v3

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/WorkspaceItemInfo;->setInstallProgress(I)V

    :cond_59
    :goto_57
    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v14, v2, v3}, Lcom/zui/launcher/model/LoaderCursor;->checkAndAddItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/model/BgDataModel;)V

    invoke-direct {v1, v2}, Lcom/zui/launcher/model/LoaderTask;->d(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-direct {v1, v14, v2}, Lcom/zui/launcher/model/LoaderTask;->a(Lcom/zui/launcher/model/LoaderCursor;Lcom/zui/launcher/WorkspaceItemInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=========loadIcon   : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->saveLauncherModelLog(Ljava/lang/String;)V

    move-object/from16 v2, v23

    move/from16 v3, v37

    :goto_58
    move-object/from16 v23, v7

    move-object/from16 v33, v8

    move/from16 v13, v20

    move/from16 v12, v25

    move-object/from16 v20, v26

    move/from16 v27, v30

    move/from16 v9, v40

    move/from16 v11, v41

    :goto_59
    move-object/from16 v8, v43

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object v5, v15

    move/from16 v30, v24

    move-object/from16 v15, v38

    move-object/from16 v24, v10

    :goto_5a
    move/from16 v10, v44

    goto/16 :goto_6

    :cond_5a
    const/4 v6, 0x1

    const-string v2, "Unexpected null WorkspaceItemInfo"

    invoke-virtual {v14, v2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected null WorkspaceItemInfo"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_2f
    .catchall {:try_start_60 .. :try_end_60} :catchall_1

    :catch_2f
    move-exception v0

    goto/16 :goto_61

    :catch_30
    move-exception v0

    goto :goto_5d

    :catch_31
    move-exception v0

    goto :goto_5c

    :catch_32
    move-exception v0

    move-object/from16 v26, v6

    goto :goto_5c

    :catch_33
    move-exception v0

    move-object/from16 v26, v6

    goto :goto_5b

    :catch_34
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v20, v13

    :goto_5b
    move/from16 v24, v15

    :goto_5c
    move-object/from16 v15, v39

    goto :goto_5d

    :catch_35
    move-exception v0

    move/from16 v20, v13

    move/from16 v24, v15

    move/from16 v5, v26

    move-object/from16 v15, v39

    move-object/from16 v26, v6

    :goto_5d
    const/4 v6, 0x1

    goto :goto_61

    :catch_36
    move-exception v0

    move-object/from16 v10, v24

    move/from16 v5, v26

    const/4 v6, 0x1

    goto :goto_60

    :catch_37
    move-exception v0

    move-object/from16 v36, v3

    goto :goto_5e

    :catch_38
    move-exception v0

    goto :goto_5e

    :catch_39
    move-exception v0

    move-object/from16 v23, v2

    :goto_5e
    move/from16 v30, v4

    move/from16 v44, v5

    move-object/from16 v43, v6

    goto :goto_5f

    :catch_3a
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v30, v4

    move/from16 v44, v5

    :goto_5f
    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    const/4 v6, 0x1

    move/from16 v25, v12

    :goto_60
    move/from16 v24, v15

    move-object/from16 v26, v20

    move-object/from16 v15, v39

    move/from16 v20, v13

    :goto_61
    move-object v2, v0

    :goto_62
    move-object/from16 v42, v23

    move/from16 v3, v37

    goto :goto_63

    :catch_3b
    move-exception v0

    move/from16 v37, v3

    move-object/from16 v43, v8

    move/from16 v40, v9

    move/from16 v44, v10

    move/from16 v41, v11

    move-object/from16 v38, v15

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v24, v30

    move-object/from16 v8, v33

    const/4 v6, 0x1

    move-object/from16 v23, v2

    move-object v15, v5

    move/from16 v25, v12

    move/from16 v5, v26

    move/from16 v30, v27

    move-object/from16 v26, v20

    move/from16 v20, v13

    move-object v2, v0

    move-object/from16 v42, v23

    :goto_63
    :try_start_61
    const-string v9, "LoaderTask"

    const-string v11, "Desktop items loading interrupted"

    invoke-static {v9, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1

    move-object/from16 v23, v7

    move-object/from16 v33, v8

    move/from16 v13, v20

    move/from16 v12, v25

    move-object/from16 v20, v26

    move/from16 v27, v30

    move/from16 v9, v40

    move/from16 v11, v41

    move-object/from16 v2, v42

    goto/16 :goto_59

    :cond_5b
    move/from16 v37, v3

    move-object/from16 v26, v20

    move-object/from16 v8, v33

    :try_start_62
    invoke-static {v14}, Lcom/zui/launcher/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iget-boolean v2, v1, Lcom/zui/launcher/model/LoaderTask;->l:Z

    if-eqz v2, :cond_5c

    iget-object v1, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v1}, Lcom/zui/launcher/model/BgDataModel;->clear()V

    monitor-exit v17

    return-void

    :cond_5c
    iget-object v2, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_5e

    const-string v2, "delete_no_container_items"

    move-object/from16 v3, v18

    invoke-static {v3, v2}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_64
    if-ge v5, v4, :cond_5f

    aget v6, v2, v5

    iget-object v7, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v7, v7, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/ItemInfo;

    if-eqz v7, :cond_5d

    iget-object v9, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v9, v9, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v10, v10, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v11, v7, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v9, v9, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v10, v7, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    iget-object v9, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v9, v9, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v7, v7, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->remove(I)V

    :cond_5d
    iget-object v7, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v7, v7, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    :cond_5e
    move-object/from16 v3, v18

    :cond_5f
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->commitDeleted()Z

    move-result v2

    if-eqz v2, :cond_61

    const-string v2, "delete_empty_folders"

    invoke-static {v3, v2}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_65
    if-ge v5, v4, :cond_60

    aget v6, v2, v5

    iget-object v7, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v7, v7, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v9, v9, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v7, v7, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    iget-object v7, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v7, v7, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    :cond_60
    const-string v2, "remove_ghost_widgets"

    invoke-static {v3, v2}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_61
    invoke-virtual {v1, v8}, Lcom/zui/launcher/model/LoaderTask;->queryPinnedShortcutsFromOtherDb(Landroid/content/Context;)V

    new-instance v2, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/FolderInfo;

    iget-object v5, v4, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v6, Lcom/zui/launcher/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2, v4}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/zui/launcher/FolderInfo;)V

    iget-object v5, v4, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_66
    if-ge v6, v5, :cond_62

    iget-object v7, v4, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    iput v6, v7, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v7}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v9

    if-eqz v9, :cond_63

    iget v9, v7, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v9, :cond_63

    iget v9, v7, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v2, v9}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->isItemInPreview(I)Z

    move-result v9

    if-eqz v9, :cond_63

    iget-object v9, v1, Lcom/zui/launcher/model/LoaderTask;->k:Lcom/zui/launcher/icons/IconCache;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V

    goto :goto_67

    :cond_63
    const/4 v10, 0x0

    :goto_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    :cond_64
    invoke-virtual {v14}, Lcom/zui/launcher/model/LoaderCursor;->commitRestoredItems()V

    if-nez v21, :cond_65

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_65

    new-instance v2, Lcom/zui/launcher/model/SdCardAvailableReceiver;

    iget-object v3, v1, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    move-object/from16 v4, v26

    invoke-direct {v2, v3, v4}, Lcom/zui/launcher/model/SdCardAvailableReceiver;-><init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/util/MultiHashMap;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v4}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v8, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_65
    if-eqz v16, :cond_66

    if-eqz v37, :cond_66

    iget-object v1, v1, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v1}, Lcom/zui/launcher/model/BgDataModel;->saveAutoInstallApps()V

    :cond_66
    monitor-exit v17

    return-void

    :goto_68
    invoke-static {v14}, Lcom/zui/launcher/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    :catchall_2
    move-exception v0

    move-object/from16 v17, v8

    :goto_69
    move-object v1, v0

    :goto_6a
    monitor-exit v17
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_3

    throw v1

    :catchall_3
    move-exception v0

    goto :goto_69

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static q(Landroid/util/TimingLogger;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    const-string p0, "LoaderTask"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private r(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/Utilities;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.category.ACTIVE_ICON"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.zui.launcher.intent.category.ZUI_LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v5, 0xc0

    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v4, v4, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherApps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v4, v4, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    goto :goto_1

    :cond_0
    move v8, v6

    :goto_1
    invoke-virtual {v0, v2, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    move v10, v6

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iput v8, v11, Landroid/content/pm/ResolveInfo;->targetUserId:I

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, p1}, Lcom/zui/launcher/model/LoaderTask;->t(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v2, "zui.launcher.key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherApps:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------queryZuiLauncherApps----key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " comp: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherModelLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private s(Landroid/content/Context;Ljava/util/ArrayList;[ZIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;[ZIZ)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p5, v1}, Lcom/zui/launcher/LauncherModel;->getWriter(ZZ)Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    move v5, v2

    :goto_1
    if-ge v5, p4, :cond_3

    aget-boolean v6, p3, v5

    if-nez v6, :cond_2

    if-eqz p5, :cond_0

    iput v5, v4, Lcom/zui/launcher/ItemInfo;->cellY:I

    goto :goto_2

    :cond_0
    iput v5, v4, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_2
    if-eqz p5, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iget v7, v4, Lcom/zui/launcher/ItemInfo;->cellY:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    goto :goto_3

    :cond_1
    iget v6, v4, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_3
    iput v6, v4, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, v4}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    aput-boolean v1, p3, v5

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private t(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    move v3, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    iget v4, v4, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v5, v4, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-void
.end method

.method private u()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    invoke-virtual {v2}, Lcom/zui/launcher/model/BgDataModel;->collectWorkspaceScreens()Lcom/zui/launcher/util/IntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1, v0, v3}, Lcom/zui/launcher/model/BaseLoaderResults;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderTask;->d:Lcom/zui/launcher/model/FirstScreenBroadcast;

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/zui/launcher/model/FirstScreenBroadcast;->sendBroadcasts(Landroid/content/Context;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private v()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->b:Lcom/zui/launcher/AllAppsList;

    iget-object v2, v2, Lcom/zui/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/AppInfo;

    iget-boolean v5, p0, Lcom/zui/launcher/model/LoaderTask;->l:Z

    if-eqz v5, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    iget-object v5, v4, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v5, v6}, Lcom/zui/launcher/model/LoaderTask;->g(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/zui/launcher/model/LoaderTask;->l:Z

    if-nez v2, :cond_3

    new-instance v2, Lcom/zui/launcher/model/AppPairComparator;

    invoke-direct {v2, v0}, Lcom/zui/launcher/model/AppPairComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized w()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zui/launcher/model/LoaderTask;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized queryPinnedShortcutsFromOtherDb(Landroid/content/Context;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v0, v0, Lcom/zui/launcher/model/BgDataModel;->pinnedShortcutOtherDb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "query_deepshortcut_from_other_db"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "profileId"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->pinnedShortcutOtherDb:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/MutableInt;

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    iget-object v3, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v3, v3, Lcom/zui/launcher/model/BgDataModel;->pinnedShortcutOtherDb:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v1, v2, Landroid/util/MutableInt;->value:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/util/MutableInt;->value:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zui/launcher/model/LoaderTask;->l:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v1, "LoaderTask"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "LoaderTask"

    const-string v2, "run"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zui/launcher/LauncherModel;->beginLoader(Lcom/zui/launcher/model/LoaderTask;)Lcom/zui/launcher/LauncherModel$LoaderTransaction;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v2, "step 1.1: loading workspace"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->p()V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/launcher/model/LoaderTask;->b(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/launcher/model/LoaderTask;->c(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/ActiveIconConfigReader;->loadConfig(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v2, "step 1.2: bind workspace workspace"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->e:Lcom/zui/launcher/model/LoaderResults;

    invoke-virtual {v2}, Lcom/zui/launcher/model/BaseLoaderResults;->bindWorkspace()V

    const-string v2, "step 1.3: send first screen broadcast"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->u()V

    const-string v2, "step 1 completed, wait for idle"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/model/LoaderTask;->waitForIdle()V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v2, "step 2.1: loading all apps"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->l()Ljava/util/List;

    move-result-object v2

    const-string v3, "step 2.2: Binding all apps"

    invoke-static {v0, v3}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    iget-object v3, p0, Lcom/zui/launcher/model/LoaderTask;->e:Lcom/zui/launcher/model/LoaderResults;

    invoke-virtual {v3}, Lcom/zui/launcher/model/BaseLoaderResults;->bindAllApps()V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v3, "step 2.3: Update icon cache"

    invoke-static {v0, v3}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/model/LoaderTask;->k:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {v3}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getUpdateHandler()Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/icons/LauncherActivityCachingLogic;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherActivityCachingLogic;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v5}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/zui/launcher/model/u1;

    invoke-direct {v6, v5}, Lcom/zui/launcher/model/u1;-><init>(Lcom/zui/launcher/LauncherModel;)V

    invoke-virtual {v3, v2, v4, v6}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/zui/launcher/icons/cache/CachingLogic;Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    iget-object v4, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/zui/launcher/BluePoint;->updateItems(Landroid/content/Context;Ljava/util/List;)V

    const-string v2, "step 2 completed, wait for idle"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/model/LoaderTask;->waitForIdle()V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v2, "step 3.1: loading deep shortcuts"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->n()V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v2, "step 3.2: bind deep shortcuts"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->e:Lcom/zui/launcher/model/LoaderResults;

    invoke-virtual {v2}, Lcom/zui/launcher/model/LoaderResults;->bindDeepShortcuts()V

    const-string v2, "step 3 completed, wait for idle"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/model/LoaderTask;->waitForIdle()V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v2, "step 4.1: loading widgets"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->c:Lcom/zui/launcher/model/BgDataModel;

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->widgetsModel:Lcom/zui/launcher/model/WidgetsModel;

    iget-object v4, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/zui/launcher/model/WidgetsModel;->update(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v4, "step 4.2: Binding widgets"

    invoke-static {v0, v4}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zui/launcher/model/LoaderTask;->e:Lcom/zui/launcher/model/LoaderResults;

    invoke-virtual {v4}, Lcom/zui/launcher/model/LoaderResults;->bindWidgets()V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v4, "step 4.3: Update icon cache"

    invoke-static {v0, v4}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    new-instance v4, Lcom/zui/launcher/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;

    iget-object v5, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v5}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/zui/launcher/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;-><init>(Landroid/content/Context;Z)V

    iget-object v5, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v5}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/zui/launcher/model/v1;

    invoke-direct {v6, v5}, Lcom/zui/launcher/model/v1;-><init>(Lcom/zui/launcher/LauncherModel;)V

    invoke-virtual {v3, v2, v4, v6}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/zui/launcher/icons/cache/CachingLogic;Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string v2, "step 4.4: verifyApplications"

    invoke-static {v0, v2}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->a:Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->v()V

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    iget-object v2, p0, Lcom/zui/launcher/model/LoaderTask;->e:Lcom/zui/launcher/model/LoaderResults;

    invoke-virtual {v2}, Lcom/zui/launcher/model/LoaderResults;->finishBindingAllApps()V

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderTask;->w()V

    const-string p0, "step 5: Finish icon cache update"

    invoke-static {v0, p0}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;->finish()V

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Lcom/zui/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const-string p0, "Cancelled"

    invoke-static {v0, p0}, Lcom/zui/launcher/model/LoaderTask;->q(Landroid/util/TimingLogger;Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-object p0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v0, "LoaderTask"

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public declared-synchronized stopLocked()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/zui/launcher/model/LoaderTask;->l:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized waitForIdle()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/model/LoaderTask;->e:Lcom/zui/launcher/model/LoaderResults;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/model/BaseLoaderResults;->newIdleLock(Ljava/lang/Object;)Lcom/zui/launcher/util/LooperIdleLock;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/zui/launcher/model/LoaderTask;->l:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/LooperIdleLock;->awaitLocked(J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
