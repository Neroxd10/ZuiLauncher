.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->currentUser:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageAdlerHashMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    if-nez p0, :cond_2

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageAdlerHashMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    :cond_2
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageLesyncDownloadMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    if-nez p0, :cond_3

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageLesyncDownloadMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_0

    :try_start_3
    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->currentUser:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    :cond_1
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->currentUser:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    :cond_3
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    goto :goto_3

    :catchall_3
    move-exception v1

    :goto_2
    :try_start_6
    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object v5, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->currentUser:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    invoke-direct {v5, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    :cond_5
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized checkLesyncDownloadFileExist(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Ljava/lang/String;)Z
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    invoke-static {p0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->getNameSizeByAdlerWithLeSyncDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->realAdlerKey:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->getNameSizeByAdlerWithLeSyncDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p0, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized cloneLesyncDownloadCacheMap(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageLesyncDownloadMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized delAdlerImageCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageLesyncDownloadMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->removeByAdlerKey(Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageAdlerHashMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->removeByAdlerKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized delBackupedImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->backuped:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->backuped:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized deleteAllByDbAndCache(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object v2, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->backuped:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object v2, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageAdlerHashMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->clear()V

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object v2, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageLesyncDownloadMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->clear()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->currentUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-void

    :goto_2
    :try_start_6
    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getAdlerByNameSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageAdlerHashMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->getAdlerSetByNameSize(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBackupedImageCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->backuped:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getNameSizeByAdler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageAdlerHashMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->getNameSizeSetByAdler(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getNameSizeByAdlerWithLeSyncDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageLesyncDownloadMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->getNameSizeSetByAdler(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isEmptyDb(Landroid/content/Context;)Z
    .locals 1

    const-class p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProviderV2;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTableV2;->imageAdlerHashMap:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/ImageAdlerHashMap;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
