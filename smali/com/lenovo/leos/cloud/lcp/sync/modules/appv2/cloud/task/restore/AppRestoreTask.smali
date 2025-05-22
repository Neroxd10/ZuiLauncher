.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;
    }
.end annotation


# static fields
.field public static final APP_INSTALLER_CLOUD_INFO:Ljava/lang/String; = "APP_INSTALLER_CLOUD_INFO"

.field public static final APP_INSTALLER_RESULT_CODE:Ljava/lang/String; = "APP_INSTALLER_RESULT_CODE"

.field public static final PROBLEM_GET_APP_DATA_RESTORE_LIST:Ljava/lang/String; = "PROBLEM_GET_APP_DATA_RESTORE_LIST"

.field public static final PROBLEM_RETURN_INSTALL_STATE:Ljava/lang/String; = "PROBLEM_RETURN_INSTALL_STATE"

.field public static final RESOLVER_UNINSTALL_CLOUD_APP_INFO:Ljava/lang/String; = "RESOLVER_UNINSTALL_CLOUD_APP_INFO"

.field public static final RESOLVER_UNINSTALL_LOCAL_APP_INFO:Ljava/lang/String; = "RESOLVER_UNINSTALL_LOCAL_APP_INFO"

.field public static final RESOLVER_UNINSTALL_VERSION_CODE:Ljava/lang/String; = "RESOLVER_UNINSTALL_VERSION_CODE"

.field private static p:J = 0x62L


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:J

.field private l:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

.field private m:Z

.field private n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

.field private o:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app"

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/BreakpointFileUtil;->getBreakFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "restore"

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
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->l:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    return-void
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->o(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;J)V

    return-void
.end method

.method private f(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;
    .locals 6

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getZipedAppDataSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "app_restore_task:data down"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->i(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$b;

    invoke-direct {v5, p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app_restore_task:data down,time="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",result"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private g(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getDataurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->breakFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoretaskUtil;->getAppBreakpointFile(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->setCurrentRolledUri(Ljava/lang/String;)V

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getZipedAppDataSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;

    invoke-direct {v6, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    move-object v0, v7

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileOutputPipe;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {p2, v7}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->addPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->removePilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getZipedAppDataSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->resolveFailedResult(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;)I

    move-result p0

    return p0
.end method

.method private h(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;
    .locals 5

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->tryLoadDownloadedApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_restore_task:app down"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->j(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;

    invoke-direct {v4, p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->execute(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez p1, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_restore_task:app down, time="

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

    return-object p1
.end method

.method private i(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    return-object p0
.end method

.method private j(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->getApkFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    return-object p0
.end method

.method private k(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->k:J

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->previousDownloadedSize:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->updateProgressBundle(ZZ)V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoretaskUtil;->calculateSize(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->totalSize:J

    return-void
.end method

.method private m(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->operationStorage:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoretaskUtil;->checkHasEnoughMemory(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersionCode()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->t(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "app_restore_task:unInstallApp error"

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/io/File;)I

    move-result v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->p(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/io/File;)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->getFailedDataFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private n(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/io/File;)I
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "app_restore_task:apk install"

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->l:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->slientInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->progressBundle:Landroid/os/Bundle;

    const-string v4, "APP_INSTALLER_RESULT_CODE"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->recycleAppFileSpace(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notInstallCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notInstallCount:I

    move p1, v2

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "app_restore_task:apk install,time="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",result="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    return p1
.end method

.method private o(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;J)V
    .locals 6

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->checkThrowCancelException()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->o:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->previousDownloadedSize:J

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->k:J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->o:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->m:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->m:Z

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->previousDownloadedSize:J

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->k:J

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->previousDownloadedSize:J

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p0, p2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->updateProgressBundle(ZZ)V

    const-wide/16 p2, 0x63

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->updateProgressBundle(ZZ)V

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->currentSize:J

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->previousDownloadedSize:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->currentSize:J

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->previousDownloadedSize:J

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->k:J

    add-long/2addr p2, v0

    sget-wide v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->p:J

    mul-long/2addr p2, v0

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->j:J

    div-long/2addr p2, v0

    :goto_0
    long-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    return-void
.end method

.method private p(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/io/File;)V
    .locals 5

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getZipedAppDataSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "app_restore_task:restore data"

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->q(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_2

    const/16 p2, 0x10

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app_restore_task::restore data,time="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",result="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    :cond_3
    iget p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->r(ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private q(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->restoreDataFromSD(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->getFailedDataFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    return v0

    :cond_2
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p2, p1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->recycleDataFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Ljava/io/File;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->getFailedDataFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/16 p1, 0x2bb

    :goto_0
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    :goto_1
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method private r(ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "APP_INSTALLER_RESULT_CODE"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "APP_INSTALLER_CLOUD_INFO"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string p1, "PROBLEM_RETURN_INSTALL_STATE"

    invoke-interface {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private s()V
    .locals 8

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifyProgress(IIJ)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app_restore_task:info,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersionCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getZipedAppDataSize()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoretaskUtil;->getAppTotalSize(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->j:J

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->k(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->operationStorage:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoretaskUtil;->checkHasEnoughMemory(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    :goto_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfTotal:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifyProgress(IIJ)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->singleDownAndInstallAppData(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)V

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->appTaskDBUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->remove(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/util/AppChooserUtils;->removeApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    const/16 v5, 0x64

    invoke-virtual {p0, v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->countOfAdd:I

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private t(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->l:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->tryUnInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->u(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private u(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "RESOLVER_UNINSTALL_CLOUD_APP_INFO"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RESOLVER_UNINSTALL_LOCAL_APP_INFO"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TrackableTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string p1, "RESOLVER_UNINSTALL_VERSION_CODE"

    invoke-interface {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public appDownloadExecutor(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)I
    .locals 9

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->breakFilePath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0, p1, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoretaskUtil;->getAppBreakpointFile(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRollerUtil;->setCurrentRolledUri(Ljava/lang/String;)V

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;

    invoke-direct {v6, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getSize()J

    move-result-wide v3

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;

    invoke-direct {v7, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)V

    move-object v1, v0

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->n:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->addPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->removePilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getSize()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->realFlow:J

    return v8

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->resolveFailedResult(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;)I

    move-result p0

    return p0
.end method

.method protected getDefaultTrackType()Ljava/lang/String;
    .locals 0

    const-string p0, "V1_APP_RESTORE_DEFAULT_FINISH"

    return-object p0
.end method

.method protected initAppList(Ljava/util/List;)V
    .locals 2
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

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->i:Ljava/util/List;

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

    const-string v0, "APP_RESTORE"

    const-string v1, "APP_DATA_RESTORE"

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

.method protected singleDownAndInstallAppData(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->m:Z

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoretaskUtil;->needDownlaodApp(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;

    move-result-object v2

    :cond_0
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)Ljava/io/File;

    move-result-object v1

    :goto_0
    const-wide/16 v3, -0x1

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoretaskUtil;->needDownlaodApp(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getZipedAppDataSize()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    const-string v1, "app_restore_task: not need restore"

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    const/16 v1, 0x63

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    invoke-direct {p0, p1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->o(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;J)V

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->r(ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->o(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;J)V

    invoke-direct {p0, p1, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/io/File;Ljava/io/File;)V

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_1
.end method

.method protected startTask()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->start:J

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;I)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/AbsAppTask;->appTaskDBUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/persist/AppSelectIemDBUtil;->addCloudListAndDeleteOld(Ljava/util/List;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->networkExecutor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;

    sget v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->APP:I

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->justWifi(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->init(Z)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->l()V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppRestoreTask;->s()V

    return-void
.end method
