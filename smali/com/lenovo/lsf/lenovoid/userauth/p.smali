.class public Lcom/lenovo/lsf/lenovoid/userauth/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static i:Lcom/lenovo/lsf/lenovoid/userauth/p;


# instance fields
.field private a:Lcom/lenovo/lsf/account/service/e;

.field private b:Lcom/lenovo/lsf/account/service/b;

.field private c:Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;

.field private d:Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;

.field private volatile e:Z

.field private f:Lcom/lenovo/lsf/lenovoid/userauth/o;

.field private g:Landroid/content/Context;

.field private h:Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/lsf/lenovoid/userauth/n;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/lenovoid/userauth/n;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/p;)V

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->b:Lcom/lenovo/lsf/account/service/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->c:Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->e:Z

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->g:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lsf/lenovoid/userauth/p;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/lsf/lenovoid/userauth/p;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->g:Landroid/content/Context;

    return-object p1
.end method

.method public static declared-synchronized b()Lcom/lenovo/lsf/lenovoid/userauth/p;
    .locals 2

    const-class v0, Lcom/lenovo/lsf/lenovoid/userauth/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/lsf/lenovoid/userauth/p;->i:Lcom/lenovo/lsf/lenovoid/userauth/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-direct {v1}, Lcom/lenovo/lsf/lenovoid/userauth/p;-><init>()V

    sput-object v1, Lcom/lenovo/lsf/lenovoid/userauth/p;->i:Lcom/lenovo/lsf/lenovoid/userauth/p;

    :cond_0
    sget-object v1, Lcom/lenovo/lsf/lenovoid/userauth/p;->i:Lcom/lenovo/lsf/lenovoid/userauth/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/account/service/e;)Lcom/lenovo/lsf/account/service/e;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->a:Lcom/lenovo/lsf/account/service/e;

    return-object p1
.end method

.method static synthetic d(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/lenovoid/userauth/o;)Lcom/lenovo/lsf/lenovoid/userauth/o;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    return-object p1
.end method

.method private e(Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->a:Lcom/lenovo/lsf/account/service/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    iput-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->a:Lcom/lenovo/lsf/account/service/e;

    :cond_0
    iput-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->g:Landroid/content/Context;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    new-instance p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;-><init>()V

    invoke-virtual {p0, p2}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;->onResult(Lcom/lenovo/lsf/lenovoid/UkiInfo;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic f(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/lsf/lenovoid/userauth/p;->e(Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/lenovoid/userauth/o;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    return-object p0
.end method

.method static synthetic h(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/account/service/e;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->a:Lcom/lenovo/lsf/account/service/e;

    return-object p0
.end method

.method static synthetic i(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->h:Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;

    return-object p0
.end method

.method static synthetic j(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/account/service/b;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->b:Lcom/lenovo/lsf/account/service/b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    if-nez p5, :cond_0

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/lenovo/lsf/lenovoid/userauth/e;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p4, :cond_2

    const/4 p0, 0x0

    const-string p1, "USS-0x0305"

    invoke-interface {p4, p0, p1}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->d:Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;->onLogoutFinish()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/lenovo/lsf/lenovoid/userauth/p;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/lenovo/lsf/lenovoid/userauth/p;->i:Lcom/lenovo/lsf/lenovoid/userauth/p;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->e:Z

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->c:Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->c:Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->c:Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/c/a;->a()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, v1}, Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;->onInitFinish(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-boolean v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->e:Z

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/c/a;->b()Lcom/lenovo/lsf/lenovoid/c/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;->onInitFinish(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    new-instance v0, Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;

    invoke-direct {v0}, Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->c:Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LENOVOUSER_STATUS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->c:Lcom/lenovo/lsf/lenovoid/userauth/UserAuthManager$LogoutReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz p2, :cond_4

    invoke-interface {p2, v1}, Lcom/lenovo/lsf/lenovoid/OnInitFinishListener;->onInitFinish(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    const/4 p1, 0x0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;)V
    .locals 3

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->h:Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->a:Lcom/lenovo/lsf/account/service/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/lsf/lenovoid/userauth/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/lsf/lenovoid/userauth/o;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/lenovoid/userauth/m;)V

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.lsf.account.service.IUkiService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.lenovo.lsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->f:Lcom/lenovo/lsf/lenovoid/userauth/o;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "USS-0x0306"

    invoke-direct {p0, p2, p1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->e(Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->g:Landroid/content/Context;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->g:Landroid/content/Context;

    iget-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->a:Lcom/lenovo/lsf/account/service/e;

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->b:Lcom/lenovo/lsf/account/service/b;

    invoke-interface {p1, v0}, Lcom/lenovo/lsf/account/service/e;->a(Lcom/lenovo/lsf/account/service/b;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    const-string p1, "USS-0x1000"

    invoke-direct {p0, p2, p1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->e(Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    const-string p1, "USS-0x0305"

    invoke-direct {p0, p2, p1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->e(Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/lenovo/lsf/lenovoid/userauth/m;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/lenovo/lsf/lenovoid/userauth/m;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/p;Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V
    .locals 7

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->ONLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object p0

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/lenovo/lsf/lenovoid/userauth/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/lsf/lenovoid/userauth/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/p;->d:Lcom/lenovo/lsf/lenovoid/OnLogoutFinishListener;

    return-void
.end method

.method public b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;
    .locals 1

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.lenovo.lsf.account"

    invoke-static {p1, p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    const/4 p1, 0x2

    if-nez p0, :cond_0

    const-string p0, "SSOSingleUserAuth"

    const-string v0, "getStatus offline"

    invoke-static {p0, v0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->ONLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    :goto_1
    return-object p0

    :cond_2
    sget-object p0, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    return-object p0
.end method

.method public c(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/UkiInfo;
    .locals 4

    const-string v0, "UserAuthManager"

    new-instance v1, Lcom/lenovo/lsf/lenovoid/UkiInfo;

    invoke-direct {v1}, Lcom/lenovo/lsf/lenovoid/UkiInfo;-><init>()V

    sget-object v2, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->OFFLINE:Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const-string p0, "USS-0x0202"

    :goto_0
    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setErrorCode(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "content://com.lenovo.lsf.data.uki/uki"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v2, Lcom/lenovo/lsf/lenovoid/c/f;

    invoke-direct {v2}, Lcom/lenovo/lsf/lenovoid/c/f;-><init>()V

    invoke-virtual {v2, p0}, Lcom/lenovo/lsf/lenovoid/c/f;->a(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/lenovo/lsf/lenovoid/c/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setAlias(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/lsf/lenovoid/c/f;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setGender(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.lenovo.lsf.data.uki/avatar"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setAvatar(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "getUkiInfoCache other exception"

    goto :goto_1

    :catch_1
    const-string p0, "getUkiInfoCache File not found"

    :goto_1
    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/lenovoid/userauth/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/lenovo/lsf/lenovoid/c/f;

    invoke-direct {p1}, Lcom/lenovo/lsf/lenovoid/c/f;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/lsf/lenovoid/c/f;->c()V

    invoke-virtual {p1}, Lcom/lenovo/lsf/lenovoid/c/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setAlias(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lsf/lenovoid/c/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setGender(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.zuk/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/lenovo/lsf/lenovoid/UkiInfo;->setAvatar(Landroid/graphics/Bitmap;)V

    :goto_2
    return-object v1

    :cond_2
    const-string p0, "USS-0x0305"

    goto/16 :goto_0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string p0, "com.lenovo.lsf.account"

    invoke-static {p1, p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method
