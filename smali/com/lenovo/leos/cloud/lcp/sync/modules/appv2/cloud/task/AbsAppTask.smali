.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source ""


# static fields
.field public static final APP_LAST_TASK_TIME:Ljava/lang/String; = "APP_LAST_TASK_TIME"

.field public static final KEY_CHILD_CURRENT:Ljava/lang/String; = "KEY_CHILD_CURRENT"

.field public static final KEY_IS_HIGHSPEED:Ljava/lang/String; = "KEY_IS_HIGHSPEED"

.field public static final KEY_IS_INSTALLING:Ljava/lang/String; = "KEY_IS_INSTALLING"

.field public static final KEY_RESULT_CURRENT_APP:Ljava/lang/String; = "currentApp"

.field public static final ONGOING_CHECKSUM_NET:I = 0x66

.field public static final ONGOING_CHECKSUM_PRE:I = 0x65

.field public static final ONGOING_CHECKSUM_RESTORE_NET:I = 0x66

.field public static final ONGOING_CHECKSUM_RESTORE_PRE:I = 0x65

.field public static final ONGOING_MOCK_ENCRPYT:I = 0x67

.field public static final ONGOING_MOCK_GZIP:I = 0x68

.field public static final PROBLEM_RETURN_STORAGE:Ljava/lang/String; = "PROBLEM_RETURN_STORAGE"

.field public static final STEP_ONGOING:I = 0x64


# instance fields
.field protected appTaskDBUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

.field protected applist:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

.field protected breakFilePath:Ljava/lang/String;

.field protected cost:J

.field protected currentSize:J

.field protected errorCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

.field protected failedNum:I

.field private g:I

.field private h:I

.field protected notInstallCount:I

.field protected operationStorage:Ljava/lang/String;

.field protected previousDownloadedSize:J

.field protected progressBundle:Landroid/os/Bundle;

.field protected realFlow:J

.field protected start:J

.field protected totalSize:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->breakFilePath:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->h:I

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->appTaskDBUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->errorCodeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected addErrorCode(I)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->errorCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->errorCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->abort()V

    :cond_0
    return-void
.end method

.method protected checkErrorResult()I
    .locals 5

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->errorCodeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkErrorResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "(code="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",num="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "),"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/String;)V

    return v1
.end method

.method protected checkListIsNull(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/NoneDataRuntimrException;

    const-string p1, "argument appList is null"

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/NoneDataRuntimrException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected checkThrowCancelException()V
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    new-instance p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p0
.end method

.method protected getChangeNumber()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    return p0
.end method

.method protected getParamList(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 6

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    const-string v2, "countOfTotal"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->failedNum:I

    const-string v2, "countOfFailed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notInstallCount:I

    const-string v2, "countOfNotInstall"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    const-string v3, "real_flow"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    const-string v4, "gzip_flow"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->progressBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    const-string v1, "countOfAdd"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getSubParams()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->progressBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method protected abstract initAppList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method protected initParams(ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "PROBLEM_RESOVLER_LAST_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->getTotalCount()I

    move-result p1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->getSuccessCount()I

    move-result p1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/LastTaskCount;->getFlow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->progressBundle:Landroid/os/Bundle;

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    const-string v1, "countOfTotal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->setTrackFinishEventByData(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    return-void
.end method

.method protected isTrackEvent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected notifyFinish()V
    .locals 3

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "APP_LAST_TASK_TIME"

    invoke-static {v2, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveLong(Ljava/lang/String;J)V

    :cond_0
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    return-void
.end method

.method protected notifyProgress(IIJ)V
    .locals 2

    if-ne p2, p1, :cond_0

    const/high16 p1, 0x42c60000    # 99.0f

    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x64

    div-int/2addr p2, p1

    int-to-long v0, p1

    div-long/2addr p3, v0

    long-to-int p1, p3

    add-int/2addr p2, p1

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->h:I

    if-ge p2, p1, :cond_1

    move p2, p1

    :cond_1
    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->h:I

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    :goto_0
    return-void
.end method

.method protected notifyStart()V
    .locals 4

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyStart()V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifyProgress(IIJ)V

    return-void
.end method

.method protected notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->g:I

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->g:I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->progressBundle:Landroid/os/Bundle;

    const-string v1, "currentApp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->progressBundle:Landroid/os/Bundle;

    const-string v0, "KEY_CHILD_CURRENT"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    int-to-long v2, p2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifyProgress(IIJ)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x64

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->getParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method protected resolveData()V
    .locals 3

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->resolveStorage()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/util/AppChooserUtils;->getAppList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->checkListIsNull(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->initParams(ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->initAppList(Ljava/util/List;)V

    return-void
.end method

.method protected resolveStorage()V
    .locals 2

    const-string v0, "PROBLEM_RETURN_STORAGE"

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->operationStorage:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->operationStorage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellUtils;->getShellOutputPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->operationStorage:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->operationStorage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    return-void
.end method

.method protected abstract setTrackFinishEventByData(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V
.end method

.method protected updateProgressBundle(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->progressBundle:Landroid/os/Bundle;

    const-string v1, "KEY_IS_INSTALLING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->progressBundle:Landroid/os/Bundle;

    const-string p1, "KEY_IS_HIGHSPEED"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
