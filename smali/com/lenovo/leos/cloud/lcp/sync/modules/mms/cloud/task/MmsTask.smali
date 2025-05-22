.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source ""


# static fields
.field public static final BACK_FLAG:Z = true

.field public static final DFT_EXPORT_FORMAT:Ljava/lang/String; = ".zip"

.field public static final MODE_NAME:Ljava/lang/String; = "MMS-"

.field public static final PROBLEM_MMS_REQUEST_ENTITY:Ljava/lang/String; = "mmsRequestEntity"

.field public static final STATUS_ONGOING:I = 0x64

.field public static final STATUS_ONGOING_BACKUP_DB:I = 0x69

.field public static final STATUS_ONGOING_BACKUP_NET:I = 0x6b

.field public static final STATUS_ONGOING_BACKUP_ZIP:I = 0x6a

.field public static final STATUS_ONGOING_DIFF_DB:I = 0x65

.field public static final STATUS_ONGOING_DIFF_NET:I = 0x66

.field public static final STATUS_ONGOING_ENCRPYT:I = 0x67

.field public static final STATUS_ONGOING_GZIP:I = 0x68

.field public static final STATUS_ONGOING_RESTORE_DB:I = 0x69

.field public static final STATUS_ONGOING_RESTORE_NET:I = 0x6b

.field public static final STATUS_ONGOING_RESTORE_ZIP:I = 0x6a


# instance fields
.field protected cost:J

.field protected localMmsEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

.field protected mmsUid2Id:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected progressStatus:I

.field protected selectedMmsEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected start:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->selectedMmsEntities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected buildGroupCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    const-string v2, "-1"

    invoke-direct {v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->selectedMmsEntities:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->getMmsEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->selectedMmsEntities:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->selectedMmsEntities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->selectedMmsEntities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->addMmsData(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexcepted JSONException occured"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method protected buildGroupRestoreCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    const-string v2, "-1"

    invoke-direct {v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->localMmsEntities:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->getMmsEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->localMmsEntities:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->localMmsEntities:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->localMmsEntities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->addMmsData(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexcepted JSONException occured"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method protected doMmsCompare(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .locals 3

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->notifySubProgress(F)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->buildGroupCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->buildGroupRestoreCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    move-result-object p1

    :goto_0
    const-string v1, "checksum"

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->notifySubProgress(F)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;->toBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw p0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v1

    const-string v2, "progressstate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    const-string v2, "countOfAdd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfUpdate:I

    const-string v2, "countOfUpdate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const-string v1, "result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getRequestEntityFromResover()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "mmsRequestEntity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->selectedMmsEntities:Ljava/util/List;

    return-void
.end method

.method protected getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?ys=true"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object p1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getMmsServer()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact.cloud.lps.lenovo.com"

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    return-object v0
.end method

.method protected notifyProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->setRealProgress(I)V

    return-void
.end method

.method protected abstract notifySubProgress(F)V
.end method

.method protected setProgressStatus(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change progress status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmsTaskAdapter.java"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->notifySubProgress(F)V

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->progressStatus:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->notifySubProgress(F)V

    return-void
.end method

.method public startCompareMms(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->mmsUid2Id:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->doMmsCompare(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->getResult()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    :cond_0
    return-object p1
.end method

.method protected startTask()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->start()V

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTask;->startTaskWithSmoothProgress()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waitingForFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stop()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stop()V

    throw v0
.end method

.method protected abstract startTaskWithSmoothProgress()V
.end method
