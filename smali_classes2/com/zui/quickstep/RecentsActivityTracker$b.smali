.class Lcom/zui/quickstep/RecentsActivityTracker$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/RecentsActivityTracker;
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
            "Lcom/zui/quickstep/RecentsActivityTracker;",
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

    iput-object v0, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/quickstep/RecentsActivityTracker$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsActivityTracker$b;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/zui/quickstep/RecentsActivityTracker;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/zui/quickstep/BaseRecentsActivity;Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/RecentsActivityTracker;

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2}, Lcom/zui/quickstep/RecentsActivityTracker;->b(Lcom/zui/quickstep/RecentsActivityTracker;Lcom/zui/quickstep/BaseRecentsActivity;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/zui/quickstep/RecentsActivityTracker;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->a:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->b:Lcom/zui/launcher/MainThreadExecutor;

    if-nez p1, :cond_0

    new-instance p1, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->b:Lcom/zui/launcher/MainThreadExecutor;

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/RecentsActivityTracker$b;->b:Lcom/zui/launcher/MainThreadExecutor;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 2

    invoke-static {}, Lcom/zui/quickstep/RecentsActivityTracker;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/BaseRecentsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/RecentsActivityTracker$b;->b(Lcom/zui/quickstep/BaseRecentsActivity;Z)Z

    :cond_0
    return-void
.end method
