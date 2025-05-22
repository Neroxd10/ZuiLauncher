.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;
.source ""


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellInterface;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->c()V

    return-void
.end method

.method private b()V
    .locals 3

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->c()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->useSU()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->setWantstDerr(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->setWatchdogTimeout(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->setMinimalLogging(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell$b;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->open(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    move-result-object p0

    sput-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    :goto_0
    return-void
.end method

.method private c()V
    .locals 4

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    const-string v1, "id"

    const-string v2, "date"

    const-string v3, "ls -l /"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell$a;

    invoke-direct {v2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->addCommand([Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->isIdle()Z

    :cond_0
    return-void
.end method

.method public runWaitFor(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;-><init>(Ljava/lang/Integer;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b()V

    :cond_0
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell$d;

    invoke-direct {p1, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell$d;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;)V

    invoke-virtual {v2, v0, v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->addCommand([Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->waitForIdle()Z

    aget-object p0, v1, v3

    return-object p0
.end method

.method public runWaitFor(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;-><init>(Ljava/lang/Integer;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b()V

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell$c;

    invoke-direct {v3, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/CommandResult;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->addCommand(Ljava/util/List;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->waitForIdle()Z

    aget-object p0, v0, v2

    return-object p0
.end method

.method public declared-synchronized shellUsable()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->a:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$SU;->available()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shell.SU is rooted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/RootShell;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
