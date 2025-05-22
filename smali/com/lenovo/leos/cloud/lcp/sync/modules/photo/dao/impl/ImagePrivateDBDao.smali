.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;)Z
    .locals 2

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->uid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->getByUid(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->originalAdler:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->compressAdler:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->uid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->delete(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public declared-synchronized clearBackupTag()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "is_backup = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->update(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBackupTag(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "mark <> ?"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v4, "is_backup = ?"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {p1, v4, v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->update(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "uid = ?"

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

.method public declared-synchronized getByAdler(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "original_adler = ? OR compress_adler = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->queryBy(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getByUid(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "uid = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->querySingleBy(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getByUidCached(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "uid = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->querySingleBy(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

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

.method public isBackuped(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->getByUid(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->isBackup:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public declared-synchronized update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

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

.method public declared-synchronized updateBackupTag(Ljava/lang/String;Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "is_backup = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const-string p2, "uid = ?"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v3, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->update(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateBackupTag(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "is_backup = ?,mark = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    aput-object p3, v2, v3

    const-string p2, "uid = ?"

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v4

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->update(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
