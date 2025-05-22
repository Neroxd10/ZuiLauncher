.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask$a;
    }
.end annotation


# instance fields
.field private g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method private e()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .locals 5

    const-string v0, "LcpCalendarTask"

    :try_start_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventChecksumBuilder;

    invoke-direct {v2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventChecksumBuilder;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask$a;

    invoke-direct {v3, p0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;-><init>()V

    invoke-interface {v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/ChecksumBuilder;->buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/ChecksumBuilder;->buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;

    move-result-object v1

    const-string v2, "\u65e5\u7a0bchecksum\u8bf7\u6c42"

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "v3/checksum.action"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/utils/CalendarUtil;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;->toBytes()[B

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "\u65e5\u7a0bchecksum\u51fa\u9519:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method protected getDefaultTrackType()Ljava/lang/String;
    .locals 0

    const-string p0, "V1_CALENDAR_SYNC_DEFAULT_FINISH"

    return-object p0
.end method

.method protected startCalendarSupportTask()Landroid/os/Bundle;
    .locals 2

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;-><init>(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->start()V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->getParams()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected startCalendarTask()V
    .locals 1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarAccountManager;->init()V

    return-void
.end method

.method protected startMainEventTask()V
    .locals 4

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/MainEventBackupStep;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/MainEventBackupStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;->e()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->getEventData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/MainEventBackupStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/MainEventBackupStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v1

    iget v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    if-nez v3, :cond_1

    iget v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opAdd:I

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opAddCount:I

    iget v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opUpdate:I

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opUpdateCount:I

    iget v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opDelete:I

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v3

    iput v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    :cond_1
    :goto_0
    iget v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v0

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opAddCount:I

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opAdd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opAddCount:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opUpdateCount:I

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opUpdate:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opUpdateCount:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opDelete:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->getEventData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    :cond_3
    :goto_1
    return-void
.end method

.method protected startSubEventTask()V
    .locals 4

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/SubEventBackupStep;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/SubEventBackupStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    const-string v3, "partevent"

    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->isCheckSumHaveChangedItems(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/SubEventBackupStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/SubEventBackupStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    :goto_0
    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarSyncTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-virtual {v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p0

    iput p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    goto :goto_1

    :cond_2
    const-string v0, "LcpCalendarTask"

    const-string v1, "\u5b50\u4e8b\u4ef6\u6ca1\u6709\u9700\u8981\u540c\u6b65\u7684\u6570\u636e"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    :cond_3
    :goto_1
    return-void
.end method
