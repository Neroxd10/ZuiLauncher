.class public Lcom/zui/launcher/util/ViewOnDrawExecutor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/zui/launcher/Launcher;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->attachTo(Lcom/zui/launcher/Launcher;Landroid/view/View;Z)V

    return-void
.end method

.method public attachTo(Lcom/zui/launcher/Launcher;Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    if-nez p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->e:Z

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->a()V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/LooperExecutor;->setThreadPriority(I)V

    return-void
.end method

.method protected isCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->d:Z

    return p0
.end method

.method public markCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->d:Z

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher;->clearPendingExecutor(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V

    :cond_1
    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->setThreadPriority(I)V

    return-void
.end method

.method public onDraw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->f:Z

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadAnimationCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->e:Z

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->a()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->b()V

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->runAllTasks()V

    :cond_0
    return-void
.end method

.method protected runAllTasks()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/ViewOnDrawExecutor;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->markCompleted()V

    return-void
.end method
