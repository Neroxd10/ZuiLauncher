.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APK_DATA_INSTALL_FAIL:I = 0x5

.field public static final APK_DATA_INSTALL_SUCCEED:I = 0x4

.field public static final APK_DATA_NOT_INSTALL:I = 0x3

.field public static final APK_INSTALLING:I = 0x6

.field public static final APK_INSTALL_FAIL:I = 0x2

.field public static final APK_INSTALL_SUCCEED:I = 0x1

.field public static final APK_NOT_INSTALL:I = 0x0

.field public static final APK_NOT_OPEN:I = 0x7

.field public static final CAN_USE_SDCARD:I = 0xa

.field public static final DISKFULL_SDCARD:I = 0x9

.field public static final FILE_ERROR:I = 0xb

.field public static final NO_SDCARD:I = 0x8


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

.field private c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->a:Landroid/content/Context;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/io/File;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->restoreDataFromSD(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/io/File;I)Z

    move-result p3

    if-nez p3, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/BackupUtils;->recycleDataFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public checkSpaceByDataFile(J)I
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->getSystemDefaultStorage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/16 p0, 0xb

    return p0

    :cond_1
    const-wide/32 v0, 0x1400000

    add-long/2addr p1, v0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->getStorageSize(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    const/16 p0, 0xa

    return p0
.end method

.method public installApkData(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;I)I
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->restoreAppData2SDCard(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public restoreAppData2SDCard(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getDataZipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getVersionCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p1, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/io/File;I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public slientInstallApk(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)I
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->asFile()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->a:Landroid/content/Context;

    invoke-virtual {v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->slientInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result p0

    :goto_0
    if-ne v1, p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public systemInstallApk(Ljava/io/File;)I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/InstallAppDataUtil;->a:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->systemInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result p0

    return p0
.end method
