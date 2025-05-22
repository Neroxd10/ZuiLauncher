.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V

    return-void
.end method


# virtual methods
.method public doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;
    .locals 6

    const-string v0, "LcpCalendarTask"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    const/16 v4, 0x7d6

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;->setCurrentStauts(I)V

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    invoke-interface {v3, p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncRequestBuilder;->buildRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;->getRestoreReqSize()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    const/16 v4, 0x7d7

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;->setCurrentStauts(I)V

    const-string v3, "v1/partrevert.action"

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/utils/CalendarUtil;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;->toBytes()[B

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u5b50\u4e8b\u4ef6\u6062\u590d\u6570\u636e\u5df2\u4e0b\u8f7d"

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubEventRestoreStep.doAction download:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p0, "\u5b50\u4e8b\u4ef6\u6ca1\u6709\u9700\u8981\u6062\u590d\u7684\u6570\u636e"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "\u5b50\u4e8b\u4ef6\u6062\u590d\u8bf7\u6c42\u5f02\u5e38"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    const-string p1, "\u5b50\u4e8b\u4ef6\u6062\u590d\u8bf7\u6c42IO\u5f02\u5e38"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
.end method

.method public bridge synthetic doAction(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;

    move-result-object p0

    return-object p0
.end method

.method public doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .locals 7

    const-string v0, "LcpCalendarTask"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    const/16 v4, 0x7d1

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;->setCurrentStauts(I)V

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventChecksumBuilder;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventChecksumBuilder;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/ChecksumBuilder;->buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    const/16 v5, 0x7d2

    invoke-interface {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;->setCurrentStauts(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubEventRestoreStep.doCheckSum build checksum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v4, "v3/checksum.action"

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/utils/CalendarUtil;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;->toBytes()[B

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubEventRestoreStep.doCheckSum network:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public bridge synthetic doCheckSum()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;->doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object p0

    return-object p0
.end method

.method public handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    .locals 6

    const-string v0, "LcpCalendarTask"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    const/16 v4, 0x7d8

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;->setCurrentStauts(I)V

    :try_start_0
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncResponseHandler;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncResponseHandler;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->subListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;

    invoke-interface {v3, p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncResponseHandler;->handleRestoreResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubEventRestoreStep.handleResult save db:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "\u5b50\u4e8b\u4ef6\u5904\u7406\u6062\u590d\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    const-string p1, "\u5b50\u4e8b\u4ef6\u5904\u7406\u6062\u590d\u6570\u636eIO\u5f02\u5e38"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object p0

    return-object p0
.end method
