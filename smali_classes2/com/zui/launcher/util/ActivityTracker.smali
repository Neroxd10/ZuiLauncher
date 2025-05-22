.class public final Lcom/zui/launcher/util/ActivityTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseActivity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/util/ActivityTracker;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/ActivityTracker;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private a(Lcom/zui/launcher/BaseActivity;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/util/ActivityTracker;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback;

    invoke-interface {v1, p1, p2}, Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback;->init(Lcom/zui/launcher/BaseActivity;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/ActivityTracker;->unregisterCallback(Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback;)V

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getCreatedActivity()Lcom/zui/launcher/BaseActivity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>()TR;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/util/ActivityTracker;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/BaseActivity;

    return-object p0
.end method

.method public handleCreate(Lcom/zui/launcher/BaseActivity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/util/ActivityTracker;->a:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/util/ActivityTracker;->a(Lcom/zui/launcher/BaseActivity;Z)Z

    move-result p0

    return p0
.end method

.method public handleNewIntent(Lcom/zui/launcher/BaseActivity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/util/ActivityTracker;->a(Lcom/zui/launcher/BaseActivity;Z)Z

    move-result p0

    return p0
.end method

.method public onActivityDestroyed(Lcom/zui/launcher/BaseActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/util/ActivityTracker;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/util/ActivityTracker;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/util/ActivityTracker;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BaseActivity;

    iget-object v1, p0, Lcom/zui/launcher/util/ActivityTracker;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback;->init(Lcom/zui/launcher/BaseActivity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/ActivityTracker;->unregisterCallback(Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/ActivityTracker$SchedulerCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/util/ActivityTracker;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
