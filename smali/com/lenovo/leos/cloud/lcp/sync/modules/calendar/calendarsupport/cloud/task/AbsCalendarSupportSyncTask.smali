.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;


# static fields
.field public static final ONGOING_CHECKSUM:I = 0x3e9

.field public static final ONGOING_DOACTION:I = 0x3ea

.field public static final ONGOING_HANDLERESULT:I = 0x3eb

.field public static final STATUS_BEFORE_START:I = 0x0

.field public static final STATUS_END:I = 0x2710

.field public static final STATUS_ONGOING:I = 0x3e8

.field public static final STATUS_START:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LcpCalendarTask"


# instance fields
.field protected bNeedToSync:Z

.field private f:Ljava/util/concurrent/locks/Lock;

.field public stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->f:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->bNeedToSync:Z

    return-void
.end method

.method private d()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->persist(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportTaskCache;->clear()V

    return-void
.end method


# virtual methods
.method public get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getB(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public getForHttpResponse(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method protected notifyProgress(F)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    float-to-int p1, p1

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 p3, 0x0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iget p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/16 p3, 0x2710

    if-eq p2, p3, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x51

    goto :goto_1

    :pswitch_1
    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x1f

    goto :goto_1

    :pswitch_2
    const/high16 p2, 0x41f00000    # 30.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr p1, v0

    :goto_1
    int-to-float p1, p1

    goto :goto_2

    :pswitch_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->notifyProgress(F)V

    goto :goto_3

    :cond_1
    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->notifyProgress(F)V

    :goto_3
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setProgressStatus(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->onStepProgress(IILandroid/os/Bundle;)Z

    return-void
.end method

.method protected abstract startCalendarSupportTask()V
.end method

.method protected startTask()V
    .locals 8

    const-string v0, "\u6beb\u79d2"

    const-string v1, "===>\u540c\u6b65\u751f\u65e5\u63d0\u9192\u7ed3\u675f\uff0c\u8017\u65f6:"

    const-string v2, "LcpCalendarTask"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->taskInitAction()Z

    move-result v5

    iput-boolean v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->bNeedToSync:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->startCalendarSupportTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->d()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->taskFinishAction()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->d()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/task/AbsCalendarSupportSyncTask;->taskFinishAction()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method

.method protected taskFinishAction()V
    .locals 1

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    return-void
.end method

.method protected taskInitAction()Z
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/CalendarSupportUtils;->isSyncAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/privatedata/CalendarSupportDBHelper;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName()Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    return v2

    :catch_0
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return v1
.end method

.method public trackEvent()V
    .locals 7

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->getRootCauseException()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getTrackService()Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->trackType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getResult()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getTimeCost()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->getChangeNumber()I

    move-result v4

    const-string v5, ""

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackService;->tractExternalEvent(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
