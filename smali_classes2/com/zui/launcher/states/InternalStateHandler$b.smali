.class Lcom/zui/launcher/states/InternalStateHandler$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/states/InternalStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/states/InternalStateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/zui/launcher/MainThreadExecutor;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/states/InternalStateHandler$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/states/InternalStateHandler$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/states/InternalStateHandler;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Lcom/zui/launcher/Launcher;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/states/InternalStateHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/states/InternalStateHandler;->init(Lcom/zui/launcher/Launcher;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/states/InternalStateHandler$b;->a(Lcom/zui/launcher/states/InternalStateHandler;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public d(Lcom/zui/launcher/states/InternalStateHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->a:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->b:Lcom/zui/launcher/MainThreadExecutor;

    if-nez p1, :cond_0

    new-instance p1, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->b:Lcom/zui/launcher/MainThreadExecutor;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/zui/launcher/states/InternalStateHandler$b;->b:Lcom/zui/launcher/MainThreadExecutor;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/launcher/Launcher;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/states/InternalStateHandler$b;->c(Lcom/zui/launcher/Launcher;Z)Z

    return-void
.end method
