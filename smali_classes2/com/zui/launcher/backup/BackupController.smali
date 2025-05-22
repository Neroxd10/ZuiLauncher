.class public Lcom/zui/launcher/backup/BackupController;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lcom/zui/launcher/backup/IBackupController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/backup/BackupController$m;
    }
.end annotation


# static fields
.field public static final ACTION_FROM_ZUI_CLONE_BACKUP:Ljava/lang/String; = "com.lenovo.zui.clone.launcher.backup"

.field public static final ACTION_FROM_ZUI_CLONE_RESTORE:Ljava/lang/String; = "com.lenovo.zui.clone.launcher.restore"

.field public static final ACTION_RESTORE_TO_CLONE:Ljava/lang/String; = "com.zui.launcher.RESTORE_RESULT"

.field public static final ACTION_RESULT_TO_CLOUDSERVICE:Ljava/lang/String; = "com.zui.launcher.BACKUP_RESULT"

.field public static final EXTRA_ERR_MSG:Ljava/lang/String; = "errMsg"

.field public static final EXTRA_IS_BACKUP:Ljava/lang/String; = "backup"

.field public static final EXTRA_MD5:Ljava/lang/String; = "md5"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "success"

.field public static final PERMISSION_TO_CLOUDSERVICE:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.permission.COMMON_SERVICE_MANAGER"

.field public static final PERMISSION_TO_PC_LAUNCHER:Ljava/lang/String; = "com.zui.launcher.permission.SEND_MESSAGE"

.field public static final RESTORE_AUTODOWNLOAD_KEY:Ljava/lang/String; = "restore_autodownload"

.field public static final RESTORE_AUTODOWNLOAD_PACKAGES:Ljava/lang/String; = "restore_autodownload_packagenames"

.field public static final RESTORE_FIRSTLAUNCH_KEY:Ljava/lang/String; = "after_restore_success_firstlaunch"

.field public static final RESTORE_TRY_TIMES:Ljava/lang/String; = "restore_try_times"

.field public static final RESTORING_FLAG:Ljava/lang/String; = "is_restoring_by_others"

.field public static final RESULT_ERROR_NAME_NOT_FOUND:I = 0x2

.field public static final RESULT_ERROR_NO_NETWORK:I = 0x1

.field public static final RESULT_OK:I


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/io/File;

.field private i:Landroid/content/SharedPreferences;

.field private j:Landroid/content/SharedPreferences$Editor;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/backup/BackupController;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/zui/launcher/backup/BackupController;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->h:Ljava/io/File;

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->i:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->j:Landroid/content/SharedPreferences$Editor;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zui/launcher/backup/BackupController;->l:J

    iput-wide v0, p0, Lcom/zui/launcher/backup/BackupController;->m:J

    new-instance v0, Lcom/zui/launcher/backup/BackupController$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/backup/BackupController$b;-><init>(Lcom/zui/launcher/backup/BackupController;)V

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->n:Landroid/os/Handler;

    return-void
.end method

