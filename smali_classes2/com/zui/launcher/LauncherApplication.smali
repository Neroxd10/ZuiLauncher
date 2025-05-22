.class public Lcom/zui/launcher/LauncherApplication;
.super Landroidx/multidex/MultiDexApplication;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static g:Landroid/content/Context;


# instance fields
.field private a:Z

.field private b:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Lcom/zui/launcher/SecureSettingObserver;

.field public dbBackupDir:Ljava/io/File;

.field private final e:Landroid/database/ContentObserver;

.field private f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherApplication;->a:Z

    new-instance v0, Lcom/zui/launcher/LauncherApplication$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherApplication$a;-><init>(Lcom/zui/launcher/LauncherApplication;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/zui/launcher/LauncherApplication$e;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/LauncherApplication$e;-><init>(Lcom/zui/launcher/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->e:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherApplication;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/LauncherApplication;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/LauncherApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherApplication;->f()V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/LauncherApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherApplication;->h()V

    return-void
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherApplication;->g:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 0

    return-void
.end method

.method private f()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->switchLayoutIfSettingsChanged(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------initWhenUserUnlocked--------cta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZuiLauncher"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherApplication;->g()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->init(Landroid/content/Context;)V

    invoke-static {p0, v2}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->init(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/BluePoint;->initData(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".dbBackup"

    invoke-virtual {p0, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/launcher/LauncherApplication;->dbBackupDir:Ljava/io/File;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/LauncherApplication;->dbBackupDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/XReaper;->initXReaper(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/zui/launcher/XReaper;->isXReaperEnable(Z)V

    invoke-static {}, Lcom/zui/launcher/Utilities;->getIsUserDebug()Z

    move-result v3

    invoke-static {v3, v2}, Lcom/zui/launcher/networksdk/LogUtil;->setDebug(ZLjava/lang/String;)V

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    invoke-static {p0}, Lcom/zui/launcher/util/SettingsValue;->initImportantValues(Landroid/content/Context;)V

    :cond_5
    if-nez v1, :cond_6

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/zui/launcher/LauncherApplication;->e()V

    new-instance v1, Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-direct {v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/LauncherApplication;->b:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    new-instance v2, Lcom/zui/launcher/LauncherApplication$b;

    invoke-direct {v2, p0}, Lcom/zui/launcher/LauncherApplication$b;-><init>(Lcom/zui/launcher/LauncherApplication;)V

    invoke-virtual {v1, p0, v2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->init(Landroid/content/Context;Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;)I

    :cond_6
    invoke-static {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->init(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/zui/launcher/LauncherApplication;->a:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zui/launcher/LauncherApplication;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherApplication;->a:Z

    :cond_7
    return-void
.end method

.method private g()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/LauncherApplication$c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-string v2, "user_setup_complete"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/zui/launcher/LauncherApplication$c;-><init>(Lcom/zui/launcher/LauncherApplication;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->d:Lcom/zui/launcher/SecureSettingObserver;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/zui/launcher/SecureSettingObserver;->setListening(Z)V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherApplication;->g:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/LauncherApplication;->d:Lcom/zui/launcher/SecureSettingObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/SecureSettingObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public static isDebugApp()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public getOAID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherApplication;->b:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->getOAID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeatherManager()Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    :cond_0
    invoke-static {}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getInstance()Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->setWeatherManager(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-object p0
.end method

.method public initCTAData()V
    .locals 2

    const-string v0, "ZuiLauncher"

    const-string v1, "---------LauncherApplication--initCTAData------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->init(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;)V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherApplication;->e()V

    new-instance v0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-direct {v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->b:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    new-instance v1, Lcom/zui/launcher/LauncherApplication$d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/LauncherApplication$d;-><init>(Lcom/zui/launcher/LauncherApplication;)V

    invoke-virtual {v0, p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->init(Landroid/content/Context;Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;)I

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "ZuiLauncher"

    const-string v1, "---------LauncherApplication--onCreate--------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherApplication;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_desktop_style"

    invoke-static {v1}, Lcom/zui/launcher/PermanentSettings$ExportSettings;->getContentUriForName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/LauncherApplication;->e:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/zui/launcher/LauncherApplication;->a:Z

    invoke-direct {p0}, Lcom/zui/launcher/LauncherApplication;->f()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherApplication;->a:Z

    iget-object v0, p0, Lcom/zui/launcher/LauncherApplication;->c:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result p0

    invoke-static {p0}, Lcom/zui/timelaweather/util/SpUtills;->saveIsDebug(Z)V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->onTerminate()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/XReaper;->onDestry(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/zui/launcher/LauncherApplication;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherApplication;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherApplication;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherApplication;->e:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherApplication;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------->unregisterWeatherDataListener---- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getInstance()Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-virtual {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    :cond_2
    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->release()V

    return-void
.end method

.method public rebindWeatherManager()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-static {}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->getInstance()Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/LauncherApplication;->f:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-virtual {v0, p0}, Lcom/zui/timelaweather/util/RefreshWeatherDataUtil;->setWeatherManager(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V

    return-void
.end method
