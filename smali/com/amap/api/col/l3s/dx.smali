.class public abstract Lcom/amap/api/col/l3s/dx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/dx$b;,
        Lcom/amap/api/col/l3s/dx$a;,
        Lcom/amap/api/col/l3s/dx$c;,
        Lcom/amap/api/col/l3s/dx$e;,
        Lcom/amap/api/col/l3s/dx$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field private static final d:Ljava/util/concurrent/ThreadFactory;

.field private static final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/amap/api/col/l3s/dx$c;

.field private static volatile g:Ljava/util/concurrent/Executor;


# instance fields
.field private final h:Lcom/amap/api/col/l3s/dx$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/col/l3s/dx$a<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/amap/api/col/l3s/dx$1;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/dx$1;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/dx;->d:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/amap/api/col/l3s/dx;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/amap/api/col/l3s/dx;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/amap/api/col/l3s/dx;->d:Ljava/util/concurrent/ThreadFactory;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/amap/api/col/l3s/dx;->a:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/dx$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dx$d;-><init>(B)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/amap/api/col/l3s/ek;

    const-string v1, "AMapSERIAL_EXECUTOR"

    invoke-direct {v9, v1}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    :goto_0
    sput-object v0, Lcom/amap/api/col/l3s/dx;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/amap/api/col/l3s/ek;

    const-string v1, "AMapDUAL_THREAD_EXECUTOR"

    invoke-direct {v8, v1}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/amap/api/col/l3s/dx;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/amap/api/col/l3s/dx$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dx$c;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amap/api/col/l3s/dx;->f:Lcom/amap/api/col/l3s/dx$c;

    sget-object v0, Lcom/amap/api/col/l3s/dx;->b:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/amap/api/col/l3s/dx;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/amap/api/col/l3s/dx$e;->a:I

    iput v0, p0, Lcom/amap/api/col/l3s/dx;->j:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dx;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dx;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/amap/api/col/l3s/dx$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/dx$2;-><init>(Lcom/amap/api/col/l3s/dx;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dx;->h:Lcom/amap/api/col/l3s/dx$a;

    new-instance v0, Lcom/amap/api/col/l3s/dx$3;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dx;->h:Lcom/amap/api/col/l3s/dx$a;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/dx$3;-><init>(Lcom/amap/api/col/l3s/dx;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dx;->i:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/dx;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dx;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/dx;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dx;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/dx;)Ljava/util/concurrent/FutureTask;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dx;->i:Ljava/util/concurrent/FutureTask;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/dx;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dx;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/dx;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    sget-object v0, Lcom/amap/api/col/l3s/dx;->f:Lcom/amap/api/col/l3s/dx$c;

    new-instance v1, Lcom/amap/api/col/l3s/dx$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/amap/api/col/l3s/dx$b;-><init>(Lcom/amap/api/col/l3s/dx;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/dx;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dx;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dx;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/dx;->a(Ljava/lang/Object;)V

    :goto_0
    sget p1, Lcom/amap/api/col/l3s/dx$e;->c:I

    iput p1, p0, Lcom/amap/api/col/l3s/dx;->j:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/dx;->j:I

    return p0
.end method

.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/amap/api/col/l3s/dx<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/l3s/dx;->j:I

    sget v1, Lcom/amap/api/col/l3s/dx$e;->a:I

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/amap/api/col/l3s/dx$4;->a:[I

    iget v1, p0, Lcom/amap/api/col/l3s/dx;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot execute task: the task is already running."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget v0, Lcom/amap/api/col/l3s/dx$e;->b:I

    iput v0, p0, Lcom/amap/api/col/l3s/dx;->j:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/dx;->h:Lcom/amap/api/col/l3s/dx$a;

    iput-object p2, v0, Lcom/amap/api/col/l3s/dx$a;->b:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/amap/api/col/l3s/dx;->i:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/amap/api/col/l3s/dx<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/amap/api/col/l3s/dx;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/dx;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;

    move-result-object p0

    return-object p0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dx;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dx;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/dx;->i:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p0

    return p0
.end method
