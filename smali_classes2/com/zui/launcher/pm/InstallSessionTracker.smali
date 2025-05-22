.class public Lcom/zui/launcher/pm/InstallSessionTracker;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source ""


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/pm/InstallSessionTracker$Callback;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/zui/launcher/pm/InstallSessionHelper;

.field private final c:Lcom/zui/launcher/pm/InstallSessionTracker$Callback;


# direct methods
.method constructor <init>(Lcom/zui/launcher/pm/InstallSessionHelper;Lcom/zui/launcher/pm/InstallSessionTracker$Callback;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->a:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    iput-object p2, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->c:Lcom/zui/launcher/pm/InstallSessionTracker$Callback;

    return-void
.end method

.method private a()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->a:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/pm/b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/pm/b;-><init>(Lcom/zui/launcher/pm/InstallSessionTracker;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->a:Landroid/util/SparseArray;

    return-object p0
.end method

.method private c(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->b(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/util/PackageUserKey;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/zui/launcher/pm/InstallSessionTracker;->a()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->c:Lcom/zui/launcher/pm/InstallSessionTracker$Callback;

    invoke-interface {p0, v0, p1}, Lcom/zui/launcher/pm/InstallSessionTracker$Callback;->onUpdateSessionDisplay(Lcom/zui/launcher/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public synthetic b(Lcom/zui/launcher/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->a:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/pm/InstallSessionTracker;->c(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->c(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    :cond_0
    return-void
.end method

.method public onCreated(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/pm/InstallSessionTracker;->c(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->c(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void
.end method

.method public onFinished(IZ)V
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/pm/InstallSessionTracker;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/PackageUserKey;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    iget-object v3, v1, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/zui/launcher/pm/PackageInstallInfo;->fromState(ILjava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/pm/PackageInstallInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->c:Lcom/zui/launcher/pm/InstallSessionTracker$Callback;

    invoke-interface {v3, v2}, Lcom/zui/launcher/pm/InstallSessionTracker$Callback;->onPackageStateChanged(Lcom/zui/launcher/pm/PackageInstallInfo;)V

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->promiseIconAddedForId(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->c:Lcom/zui/launcher/pm/InstallSessionTracker$Callback;

    iget-object v1, v1, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-interface {p2, v0, v1}, Lcom/zui/launcher/pm/InstallSessionTracker$Callback;->onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->removePromiseIconId(I)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 0

    iget-object p2, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->b(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->c:Lcom/zui/launcher/pm/InstallSessionTracker$Callback;

    invoke-static {p1}, Lcom/zui/launcher/pm/PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/zui/launcher/pm/PackageInstallInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/zui/launcher/pm/InstallSessionTracker$Callback;->onPackageStateChanged(Lcom/zui/launcher/pm/PackageInstallInfo;)V

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/pm/InstallSessionTracker;->b:Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/pm/InstallSessionHelper;->d(Lcom/zui/launcher/pm/InstallSessionTracker;)V

    return-void
.end method
