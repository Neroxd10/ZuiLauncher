.class Lcom/zui/launcher/DeferredHandler$c;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/DeferredHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DeferredHandler$c;->a:Lcom/zui/launcher/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/DeferredHandler;Lcom/zui/launcher/DeferredHandler$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DeferredHandler$c;-><init>(Lcom/zui/launcher/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/DeferredHandler$c;->a:Lcom/zui/launcher/DeferredHandler;

    invoke-static {p1}, Lcom/zui/launcher/DeferredHandler;->a(Lcom/zui/launcher/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/DeferredHandler$c;->a:Lcom/zui/launcher/DeferredHandler;

    invoke-static {v0}, Lcom/zui/launcher/DeferredHandler;->a(Lcom/zui/launcher/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DeferredHandler$c;->a:Lcom/zui/launcher/DeferredHandler;

    invoke-static {v0}, Lcom/zui/launcher/DeferredHandler;->a(Lcom/zui/launcher/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/zui/launcher/DeferredHandler$c;->a:Lcom/zui/launcher/DeferredHandler;

    invoke-static {p1}, Lcom/zui/launcher/DeferredHandler;->a(Lcom/zui/launcher/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/zui/launcher/DeferredHandler$c;->a:Lcom/zui/launcher/DeferredHandler;

    invoke-virtual {p0}, Lcom/zui/launcher/DeferredHandler;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public queueIdle()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DeferredHandler$c;->handleMessage(Landroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method
