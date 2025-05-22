.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->DOC:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;->j(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V

    return-void
.end method

.method private e(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "callback_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getSize()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "callback_size"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "callback_folder"

    const-string v1, "/.system_lenovo_default/"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getLastModif()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "callback_lastModify"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getType()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "callback_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xaa

    if-le p0, v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p0, -0x1c

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->loadPilotParameter()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->pilot:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    const-string v1, "contact.cloud.lps.lenovo.com"

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->ensureLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->selectedDocEntities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->taskExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask$a;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->taskExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskThreadPoolExecutor;->waitFinish()V

    return-void
.end method

.method private i(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->currentFilePath:Ljava/lang/String;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;

    const/4 v2, 0x0

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->breakFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".break"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->pilot:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->addPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->removePilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setResult(I)V

    return v4

    :cond_0
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_1

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->flow:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->flow:J

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->realFlow:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->realFlow:J

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;I)V

    return v4

    :cond_1
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/PilotResultCodeUtil;->parsePilotResult(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setResult(I)V

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;I)V

    return v5

    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file not found:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method private j(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V
    .locals 4

    const-string v0, "UploadOneDoc"

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin to upload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;I)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;->i(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->updatePersistList(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :catch_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setResult(I)V

    goto :goto_1

    :catch_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x2bb

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setResult(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected getSelectedDoc(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/manager/DocCacheManager;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/manager/DocCacheManager;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/manager/DocCacheManager;->getDbAllFileV2(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/FileSearcher;->addMatchType(Ljava/io/File;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/OnSearchFileListener;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/manager/DocCacheManager;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/manager/DocCacheManager;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/manager/DocCacheManager;->getCategoryResult(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;->getDocType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_1
    return-object p0
.end method

.method protected startTask()V
    .locals 2

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->startTask()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document"

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/BreakpointFileUtil;->getBreakFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->breakFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->breakFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;->g()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocBackupTask;->h()V

    return-void
.end method
