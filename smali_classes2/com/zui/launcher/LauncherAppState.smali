.class public Lcom/zui/launcher/LauncherAppState;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_FORCE_ROLOAD:Ljava/lang/String; = "force-reload-launcher"

.field public static final HALO_DEFAULT_VIBRATION_DURATION:I = 0xd

.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/LauncherAppState;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINI_VIBRATION_DURATION:I = 0xf

.field public static final NANO_VIBRATION_DURATION:I = 0xa

.field public static final NORMAL_VIBRATION_DURATION:I = 0x19

.field private static l:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/zui/launcher/LauncherModel;

.field private final c:Lcom/zui/launcher/icons/IconProvider;

.field private final d:Lcom/zui/launcher/icons/IconCache;

.field private final e:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

.field private final f:Lcom/zui/launcher/InvariantDeviceProfile;

.field private final g:Lcom/zui/launcher/util/RunnableList;

.field private final h:Lcom/zui/launcher/util/SecureSettingsObserver;

.field private final i:Lcom/zui/launcher/LauncherContext;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/zui/vibrationsdk/DualVibrationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/t0;->a:Lcom/zui/launcher/t0;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/LauncherAppState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    const-string v0, "com.zui.dual.vibrator"

    sput-object v0, Lcom/zui/launcher/LauncherAppState;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/util/RunnableList;

    invoke-direct {v0}, Lcom/zui/launcher/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->g:Lcom/zui/launcher/util/RunnableList;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getLocalProvider(Landroid/content/Context;)Lcom/zui/launcher/LauncherProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher"

    const-string v1, "LauncherAppState initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iput-object p1, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/zui/launcher/LauncherAppState;->d()V

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile;

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->f:Lcom/zui/launcher/InvariantDeviceProfile;

    new-instance v0, Lcom/zui/launcher/icons/IconProvider;

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/zui/launcher/icons/IconProvider;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->c:Lcom/zui/launcher/icons/IconProvider;

    new-instance v0, Lcom/zui/launcher/icons/IconCache;

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launcher/LauncherAppState;->f:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/icons/IconCache;-><init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->d:Lcom/zui/launcher/icons/IconCache;

    new-instance v1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    iget-object v2, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;-><init>(Landroid/content/Context;Lcom/zui/launcher/icons/IconCache;)V

    iput-object v1, p0, Lcom/zui/launcher/LauncherAppState;->e:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    new-instance v0, Lcom/zui/launcher/LauncherModel;

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->d:Lcom/zui/launcher/icons/IconCache;

    iget-object v2, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/launcher/AppFilter;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/AppFilter;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/zui/launcher/LauncherModel;-><init>(Lcom/zui/launcher/LauncherAppState;Lcom/zui/launcher/icons/IconCache;Lcom/zui/launcher/AppFilter;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.RESTORE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.intent.action.THEME_ICON_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->enableAndResetCache()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->f:Lcom/zui/launcher/InvariantDeviceProfile;

    new-instance v1, Lcom/zui/launcher/s1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/s1;-><init>(Lcom/zui/launcher/LauncherAppState;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->addOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->f:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->verifyThemeChanged(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zui/launcher/t1;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/t1;-><init>(Lcom/zui/launcher/LauncherAppState;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/zui/launcher/pm/InstallSessionHelper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/pm/InstallSessionHelper;

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/pm/InstallSessionHelper;->registerInstallTracker(Lcom/zui/launcher/pm/InstallSessionTracker$Callback;)Lcom/zui/launcher/pm/InstallSessionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->g:Lcom/zui/launcher/util/RunnableList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/launcher/a2;

    invoke-direct {v2, v0}, Lcom/zui/launcher/a2;-><init>(Lcom/zui/launcher/pm/InstallSessionTracker;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/RunnableList;->add(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->h:Lcom/zui/launcher/util/SecureSettingsObserver;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    new-instance v1, Lcom/zui/launcher/p;

    invoke-direct {v1, p0}, Lcom/zui/launcher/p;-><init>(Lcom/zui/launcher/LauncherAppState;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/util/SecureSettingsObserver;->newNotificationSettingsObserver(Landroid/content/Context;Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;)Lcom/zui/launcher/util/SecureSettingsObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->h:Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {v0}, Lcom/zui/launcher/util/SecureSettingsObserver;->register()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->h:Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {v0}, Lcom/zui/launcher/util/SecureSettingsObserver;->dispatchOnChange()V

    :goto_0
    new-instance v0, Lcom/zui/launcher/LauncherContext;

    invoke-direct {v0, p1}, Lcom/zui/launcher/LauncherContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->i:Lcom/zui/launcher/LauncherContext;

    new-instance v0, Lcom/zui/vibrationsdk/DualVibrationHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zui/vibrationsdk/DualVibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->k:Lcom/zui/vibrationsdk/DualVibrationHelper;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Initializing LauncherAppState in the absence of LauncherProvider"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/zui/launcher/LauncherAppState;ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherAppState;->c(ILcom/zui/launcher/InvariantDeviceProfile;)V

    return-void
.end method

.method private c(ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const-string p1, "########LauncherAppState   onIdpChanged  forceReload icons #######"

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->debugThemeLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/icons/LauncherIcons;->clearPool()V

    iget-object p1, p0, Lcom/zui/launcher/LauncherAppState;->d:Lcom/zui/launcher/icons/IconCache;

    iget v0, p2, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {p1, v0, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->updateIconParams(II)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherAppState;->e:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->refresh()V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->forceReload()V

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.first_start_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------->restoreFirstTime------FirstLoad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "testBackup"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/launcher/DefaultConfigReader;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/DefaultConfigReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/DefaultConfigReader;->getConfigMap()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "current_layout_config_key"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=========>restoreFirstTime read noDataConfig: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "4x6"

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/zui/launcher/util/SettingsValue;->setCurrentLayoutConfigKey(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public static getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;
    .locals 1

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/InvariantDeviceProfile;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherAppState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/LauncherAppState;

    return-object p0
.end method

.method public static getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherAppState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppState;

    return-object v0
.end method

.method public static getLocalProvider(Landroid/content/Context;)Lcom/zui/launcher/LauncherProvider;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.zui.launcher.settings"

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zui.launcher.prefs"

    return-object v0
.end method


# virtual methods
.method public synthetic b(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->f:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->verifyConfigChangedInBackground(Landroid/content/Context;)V

    return-void
.end method

.method public cancelVibration()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->k:Lcom/zui/vibrationsdk/DualVibrationHelper;

    invoke-virtual {p0}, Lcom/zui/vibrationsdk/DualVibrationHelper;->cancelVibration()V

    return-void
.end method

.method public clearCache()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->d:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->clearCache()V

    return-void
.end method

.method public clearWidgetCache()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->e:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->refresh()V

    return-void
.end method

.method e(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherModel;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->j:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getLocalProvider(Landroid/content/Context;)Lcom/zui/launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/LauncherProvider;->setLauncherProviderChangeListener(Lcom/zui/launcher/LauncherProviderChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/LauncherModel;->initialize(Lcom/zui/launcher/LauncherModel$Callbacks;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    return-object p0
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->d:Lcom/zui/launcher/icons/IconCache;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getIconCache()Lcom/zui/launcher/icons/IconCache;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->d:Lcom/zui/launcher/icons/IconCache;

    return-object p0
.end method

.method public getIconProvider()Lcom/zui/launcher/icons/IconProvider;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->c:Lcom/zui/launcher/icons/IconProvider;

    return-object p0
.end method

.method public getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->f:Lcom/zui/launcher/InvariantDeviceProfile;

    return-object p0
.end method

.method public getLauncher()Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->j:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLauncherContext()Lcom/zui/launcher/LauncherContext;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->i:Lcom/zui/launcher/LauncherContext;

    return-object p0
.end method

.method public getModel()Lcom/zui/launcher/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    return-object p0
.end method

.method public getModelWriter()Lcom/zui/launcher/model/ModelWriter;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/launcher/LauncherModel;->getWriter(ZZ)Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    return-object p0
.end method

.method public getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->e:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    return-object p0
.end method

.method public hasDualVibrator()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->k:Lcom/zui/vibrationsdk/DualVibrationHelper;

    invoke-virtual {p0}, Lcom/zui/vibrationsdk/DualVibrationHelper;->hasDualVibrator()Z

    move-result p0

    return p0
.end method

.method public hasDualVibratorForHalo()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherAppState;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onNotificationSettingsChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    const-class v0, Lcom/zui/launcher/notification/NotificationListener;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->requestRebind(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/zui/launcher/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->h:Lcom/zui/launcher/util/SecureSettingsObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/util/SecureSettingsObserver;->unregister()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherAppState;->j:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->g:Lcom/zui/launcher/util/RunnableList;

    invoke-virtual {p0}, Lcom/zui/launcher/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public refreshAndReloadLauncher()V
    .locals 3

    invoke-static {}, Lcom/zui/launcher/icons/LauncherIcons;->clearPool()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->d:Lcom/zui/launcher/icons/IconCache;

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppState;->f:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v2, v1, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->updateIconParams(II)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->forceReload()V

    return-void
.end method

.method public resetData(Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/icons/LauncherIcons;->clearPool()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->d:Lcom/zui/launcher/icons/IconCache;

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->updateIconParams(II)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherAppState;->e:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->refresh()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->b:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->stopLoaderAndRest()V

    return-void
.end method

.method public startDualVibratorForHalo(I)V
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/LauncherAppState;->startDualVibratorForHalo(II)V

    return-void
.end method

.method public startDualVibratorForHalo(II)V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    int-to-long v1, p1

    const/4 p1, 0x2

    aput-wide v1, v0, p1

    const/4 p1, 0x3

    aput-wide v1, v0, p1

    int-to-long p1, p2

    const/4 v1, 0x4

    aput-wide p1, v0, v1

    const/4 v1, 0x5

    aput-wide p1, v0, v1

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppState;->a:Landroid/content/Context;

    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public startVibrationOrFail(IIIZ)Z
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->k:Lcom/zui/vibrationsdk/DualVibrationHelper;

    const/4 v1, 0x2

    const/4 v8, -0x1

    move v2, p1

    move v3, p1

    move v4, p2

    move v5, p2

    move v6, p3

    move v7, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/zui/vibrationsdk/DualVibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method public startVibrationOrFail(IIZ)Z
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppState;->k:Lcom/zui/vibrationsdk/DualVibrationHelper;

    const/4 v1, 0x2

    const/4 v6, -0x1

    move v2, p1

    move v3, p1

    move v4, p2

    move v5, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/zui/vibrationsdk/DualVibrationHelper;->startVibrationOrFail(IIIIIIZ)Z

    move-result p0

    return p0
.end method

.method public startVibrationOrFail(IZ)Z
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IIZ)Z

    move-result p0

    return p0
.end method
