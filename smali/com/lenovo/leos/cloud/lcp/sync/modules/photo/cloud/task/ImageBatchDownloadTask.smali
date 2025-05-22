.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;
.source ""


# static fields
.field public static final STATUS_ONGOING_BACKUP_DOING:I = 0x6


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

.field private i:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->PHOTO:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->getBiggestStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Photo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->rootPath:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->g:Ljava/util/List;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->getInstance(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->imageProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Photo"

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/BreakpointFileUtil;->getBreakFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "restore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->breakFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->breakFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->l(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const-string v0, "-"

    if-ltz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private h(JJ)Z
    .locals 2

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Real file size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " cloud image size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageBatchDownloadTask"

    invoke-static {p2, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;->isServerReachable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_0

    :cond_0
    const/16 p1, 0x2bb

    :goto_0
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private i(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Ljava/lang/String;)Z
    .locals 0

    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->rootPath:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->filterFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private j()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->rootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$a;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$b;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    return-void
.end method

.method private k(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$f;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$f;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private l(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    :try_start_0
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->u(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->increaseFlow(J)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->increaseSuccessCount()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->updateSuccess(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Z)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v3

    invoke-virtual {p0, v3, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->updateDBTaskInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Z)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->o(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->deleteChoiceImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->r(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    iget-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->v(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->realAdlerKey:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->realAdlerKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->v(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->increaseFailedCount()V

    invoke-virtual {p0, p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->increaseFailedCount()V

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->notEnoughSpaceException(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->setResult(I)V

    goto :goto_1

    :cond_4
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->setResult(I)V

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->setResult(I)V

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private m(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->rootPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private n(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;J)Z
    .locals 2

    const-wide/16 v0, 0x400

    mul-long/2addr p2, v0

    iget-wide p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized o(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->increaseBackupImagesCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private p(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 3

    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private q()V
    .locals 8

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getTotalChoiceCount()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    div-int/lit16 v2, v0, 0x1f4

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    mul-int/lit16 v4, v3, 0x1f4

    sub-int v5, v0, v4

    if-le v5, v1, :cond_0

    move v5, v1

    :cond_0
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$d;

    invoke-direct {v7, p0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$d;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;II)V

    invoke-virtual {v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->t()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$e;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$e;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;I)V

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->waitFinish()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->w()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->imageProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->notifyRemove()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->waitFinish()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->w()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->imageProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->notifyRemove()V

    throw v0
.end method

.method private r(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;-><init>()V

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->filterFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getPhotoLocalUID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->uid:Ljava/lang/String;

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->originalAdler:Ljava/lang/String;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->realAdlerKey:Ljava/lang/String;

    iput-object p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->compressAdler:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;)V

    return-void
.end method

.method private s()V
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaScanner;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaScanner;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->rootPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/MediaScanner;->scan(Ljava/io/File;)V

    return-void
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->g:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->isInterruptTask()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChooser(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;

    invoke-direct {v4, p0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private u(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->j:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->i(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->p(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->increaseFastCount()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->k(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z

    move-result p0

    return p0
.end method

.method private v(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->getByAdler(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->uid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->updateBackupTag(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChoosers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->signRemove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->notifyRemove()V

    return-void
.end method


# virtual methods
.method public download2Cloud(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->rootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->getSystemAvailableSize(Ljava/io/File;)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;J)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->setResult(I)V

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "\u521b\u5efa\u56fe\u7247\u4e0b\u8f7d\u6587\u4ef6\u5931\u8d25"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->filterFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->rootPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_3
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->breakFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->buildUniqueCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".break"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;

    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->downUrl:Ljava/lang/String;

    iget-wide v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;

    invoke-direct {v9, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->pilot:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {v3, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->startFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->tmpUploadFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->h(JJ)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->setResult(I)V

    move v2, p1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "\u4e0b\u8f7d\u7684\u56fe\u7247\u6587\u4ef6\u5927\u5c0f\u4e0d\u4e00\u81f4"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->resolveFailedResult(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->setResult(I)V

    :goto_1
    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7
    return v2
.end method

.method protected getDefaultTrackType()Ljava/lang/String;
    .locals 0

    const-string p0, "V1_PHOTO_RESTORE_DEFAULT_FINISH"

    return-object p0
.end method

.method protected getImageList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->imageProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->getImageList(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, p2, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    const-string p1, "query imageList failed"

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected notEnoughSpaceException(Ljava/io/IOException;)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->onNoneSpaceIOException(Landroid/content/Context;Ljava/lang/Exception;)Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onFinishImageTask()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->s()V

    return-void
.end method

.method protected startImageTask()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->j()V

    const-string v0, "gallery"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->pilot:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->q()V

    return-void
.end method