.method private A(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController;->readStData(Landroid/content/Context;)V

    sget-object v1, Lcom/zui/launcher/backup/AppUtil;->userAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/launcher/backup/BackupController;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileTime  fssId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";rid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "zui.zuk.com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";token:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";objectKey:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/launcher/backup/BackupController;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";filepath:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/launcher/backup/BackupController;->h:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BackupController"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/zui/fss/api/FssCloudApi;->getInstance(Landroid/content/Context;)Lcom/zui/fss/api/IFssApi;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/launcher/backup/BackupController;->g:Ljava/lang/String;

    new-instance v5, Lcom/zui/launcher/backup/BackupController$f;

    invoke-direct {v5, p0, p3, p1, p2}, Lcom/zui/launcher/backup/BackupController$f;-><init>(Lcom/zui/launcher/backup/BackupController;Ljava/lang/Runnable;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-interface/range {v0 .. v5}, Lcom/zui/fss/api/IFssApi;->getMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 2

    const-string v0, "backup_time"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->j:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private C(Landroid/content/Context;)I
    .locals 4

    const-string v0, "BackupController"

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/backup/BackupController;->D(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ServerAddress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/launcher/backup/AppUtil;->serverAddress:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "UserAppId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zui/launcher/backup/AppUtil;->userAppId:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "DeviceAppId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/launcher/backup/AppUtil;->deviceAppId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppUtil.serverAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zui/launcher/backup/AppUtil;->serverAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";AppUtil.userAppId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zui/launcher/backup/AppUtil;->userAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";AppUtil.deviceAppId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zui/launcher/backup/AppUtil;->deviceAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController;->readStData(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NameNotFoundException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x2

    return p0
.end method

.method private D(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController;->h:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".dbBackup"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dbBackupZip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/backup/BackupController;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/zui/launcher/backup/BackupController;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->g:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->h:Ljava/io/File;

    :cond_0
    return-void
.end method

.method private E(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/backup/BackupController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/backup/BackupController;->B(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/backup/BackupController;->A(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/backup/BackupController;->D(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/backup/BackupController;->x(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic h(Lcom/zui/launcher/backup/BackupController;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/backup/BackupController;->l:J

    return-wide v0
.end method

.method static synthetic i(Lcom/zui/launcher/backup/BackupController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/backup/BackupController;->l:J

    return-wide p1
.end method

.method static synthetic j(Lcom/zui/launcher/backup/BackupController;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/backup/BackupController;->m:J

    return-wide v0
.end method

.method static synthetic k(Lcom/zui/launcher/backup/BackupController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/backup/BackupController;->m:J

    return-wide p1
.end method

.method static synthetic l(Lcom/zui/launcher/backup/BackupController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->n:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lcom/zui/launcher/backup/BackupController;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->i:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic n(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/backup/BackupController;->z(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic o(Lcom/zui/launcher/backup/BackupController;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->j:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic p(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/backup/BackupController;->C(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic q(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/backup/BackupController;->y(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic s(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/backup/BackupController;->E(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic t(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/zui/launcher/backup/BackupController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic v(Lcom/zui/launcher/backup/BackupController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lcom/zui/launcher/backup/BackupController;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->h:Ljava/io/File;

    return-object p0
.end method

.method private x(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/backup/BackupTask;

    invoke-direct {v0, p1, p0}, Lcom/zui/launcher/backup/BackupTask;-><init>(Landroid/content/Context;Lcom/zui/launcher/backup/IBackupController;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "backupDatabase"

    aput-object v1, p0, p1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private y(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/backup/BackupController$h;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/backup/BackupController$h;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    new-instance v1, Lcom/zui/launcher/backup/BackupController$i;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/backup/BackupController$i;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    new-instance v2, Lcom/zui/launcher/backup/BackupController$j;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/zui/launcher/backup/BackupController$j;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private z(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/backup/BackupController$d;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/backup/BackupController$d;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    new-instance v1, Lcom/zui/launcher/backup/BackupController$e;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/backup/BackupController$e;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/backup/BackupController;->A(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public dataRestore(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/backup/BackupController;->dataRestore(Landroid/content/Context;Z)V

    return-void
.end method

.method public dataRestore(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/backup/BackupTask;

    invoke-direct {v0, p1, p0}, Lcom/zui/launcher/backup/BackupTask;-><init>(Landroid/content/Context;Lcom/zui/launcher/backup/IBackupController;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "restoreDatabase"

    aput-object v1, p0, p1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public doBackup(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/backup/BackupController;->doBackup(Landroid/content/Context;Z)V

    return-void
.end method

.method public doBackup(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/backup/BackupController$k;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/launcher/backup/BackupController$k;-><init>(Lcom/zui/launcher/backup/BackupController;ZLandroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public doRestore(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/backup/BackupController$g;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/backup/BackupController$g;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public doRestoreFromClone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/backup/BackupController$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/backup/BackupController$c;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getBackupTime(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/backup/BackupController$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/backup/BackupController$a;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected getReceiverFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.lenovo.leos.cloud.sync.launcher.backup"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.lenovo.leos.cloud.sync.launcher.restore"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.lenovo.leos.cloud.sync.launcher.get_time"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public getReceiverPermission()Ljava/lang/String;
    .locals 0

    const-string p0, "com.lenovo.leos.cloud.sync.permission.COMMON_SERVICE_MANAGER"

    return-object p0
.end method

.method public isRetoringByOthers(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "is_restoring_by_others"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "restore_try_times"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    move v0, v3

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/2addr v2, v3

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move p1, v0

    :cond_1
    return p1
.end method

.method public onProcessed(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/launcher/backup/BackupController;->sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/zui/launcher/BackupTools;->saveFirstFlag(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onProcessedForClone(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "com.zui.launcher.BACKUP_RESULT"

    goto :goto_0

    :cond_0
    const-string v0, "com.zui.launcher.RESTORE_RESULT"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "md5"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "backup"

    invoke-virtual {v1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p5, "errMsg"

    invoke-virtual {v1, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getClonePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zui/launcher/backup/BackupController;->getReceiverPermission()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1, p4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/backup/BackupController;->setRestoringFlag(Landroid/content/Context;Z)V

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/zui/launcher/BackupTools;->saveFirstFlag(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------->Backup--onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupController"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.lenovo.leos.cloud.sync.launcher.backup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController;->doBackup(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.lenovo.leos.cloud.sync.launcher.restore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/zui/launcher/backup/BackupController;->setRestoringFlag(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController;->doRestore(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.lenovo.leos.cloud.sync.launcher.get_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/backup/BackupController;->getBackupTime(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.lenovo.zui.clone.launcher.backup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/backup/BackupController;->doBackup(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    const-string v1, "com.lenovo.zui.clone.launcher.restore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v2}, Lcom/zui/launcher/backup/BackupController;->setRestoringFlag(Landroid/content/Context;Z)V

    const-string v0, "md5"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/backup/BackupController;->doRestoreFromClone(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public readStData(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zui/launcher/backup/BackupController;->D(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================>BackupController====>readStData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/backup/BackupController;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".....pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/backup/BackupController;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "zui.zuk.com"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/backup/BackupController;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=================>BackupController====>readStData okokok: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/backup/BackupController;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=================>BackupController====>readStData failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------->Backup--registerReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/backup/BackupController;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launcher/backup/BackupController;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/backup/BackupController;->getReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/backup/BackupController;->getReceiverPermission()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/backup/BackupController;->a:Z

    :cond_1
    return-void
.end method

.method public sendBackupProgress(Landroid/content/Context;JJ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.RETURN_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "progress"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "total_size"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zui/launcher/backup/BackupController;->getReceiverPermission()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-------->sendBackupProgress--progress: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  totalSize: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendResultToCloudService(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.BACKUP_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "backup"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "success"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.lenovo.leos.cloud.sync"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zui/launcher/backup/BackupController;->getReceiverPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/backup/BackupController;->setRestoringFlag(Landroid/content/Context;Z)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-------->sendResultToCloudService--errorMsg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  success: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " backup: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendTimeToCloudService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.RETURN_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "backup_time"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zui/launcher/backup/BackupController;->getReceiverPermission()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public setRestoringFlag(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "is_restoring_by_others"

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "restore_try_times"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/backup/BackupController;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/backup/BackupController;->a:Z

    :cond_0
    return-void
.end method

.method public uploadFile(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/backup/BackupController$l;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/backup/BackupController$l;-><init>(Lcom/zui/launcher/backup/BackupController;Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
