.class public Lcom/zui/quickstep/SysUINavigationMode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;,
        Lcom/zui/quickstep/SysUINavigationMode$Mode;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/quickstep/SysUINavigationMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/quickstep/x;->a:Lcom/zui/quickstep/x;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/SysUINavigationMode;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/zui/quickstep/SysUINavigationMode;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/zui/quickstep/SysUINavigationMode;->f()V

    iget-object p1, p0, Lcom/zui/quickstep/SysUINavigationMode;->a:Landroid/content/Context;

    new-instance v0, Lcom/zui/quickstep/SysUINavigationMode$a;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/SysUINavigationMode$a;-><init>(Lcom/zui/quickstep/SysUINavigationMode;)V

    const-string p0, "android.intent.action.OVERLAY_CHANGED"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v1, "android"

    invoke-static {v1, p0}, Lcom/zui/launcher/util/PackageManagerHelper;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/SysUINavigationMode;)Lcom/zui/quickstep/SysUINavigationMode$Mode;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/SysUINavigationMode;->b:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/quickstep/SysUINavigationMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/SysUINavigationMode;->f()V

    return-void
.end method

.method static synthetic c(Lcom/zui/quickstep/SysUINavigationMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/SysUINavigationMode;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/SysUINavigationMode;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;

    iget-object v2, p0, Lcom/zui/quickstep/SysUINavigationMode;->b:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    invoke-interface {v1, v2}, Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;->onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "integer"

    const-string v1, "android"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "SysUINavigationMode"

    const-string p1, "Failed to get system resource ID. Incompatible framework version?"

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/SysUINavigationMode;->a:Landroid/content/Context;

    const-string v1, "config_navBarInteractionMode"

    invoke-static {v0, v1}, Lcom/zui/quickstep/SysUINavigationMode;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeMode, modeInt==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysUINavigationMode"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/quickstep/SysUINavigationMode$Mode;->values()[Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lcom/zui/quickstep/SysUINavigationMode$Mode;->resValue:I

    if-ne v5, v0, :cond_0

    iput-object v4, p0, Lcom/zui/quickstep/SysUINavigationMode;->b:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static g(Ljava/lang/String;I)I
    .locals 17

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v1

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v5 .. v16}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    const-string v2, "android"

    move-object/from16 v3, p0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadResourceFromSystem, mode==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysUINavigationMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {p0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemGestureMode(Landroid/content/Context;)I
    .locals 4

    const-string v0, "config_navBarInteractionMode"

    invoke-static {p0, v0}, Lcom/zui/quickstep/SysUINavigationMode;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemGestureMode, modeInt==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysUINavigationMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0, p0}, Lcom/zui/quickstep/SysUINavigationMode;->g(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemGestureMode, loadResourceFromSystem failed==="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p0
.end method


# virtual methods
.method public addModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)Lcom/zui/quickstep/SysUINavigationMode$Mode;
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/SysUINavigationMode;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/zui/quickstep/SysUINavigationMode;->b:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-object p0
.end method

.method public attachNavBarInteractionMode()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/quickstep/SysUINavigationMode;->f()V

    const-string p0, "SysUINavigationMode"

    const-string v0, "attachNavBarInteractionMode END."

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/SysUINavigationMode;->b:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-object p0
.end method

.method public removeModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/SysUINavigationMode;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
