.class public Lcom/zui/launcher/model/ShortcutsChangedTask;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/UserHandle;

.field private final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->h:Landroid/os/UserHandle;

    iput-boolean p4, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->i:Z

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/WorkspaceItemInfo;)Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 9

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object p3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/zui/launcher/util/MultiHashMap;

    invoke-direct {v1}, Lcom/zui/launcher/util/MultiHashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p2, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    iget v5, v4, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v4}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->h:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromItemInfo(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/zui/launcher/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/zui/launcher/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->f:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->h:Landroid/os/UserHandle;

    invoke-virtual {p3, v4, v5, v2}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Lcom/zui/launcher/shortcuts/DeepShortcutManager$QueryResult;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-static {v2}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v5, v2, p1}, Lcom/zui/launcher/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v6

    new-instance v7, Lcom/zui/launcher/model/p1;

    invoke-direct {v7, v5}, Lcom/zui/launcher/model/p1;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v2, v8, v7, v8}, Lcom/zui/launcher/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-virtual {v6}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v3}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v0}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    :cond_5
    iget-boolean p1, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->i:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->f:Ljava/lang/String;

    iget-object p3, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->h:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/zui/launcher/model/ShortcutsChangedTask;->g:Ljava/util/List;

    invoke-virtual {p2, p1, p3, v0}, Lcom/zui/launcher/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindDeepShortcuts(Lcom/zui/launcher/model/BgDataModel;)V

    :cond_6
    return-void
.end method
