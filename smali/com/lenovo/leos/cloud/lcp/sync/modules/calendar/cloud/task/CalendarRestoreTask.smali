.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask$a;
    }
.end annotation


# instance fields
.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getDefaultTrackType()Ljava/lang/String;
    .locals 0

    const-string p0, "V1_CALENDAR_RESTORE_DEFAULT_FINISH"

    return-object p0
.end method

.method protected startCalendarSupportTask()Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    const-string p0, "\u6682\u4e0d\u63d0\u4f9b\u5355\u72ec\u6062\u590d\u751f\u65e5\u4ee3\u529e\u4efb\u52a1"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

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
    .locals 3

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;->doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventRestoreStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v0

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opAdd:I

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opAddCount:I

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opDelete:I

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opUpdate:I

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opUpdateCount:I

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected startSubEventTask()V
    .locals 3

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/listener/SubTaskStepListener;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;->doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventRestoreStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v0

    iget v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
