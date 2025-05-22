.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;
.source ""


# instance fields
.field private f:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

.field private g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

.field private h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method

.method private d()Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    const-string v1, "settingAppConfig"

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->buildAllSettingKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->close()V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->notifySubProgress(F)V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->getPackageFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    const-string v2, "application/zip"

    invoke-direct {p0, v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected notifySubProgress(F)V
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->progressStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    packed-switch v0, :pswitch_data_0

    const-string p0, "SettingBackupTask"

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

.method public startTask()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    const/16 v0, 0x65

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->d()Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->h:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    const-string v0, "####"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->close()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->removePackageFile()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v0, :cond_0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->close()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->removePackageFile()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    throw v0
.end method
