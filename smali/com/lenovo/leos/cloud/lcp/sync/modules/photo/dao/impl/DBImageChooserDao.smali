.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    iget-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->buildChooserItems(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;->getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;->getAlbumByAlbumKey(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->buildChooserItems(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;->getAlbumList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    iget-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearUselessImage(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "album_id = ?"

    invoke-virtual {v0, p1, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->querySingleBy(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    iget v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->choiceMode:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->getId()Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "checked"

    aput-object p1, v0, v1

    const-string p1, "imageChooser = ? and choice_type = ?"

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteBy(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "ignore"

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->getId()Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "choice_type = ?"

    const-string v2, "imageChooser = ?"

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->update(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized delete(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "album_id = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->querySingleBy(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v3, "imageChooser = ?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->getId()Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v1, v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteBy(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "album_id = ?"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

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
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteAll()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

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

.method public getPersistedImageChooser(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->queryAll()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->b(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->a(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public declared-synchronized persist(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->deleteAll()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v3

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    iput-object v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v3

    instance-of v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumType:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->albumType:I

    :goto_1
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceMode()I

    move-result v3

    iput v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->choiceMode:I

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->save()Ljava/lang/Long;

    const-string v3, "checked"

    iget v4, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->choiceMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const-string v3, "unchecked"

    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getCheckList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->convertFrom(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getIgnoreList()Ljava/util/List;

    move-result-object v0

    const-string v3, "ignore"

    invoke-static {v2, v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->convertFrom(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->save(Ljava/util/List;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeChoice(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v0, "album_id = ?"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p3, v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->querySingleBy(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget p3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;->choiceMode:I

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;

    iget-wide v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    const-string p2, "checked"

    invoke-direct {p3, p1, v0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooser;JLjava/lang/String;)V

    invoke-virtual {p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageChooserItem;->save()Ljava/lang/Long;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string p3, "image_id = ?"

    new-array v0, v1, [Ljava/lang/Object;

    iget-wide v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-virtual {p1, p3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteBy(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
