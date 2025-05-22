.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;
.source ""


# instance fields
.field private g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;

.field private h:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;

.field private i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->g(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    return-void
.end method

.method private e()V
    .locals 7

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->setProgressStatus(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncCheckSumBuilder;->buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumRequest;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildSupportChecksumRequest, cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v3, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LcpCalendarTask"

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "v3/synchecksum"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseCalendarSupportProtocol;->toBytes()[B

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;

    invoke-direct {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->getResult()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "responseSupportChecksum\uff0ccost\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;->isServerReachable()Z

    move-result v1

    const-string v2, "syncChecksum response:"

    if-eqz v1, :cond_2

    const/4 v1, -0x2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 v1, 0x2bb

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private f()V
    .locals 7

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->setProgressStatus(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;

    invoke-direct {v2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;

    invoke-virtual {v2, v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequestBuilder;->buildModifyRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseCalendarSupportProtocol;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildSyncModifyRequest, cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v3, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LcpCalendarTask"

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u751f\u65e5\u63d0\u9192\u4e24\u7aef\u4e00\u81f4\uff0c\u4e0d\u9700\u8981\u540c\u6b65\u6570\u636e"

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;

    return-void

    :cond_0
    const-string v0, "v3/syncmodify"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseCalendarSupportProtocol;->toBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;->getResult()I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache;->UpdateEx3List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDaoImpl;-><init>()V

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache;->UpdateEx3List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;

    invoke-interface {v0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDao;->update(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)I

    goto :goto_0

    :cond_2
    const-string v0, "\u672c\u5730\u6709\u53d8\u5316\u6570\u636e\u5728\u6210\u529f\u5907\u4efd\u4ee5\u540e\uff0c\u6570\u636e\u5e93ex3\u5b57\u6bb5\u5df2\u4fee\u6539\u4e3a\u5f53\u524dcrc"

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncRequest;->getUploadBirthPhotoList()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;->setUploadBirthPhotoList(Ljava/util/Map;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "responseSyncModify\uff0ccost\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;->isServerReachable()Z

    move-result v1

    const-string v2, "syncModify response:"

    if-eqz v1, :cond_5

    const/4 v1, -0x2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 v1, 0x2bb

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "PROBLEM_RESOVLER_TRACK_TYPE"

    invoke-interface {p1, v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_SUPPORT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->setProgressStatus(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponseHandler;

    invoke-direct {v2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponseHandler;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentSyncResponse;

    invoke-interface {v2, v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseSyncResponseHandler;->handleSyncResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseCalendarSupportProtocol;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResult\uff0ccost\uff1a"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LcpCalendarTask"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getChangeNumber()I
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayAdd:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayDelete:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayUpdate:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderAdd:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderDelete:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderUpdate:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultTrackType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->j:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "V1_CALENDAR_SYNC_SUPPORT_DEFAULT_FINISH"

    return-object p0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 5

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const-string v3, "calendarSupportTaskResult"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v2

    const-string v3, "calendarSupportProgressState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "real_flow"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "calendarSupportRealFlow"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "gzip_flow"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "calendarSupportGzipFlow"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderAdd:I

    const-string v2, "calendarSupportLeReminderAdd"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderUpdate:I

    const-string v2, "calendarSupportLeReminderUpdate"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opLeReminderDelete:I

    const-string v2, "calendarSupportLeReminderDelete"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayAdd:I

    const-string v2, "calendarSupportBirthdayAdd"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayUpdate:I

    const-string v2, "calendarSupportBirthdayUpdate"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opBirthdayDelete:I

    const-string v2, "calendarSupportBirthdayDelete"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opScheduleAdd:I

    const-string v2, "calendarSupportScheduleAdd"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opScheduleUpdate:I

    const-string v2, "calendarSupportScheduleUpdate"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->i:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/ContentTaskResult;->opScheduleDelete:I

    const-string v0, "calendarSupportScheduleDelete"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v1
.end method

.method protected isTrackEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->bNeedToSync:Z

    return p0
.end method

.method protected startCalendarSupportTask()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->e()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->f()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/CalendarSupportSyncTask;->h()V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, -0x2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method
