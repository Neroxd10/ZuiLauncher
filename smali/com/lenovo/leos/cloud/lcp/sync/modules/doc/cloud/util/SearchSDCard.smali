.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->getStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Document/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getRootPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->a:Ljava/lang/String;

    return-object p0
.end method

.method public searchAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->searchAll(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public searchAll(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;",
            ")",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;-><init>()V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->getStorages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find SD card is empty,storageInfos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SearchSDCard"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    iget-object v2, v2, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/SearchSDCard;->searchItemByPath(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public searchItemByPath(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;",
            ")",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {v0, p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;->findFiles(Ljava/io/File;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;I)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error!(exists:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",canRead:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",canWrite:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SearchSDCard"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
