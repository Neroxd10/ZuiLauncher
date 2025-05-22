.class public Lcom/zui/launcher/model/CacheDataUpdatedTask;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# static fields
.field public static final OP_CACHE_UPDATE:I = 0x1

.field public static final OP_SESSION_UPDATE:I = 0x2


# instance fields
.field private final f:I

.field private final g:Landroid/os/UserHandle;

.field private final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    iput p1, p0, Lcom/zui/launcher/model/CacheDataUpdatedTask;->f:I

    iput-object p2, p0, Lcom/zui/launcher/model/CacheDataUpdatedTask;->g:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/zui/launcher/model/CacheDataUpdatedTask;->h:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 6

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p2

    :try_start_0
    iget-object v2, p2, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    instance-of v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zui/launcher/model/CacheDataUpdatedTask;->g:Landroid/os/UserHandle;

    iget-object v5, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v3}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/zui/launcher/model/CacheDataUpdatedTask;->isValidShortcut(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/zui/launcher/model/CacheDataUpdatedTask;->h:Ljava/util/HashSet;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/model/CacheDataUpdatedTask;->h:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/zui/launcher/model/CacheDataUpdatedTask;->g:Landroid/os/UserHandle;

    invoke-virtual {p3, p1, v2, v0}, Lcom/zui/launcher/AllAppsList;->updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;Ljava/util/ArrayList;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/zui/launcher/model/CacheDataUpdatedTask$a;

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/model/CacheDataUpdatedTask$a;-><init>(Lcom/zui/launcher/model/CacheDataUpdatedTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isValidShortcut(Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/model/CacheDataUpdatedTask;->f:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method
