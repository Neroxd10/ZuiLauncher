.class public Lcom/zui/quickstep/QuickstepProcessInitializer;
.super Lcom/zui/launcher/MainProcessInitializer;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/MainProcessInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-wide/32 v1, 0xfa00000

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setWatchHeapLimit(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string p0, "QuickstepProcessInitializer"

    const-string p1, "Disabling com.zui.launcher, unable to run in a managed profile"

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/zui/launcher/MainProcessInitializer;->init(Landroid/content/Context;)V

    sget p0, Lcom/android/systemui/shared/system/ThreadedRendererCompat;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/ThreadedRendererCompat;->setContextPriority(I)V

    return-void
.end method
