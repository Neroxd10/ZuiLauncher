.class public final Lcom/lenovo/cdnsdk/b/l;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source ""


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final e:Ljava/util/concurrent/ThreadFactory;

.field private static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/lenovo/cdnsdk/b/l;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/cdnsdk/b/l;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/cdnsdk/b/l;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/lenovo/cdnsdk/b/l;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/lenovo/cdnsdk/b/l$a;

    invoke-direct {v0}, Lcom/lenovo/cdnsdk/b/l$a;-><init>()V

    sput-object v0, Lcom/lenovo/cdnsdk/b/l;->e:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Lcom/lenovo/cdnsdk/b/l$b;

    invoke-direct {v0}, Lcom/lenovo/cdnsdk/b/l$b;-><init>()V

    sput-object v0, Lcom/lenovo/cdnsdk/b/l;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/lenovo/cdnsdk/b/l;->b:I

    invoke-direct {p0, v0}, Lcom/lenovo/cdnsdk/b/l;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 6

    sget v2, Lcom/lenovo/cdnsdk/b/l;->c:I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/util/concurrent/PriorityBlockingQueue;

    sget-object v0, Lcom/lenovo/cdnsdk/b/l;->f:Ljava/util/Comparator;

    const/16 v1, 0x32

    invoke-direct {v4, v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    sget-object v5, Lcom/lenovo/cdnsdk/b/l;->e:Ljava/util/concurrent/ThreadFactory;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/cdnsdk/b/l;-><init>(IILjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method private constructor <init>(IILjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    const-wide/16 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    instance-of v0, p1, Lcom/lenovo/cdnsdk/b/m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/lenovo/cdnsdk/b/m;

    sget-object v1, Lcom/lenovo/cdnsdk/b/l;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lenovo/cdnsdk/b/m;->b:J

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
