.class public Lcom/zui/launcher/model/UserLockStateChangedTask;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# instance fields
.field private final f:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/UserLockStateChangedTask;->f:Landroid/os/UserHandle;

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/WorkspaceItemInfo;)Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 11

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p3

    iget-object v0, p0, Lcom/zui/launcher/model/UserLockStateChangedTask;->f:Landroid/os/UserHandle;

    invoke-virtual {p3, v0}, Lcom/zui/launcher/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p3

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/model/UserLockStateChangedTask;->f:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;->wasSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-static {v4}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p2, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v5}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ItemInfo;

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/zui/launcher/model/UserLockStateChangedTask;->f:Landroid/os/UserHandle;

    iget-object v8, v6, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    check-cast v6, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p3, :cond_4

    invoke-static {v6}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromItemInfo(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    if-nez v8, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget v7, v6, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v6, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {v6, v8, p1}, Lcom/zui/launcher/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v7

    new-instance v9, Lcom/zui/launcher/model/q1;

    invoke-direct {v9, v6}, Lcom/zui/launcher/model/q1;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;)V

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v10, v9, v10}, Lcom/zui/launcher/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-virtual {v7}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    goto :goto_2

    :cond_4
    iget v7, v6, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v4}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    :cond_6
    iget-object p1, p2, Lcom/zui/launcher/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/ComponentKey;

    iget-object v1, v1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/zui/launcher/model/UserLockStateChangedTask;->f:Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    iget-object p1, p0, Lcom/zui/launcher/model/UserLockStateChangedTask;->f:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/zui/launcher/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    :cond_9
    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindDeepShortcuts(Lcom/zui/launcher/model/BgDataModel;)V

    return-void
.end method
