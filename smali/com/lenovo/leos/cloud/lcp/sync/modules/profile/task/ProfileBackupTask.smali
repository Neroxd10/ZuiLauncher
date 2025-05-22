.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;
.source ""


# static fields
.field public static final UPLOAD_ENTITY:Ljava/lang/String; = "uplaodEntity"


# instance fields
.field private f:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->PROFILE:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask;->f:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method

.method private d()Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v0, "uplaodEntity"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    return-object p0

    :cond_0
    return-object v1
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

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask;->d()Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    move-result-object v0

    if-nez v0, :cond_0

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

    :cond_0
    const/16 v2, 0x66

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileTaskAdapter;->setProgressStatus(I)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/profile/task/ProfileBackupTask;->f:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

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
