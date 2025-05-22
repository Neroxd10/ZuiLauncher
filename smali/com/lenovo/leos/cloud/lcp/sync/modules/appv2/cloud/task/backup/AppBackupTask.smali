.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$g;
    }
.end annotation


# static fields
.field public static final PROBLEM_GET_APP_DATA_BACKUP_LIST:Ljava/lang/String; = "PROBLEM_GET_APP_DATA_BACKUP_LIST"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

.field private l:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->n:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app"

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/BreakpointFileUtil;->getBreakFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->breakFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->breakFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->j:Ljava/util/List;

    return-void
.end method

.method private A(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppDataSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->calcAppSize(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->n:J

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->s(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Ljava/io/File;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->r(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    :cond_2
    return-void
.end method

.method private B()V
    .locals 4

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->D()V

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->C()V

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifyProgress(IIJ)V

    return-void
.end method

.method private C()V
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_backup_task:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getVersionCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->value()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getSize()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppDataSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->u()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->z(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const/16 v4, 0x64

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->p(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->A(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    return-void

    :cond_3
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->y(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    invoke-virtual {p0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifyProgress(IIJ)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->checkErrorResult()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->appTaskDBUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->j:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->addLocalListAndDeleteOld(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private D()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_backup_task:link start"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$c;

    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_backup_task:link end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",result="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private E(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)I
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;

    invoke-direct {v2, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->t(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare pilot time :"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v3, v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppBackupTask"

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->k:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->buildCallbackArgs(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->addPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->removePilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish upload pilot time :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->resolveFailedResult(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->k:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    return-object p1
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return p1
.end method

.method static synthetic g(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Ljava/util/List;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->l(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->E(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancelAllPilotFuture()V

    return-void
.end method

.method static synthetic k(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->x(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;JZ)V

    return-void
.end method

.method private l(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x2

    :try_start_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->buildAppLinkBody(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    const-string v2, "v3/applink"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppUtil;->getAppURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, v2, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "result"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    return v0
.end method

.method private m(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_backup_task:up app start"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$d;

    invoke-direct {v3, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$d;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_backup_task:up end="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",result="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private n(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)I
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->x(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;JZ)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->asFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->breakFilePath:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->getAppBreakpointFile(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;

    const/4 v4, 0x0

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;

    invoke-direct {v5, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->t(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadAPI;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadAPI;

    move-result-object v0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->buildUploadHeaders(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadAPI;->upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->addPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->removePilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->resolveFailedResult(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "app_backup_task: apk is null or not exists !"

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/String;)V

    const/16 p0, 0x8

    return p0
.end method

.method private o()V
    .locals 5

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifyProgress(IIJ)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_backup_task:checkSum start"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$b;

    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_backup_task:checkSum end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", result="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private p(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
    .locals 1

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->addErrorCode(I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->y(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return-void
.end method

.method private q(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
    .locals 6

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->updateProgressBundle(ZZ)V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->calcAppSize(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->getAppTotalSize(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)J

    move-result-wide v2

    const-wide/16 v4, 0x32

    mul-long/2addr v4, v0

    div-long/2addr v4, v2

    long-to-int v4, v4

    invoke-virtual {p0, p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v4, 0x62

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    return-void
.end method

.method private r(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/io/File;)V
    .locals 4

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_backup_task:up zip start"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$e;

    invoke-direct {v3, p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$e;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "app_backup_task:up zip="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    throw p0
.end method

.method private s(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Ljava/io/File;
    .locals 6

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->operationStorage:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->checkZipSpace(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x7

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "app_backup_task:zip start"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->start:J

    invoke-static {v0, p1, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->zipAppdata(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;J)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app_backup_task:zip end="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",result="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-object v1
.end method

.method private t(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$g;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$g;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$f;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$f;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;)V

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/TimeoutSupportListener;-><init>(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;JLcom/lenovo/leos/cloud/lcp/common/util/TimeoutGuard$TimeoutCallBackListener;)V

    return-object v0
.end method

.method private u()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->previousDownloadedSize:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->updateProgressBundle(ZZ)V

    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$a;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    return-void
.end method

.method private w()Z
    .locals 1

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private x(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;JZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->checkThrowCancelException()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->l:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->m:J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->l:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    :cond_0
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->n:J

    add-long v2, p2, v0

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->m:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->currentSize:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->currentSize:J

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    add-long v2, p2, v0

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->m:J

    add-long/2addr v0, p2

    const-wide/16 p2, 0x64

    mul-long/2addr v0, p2

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->getAppTotalSize(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)J

    move-result-wide p2

    div-long/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->updateProgressBundle(ZZ)V

    long-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    return-void
.end method

.method private y(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->appTaskDBUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->remove(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/util/AppChooserUtils;->removeApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    return-void
.end method

.method private z(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->q(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected getDefaultTrackType()Ljava/lang/String;
    .locals 0

    const-string p0, "V1_APP_BACKUP_DEFAULT_FINISH"

    return-object p0
.end method

.method protected initAppList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    move-object v1, v0

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->LOCAL_NEW_APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V

    :cond_0
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->totalSize:J

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTaskUtil;->getAppTotalSize(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->totalSize:J

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->checkListIsNull(Ljava/util/Collection;)V

    return-void
.end method

.method protected notifyFinish()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->cost:J

    sget v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->APP:I

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->restore(I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->release()V

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifyFinish()V

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    if-lez p0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UserSpaceUtil;->refreshUserSpace()V

    :cond_0
    return-void
.end method

.method protected setTrackFinishEventByData(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->trackType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppDataSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->trackType:Ljava/lang/String;

    const-string v0, "APP_BACKUP"

    const-string v1, "APP_DATA_BACKUP"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->trackType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected startTask()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->start:J

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->appTaskDBUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->addLocalListAndDeleteOld(Ljava/util/List;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    sget v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->APP:I

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->justWifi(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->init(Z)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->v()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->o()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppBackupTask;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->recycleThreadDir()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->recycleThreadDir()V

    throw v0
.end method
