.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final ACTIVE_LISTEN_TIME:J = 0xea60L

.field public static final NETWORK_STATE_NOTFOUND:Ljava/lang/String; = "networknotfound"

.field public static final TAG:Ljava/lang/String; = "TaskNetworkKeeper"

.field private static e:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

.field private static f:Ljava/util/Observable;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$a;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$a;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->f:Ljava/util/Observable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->a:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->b:Ljava/lang/String;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$b;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d()Ljava/util/Observable;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->f:Ljava/util/Observable;

    return-object v0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "networknotfound"

    return-object p0
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    return-object v0
.end method


# virtual methods
.method public notifyTask()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized startActiveListen()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskNetworkKeeper"

    const-string v1, "try start active listen"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "TaskNetworkKeeper"

    const-string v1, "start active listen failed,is listenning"

    :goto_0
    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$c;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "TaskNetworkKeeper"

    const-string v1, "start active listen success"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startListen(Ljava/util/Observer;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskNetworkKeeper"

    const-string v1, "startListen"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->f:Ljava/util/Observable;

    invoke-virtual {v0}, Ljava/util/Observable;->countObservers()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->f:Ljava/util/Observable;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopListen(Ljava/util/Observer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskNetworkKeeper"

    const-string v1, "stopListen"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->f:Ljava/util/Observable;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->f:Ljava/util/Observable;

    invoke-virtual {p1}, Ljava/util/Observable;->countObservers()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitTask()V
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->startActiveListen()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
