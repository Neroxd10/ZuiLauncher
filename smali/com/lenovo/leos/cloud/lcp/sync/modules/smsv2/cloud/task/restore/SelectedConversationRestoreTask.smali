.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;
.source ""


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->h:Ljava/util/List;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->i:Ljava/util/List;

    return-void
.end method

.method private k(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V
    .locals 1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->hasSAdd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->hasDiff()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->mockProgress()V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->l(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V

    return-void
.end method

.method private l(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V
    .locals 5

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->getDefSmsRestoreRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->setProgressStep(I)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    const-string v2, "restore_add_start"

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->getSAdd()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    const-string v3, "restore_add_end"

    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batchRestoreSms2Db for server add timecost:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {v4, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->span(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time_span"

    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->setProgressStep(I)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    const-string v3, "restore_diff_start"

    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->getDiff()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;Lorg/json/JSONArray;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    const-string v0, "restore_diff_end"

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "batchRestoreSms2Db for diff timecost:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {v1, v3, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->span(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x6d

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->setProgressStep(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    return-void
.end method

.method private m(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;Lorg/json/JSONArray;)V
    .locals 6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->addRestoreBody(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->addRequestOffset(II)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getAllSms()Ljava/util/List;

    move-result-object v3

    move v4, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->isContinue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    add-int/2addr v4, v0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->addRestoreBody(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1, v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->addRequestOffset(II)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getAllSms()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->i:Ljava/util/List;

    invoke-virtual {p0, v3, p2, v1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->saveSms2Db(Ljava/util/List;Ljava/util/List;II)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->removeDate()V

    :cond_3
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private n(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->singleRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getResult()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u670d\u52a1\u5668\u8fd4\u56de\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method private o()V
    .locals 3

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->h:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "PROBLEM_GET_SMS_CONVERSATION"

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->h:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->h:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsManage;->queryConversation(II)Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->i:Ljava/util/List;

    if-nez v0, :cond_2

    const-string v0, "PROBLEM_GET_SMS_EXCLUDE_IDS"

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->i:Ljava/util/List;

    :cond_2
    return-void
.end method


# virtual methods
.method protected startTaskWithSmoothProgress()V
    .locals 7

    const-string v0, "processAfterRestore time cost:"

    const-string v1, "time_span"

    const-string v2, "process_end"

    const-string v3, "process_start"

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->o()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->checkWriteSmsPermission()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask$a;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;)V

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->h:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v4, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->startChecksumTask(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->k(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {v4, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->insertSmsAddressSet:Ljava/util/Set;

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask$b;

    invoke-direct {v5, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;)V

    invoke-static {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->processAfterRestore(Ljava/util/Set;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;)V

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {v4, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {p0, v3, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->span(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {v5, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->insertSmsAddressSet:Ljava/util/Set;

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask$b;

    invoke-direct {v6, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;)V

    invoke-static {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->processAfterRestore(Ljava/util/Set;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;)V

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {v5, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->record(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->timeRecorder:Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;

    invoke-virtual {p0, v3, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeSpan;->span(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v4
.end method
