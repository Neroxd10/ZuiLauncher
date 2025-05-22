.class Lcom/lenovo/lsf/lenovoid/userauth/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/lenovo/lsf/lenovoid/userauth/p;


# direct methods
.method private constructor <init>(Lcom/lenovo/lsf/lenovoid/userauth/p;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/lenovoid/userauth/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/lsf/lenovoid/userauth/o;-><init>(Lcom/lenovo/lsf/lenovoid/userauth/p;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {p2}, Lcom/lenovo/lsf/account/service/d;->a(Landroid/os/IBinder;)Lcom/lenovo/lsf/account/service/e;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/lenovo/lsf/lenovoid/userauth/p;->c(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/account/service/e;)Lcom/lenovo/lsf/account/service/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {p2}, Lcom/lenovo/lsf/lenovoid/userauth/p;->h(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/account/service/e;

    move-result-object p2

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->j(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/account/service/b;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/lenovo/lsf/account/service/e;->a(Lcom/lenovo/lsf/account/service/b;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    return-void

    :catch_0
    iget-object p2, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->i(Lcom/lenovo/lsf/lenovoid/userauth/p;)Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;

    move-result-object p0

    const-string v0, "USS-0x1000"

    invoke-static {p2, p0, v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->f(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/userauth/o;->a:Lcom/lenovo/lsf/lenovoid/userauth/p;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/lsf/lenovoid/userauth/p;->c(Lcom/lenovo/lsf/lenovoid/userauth/p;Lcom/lenovo/lsf/account/service/e;)Lcom/lenovo/lsf/account/service/e;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
