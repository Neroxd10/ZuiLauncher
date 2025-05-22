.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    invoke-direct {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "package_name = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteBy(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteAll()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->delete(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->save(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized insert(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->save(Ljava/util/List;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public queryAll()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->queryAll()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryByFirst()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->queryByFirst(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    return-object p0
.end method

.method public queryByPackageName(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItemDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "package_name = ?"

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->querySingleBy(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectItem;

    return-object p0
.end method
