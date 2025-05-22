.class public Lcom/zui/launcher/pm/InstallSessionHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/pm/InstallSessionHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PROMISE_ICON_IDS:Ljava/lang/String; = "promise_icon_ids"


# instance fields
.field private final a:Landroid/content/pm/LauncherApps;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/pm/PackageInstaller;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/zui/launcher/util/IntSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/pm/f;->a:Lcom/zui/launcher/pm/f;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/pm/InstallSessionHelper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->c:Landroid/content/pm/PackageInstaller;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->b:Landroid/content/Context;

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->a:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method private a()Lcom/zui/launcher/util/IntSet;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertWorkerThread()V

    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->e:Lcom/zui/launcher/util/IntSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "promise_icon_ids"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/zui/launcher/util/IntArray;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/IntSet;->wrap(Lcom/zui/launcher/util/IntArray;)Lcom/zui/launcher/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->e:Lcom/zui/launcher/util/IntSet;

    new-instance v0, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v0}, Lcom/zui/launcher/util/IntArray;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/IntArray;->add(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v1}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->e:Lcom/zui/launcher/util/IntSet;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->e:Lcom/zui/launcher/util/IntSet;

    invoke-virtual {v3}, Lcom/zui/launcher/util/IntSet;->getArray()Lcom/zui/launcher/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->e:Lcom/zui/launcher/util/IntSet;

    invoke-virtual {v3}, Lcom/zui/launcher/util/IntSet;->getArray()Lcom/zui/launcher/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->e:Lcom/zui/launcher/util/IntSet;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntSet;->getArray()Lcom/zui/launcher/util/IntArray;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->e:Lcom/zui/launcher/util/IntSet;

    return-object p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->a()Lcom/zui/launcher/util/IntSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntSet;->getArray()Lcom/zui/launcher/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "promise_icon_ids"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private f(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->d:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/zui/launcher/util/PackageManagerHelper;

    iget-object v4, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/zui/launcher/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->d:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method b(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->c:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->f(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method c(Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->PROMISE_APPS_NEW_INSTALLS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding package name to install queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallSessionHelper"

    invoke-static {v1, v0}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/model/ItemInstallQueue;->queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->a()Lcom/zui/launcher/util/IntSet;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/IntSet;->add(I)V

    invoke-direct {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->e()V

    :cond_0
    return-void
.end method

.method d(Lcom/zui/launcher/pm/InstallSessionTracker;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->c:Landroid/content/pm/PackageInstaller;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->a:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->unregisterPackageInstallerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    :goto_0
    return-void
.end method

.method public getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/zui/launcher/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveSessions()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    new-instance v2, Lcom/zui/launcher/util/PackageUserKey;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/zui/launcher/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllVerifiedSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->a:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps;->getAllPackageInstallerSessions()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->c:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p0, v2}, Lcom/zui/launcher/pm/InstallSessionHelper;->f(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public promiseIconAddedForId(I)Z
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->a()Lcom/zui/launcher/util/IntSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public registerInstallTracker(Lcom/zui/launcher/pm/InstallSessionTracker$Callback;)Lcom/zui/launcher/pm/InstallSessionTracker;
    .locals 2

    new-instance v0, Lcom/zui/launcher/pm/InstallSessionTracker;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/pm/InstallSessionTracker;-><init>(Lcom/zui/launcher/pm/InstallSessionHelper;Lcom/zui/launcher/pm/InstallSessionTracker$Callback;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge p1, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->c:Landroid/content/pm/PackageInstaller;

    sget-object p1, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->a:Landroid/content/pm/LauncherApps;

    sget-object p1, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/LauncherApps;->registerPackageInstallerSessionCallback(Ljava/util/concurrent/Executor;Landroid/content/pm/PackageInstaller$SessionCallback;)V

    :goto_0
    return-object v0
.end method

.method public removePromiseIconId(I)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->a()Lcom/zui/launcher/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntSet;->getArray()Lcom/zui/launcher/util/IntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    invoke-direct {p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->e()V

    :cond_0
    return-void
.end method

.method public restoreDbIfApplicable(Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 0
    .param p1    # Landroid/content/pm/PackageInstaller$SessionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_DATABASE_RESTORE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    const/4 p1, 0x0

    return p1
.end method

.method public verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->f(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/util/PackageManagerHelper;

    iget-object v4, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/zui/launcher/util/PackageManagerHelper;->isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "InstallSessionHelper"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-boolean v6, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-direct {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->f(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v8

    if-ne v8, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x3

    if-nez v5, :cond_3

    const-string v3, "null"

    goto :goto_3

    :cond_3
    invoke-static {v5}, Lcom/zui/launcher/util/IOUtils;->toBase64String(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    aput-object v3, v6, v2

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/zui/launcher/util/PackageManagerHelper;

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionHelper;->b:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/zui/launcher/util/PackageManagerHelper;->isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v6, v1

    const-string p0, "Verifying session info. Valid: %b, Session verified: %b, Install reason valid: %b, App icon: %s, App label: %s, App installed: %b."

    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_4
    const-string p0, "Verifying session info failed: session info null."

    :goto_4
    invoke-static {v4, p0}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v0
.end method
