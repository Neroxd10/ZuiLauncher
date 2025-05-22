.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "com.lenovo.leos.cloud.sync.intent.ACTION_APP_INSTALL"

    invoke-static {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->isReceiverAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static varargs c([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "SerialUtil"

    const-string v2, "IOException"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "AppInstallerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    if-nez v0, :cond_0

    const/16 v0, -0x3e7

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    invoke-interface {v0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    const-string v1, "AppInstallerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appInstaller install result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v1, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "AppInstallerProxy"

    const-string v2, "LeSyncSlientAppInstaller create"

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    invoke-interface {v0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v2, "AppInstallerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeSyncSlientAppInstaller install result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->isRooted()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "AppInstallerProxy"

    const-string v2, "LeSyncRootAppInstaller create"

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncRootAppInstaller;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncRootAppInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    invoke-interface {v0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v2, "AppInstallerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeSyncRootAppInstaller install result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_2

    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "AppInstallerProxy"

    const-string v2, "LeStoreAppInstaller create"

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    invoke-interface {v0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string p1, "AppInstallerProxy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LeStoreAppInstaller install result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static requestAuth(Ljava/io/File;)V
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "chmod"

    aput-object v3, v1, v2

    const-string v4, "705"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v1, v6

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->c([Ljava/lang/String;)Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v1, "604"

    aput-object v1, v0, v5

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v6

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->c([Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public normalInstallApk(Landroid/content/Context;Ljava/io/File;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->slientInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->systemInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public slientInstallApk(Landroid/content/Context;Ljava/io/File;)I
    .locals 3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->requestAuth(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public systemInstallApk(Landroid/content/Context;Ljava/io/File;)I
    .locals 2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncNormalAppInstaller;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncNormalAppInstaller;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized tryLeStoreSlientInstall(Landroid/content/Context;Ljava/io/File;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x4

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->requestAuth(Ljava/io/File;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;

    invoke-direct {p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tryUnInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    invoke-interface {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;->unInstallApp(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    invoke-interface {v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;->unInstallApp(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AppInstallerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeSyncSlientAppInstaller unInstall result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootUtils;->isRooted()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "AppInstallerProxy"

    const-string v2, "LeSyncRootAppInstaller create"

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncRootAppInstaller;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncRootAppInstaller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;

    invoke-interface {v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;->unInstallApp(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "AppInstallerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeSyncRootAppInstaller Uninstall result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    return p1

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
