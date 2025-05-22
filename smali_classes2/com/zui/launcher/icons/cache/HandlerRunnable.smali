.class public Lcom/zui/launcher/icons/cache/HandlerRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Runnable;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v5, Lcom/zui/launcher/icons/cache/d;->a:Lcom/zui/launcher/icons/cache/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->f:Z

    iput-boolean v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->g:Z

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->b:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->d:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->d:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/icons/cache/HandlerRunnable;->onEnd()V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->g:Z

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->c:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zui/launcher/icons/cache/a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/icons/cache/a;-><init>(Lcom/zui/launcher/icons/cache/HandlerRunnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->g:Z

    return p0
.end method

.method public onEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->f:Z

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->e:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->b:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/HandlerRunnable;->c:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/zui/launcher/icons/cache/c;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/icons/cache/c;-><init>(Lcom/zui/launcher/icons/cache/HandlerRunnable;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
