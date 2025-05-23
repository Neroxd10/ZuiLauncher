.class public Lcom/zui/launcher/SessionCommitReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final ADD_ICON_PREFERENCE_KEY:Ljava/lang/String; = "pref_add_icon_to_home"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/SessionCommitReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/zui/launcher/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.content.pm.extra.SESSION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.content.pm.action.SESSION_COMMITTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object p1, Lcom/zui/launcher/pm/InstallSessionHelper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/pm/InstallSessionHelper;->restoreDbIfApplicable(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zui/launcher/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding package name to install queue. Package name: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", has app icon: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", has app label: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SessionCommitReceiver"

    invoke-static {v2, p1}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/model/ItemInstallQueue;->queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->removePromiseIconId(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_add_icon_to_home"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/j2;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/j2;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
