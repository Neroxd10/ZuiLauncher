.class Lcom/zui/launcher/LauncherModel$s;
.super Lcom/zui/launcher/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/os/UserHandle;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$s;->f:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/zui/launcher/LauncherModel$s;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/model/BgDataModel;Lcom/zui/launcher/AllAppsList;)V
    .locals 3

    new-instance p1, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {p1}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    monitor-enter p2

    :try_start_0
    iget-object p3, p2, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {p3}, Lcom/zui/launcher/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$s;->f:Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/LauncherModel$s;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->id:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntSparseArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->ofItemIds(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/lang/Boolean;)Lcom/zui/launcher/util/ItemInfoMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V

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
