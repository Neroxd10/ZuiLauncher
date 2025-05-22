.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$DownEvent;
    }
.end annotation


# static fields
.field public static final APP_CATEGORY:Ljava/lang/String; = "appCategory"

.field public static final APP_KEY:Ljava/lang/String; = "appKey"

.field public static final RESTORE_CALLBACK:Ljava/lang/String; = "callback"

.field public static final RESTORE_INFO:Ljava/lang/String; = "restoreInfo"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;

.field private i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    return-object p0
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->h:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;

    return-object p0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "appKey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "appCategory"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "callback"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->h:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;

    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "restoreInfo"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    :cond_3
    return-void
.end method


# virtual methods
.method public getParams()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->cost:J

    const-string p0, "TASK_COST"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected notifySubProgress(F)V
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->progressStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    packed-switch v0, :pswitch_data_0

    const-string p0, "TrackableTask"

    const-string p1, "notifyStepProgress stepProgress paramter ERROR"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x42a00000    # 80.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr p1, v0

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    goto :goto_0

    :pswitch_3
    mul-float/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected startTask()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->start:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    const/16 v0, 0x65

    const v1, 0x7fffffff

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->f()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryLatestProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-nez v0, :cond_1

    const/16 v0, 0x6e

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->cost:J

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    return-void

    :cond_1
    const/16 v0, 0x66

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    move-result-object v0

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getAttachment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$a;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getAttachment()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getSize()J

    move-result-wide v4

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;Ljava/lang/String;J)V

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$DownEvent;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask$DownEvent;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->download2Proxy(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->h:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileRestoreTask;->i:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/RestoreProfileCallback;->callback(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;Ljava/io/InputStream;)V

    :goto_0
    const-string v0, "####"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->cost:J

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->cost:J

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    throw v0
.end method
