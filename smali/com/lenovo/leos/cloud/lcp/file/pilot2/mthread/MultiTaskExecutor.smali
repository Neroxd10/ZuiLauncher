.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final READ_THEAD_COUNT:I = 0x3

.field private static final b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public readObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe<",
            "Ljava/io/Serializable;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;->loadOdometer(I)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->getThreadCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;

    invoke-direct {v4, p2, v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)V

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadTask;->setFuture(Ljava/util/concurrent/Future;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public readObjectInCurrentThread(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;)V
    .locals 0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;

    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/SingleReadTask;->call()V

    return-void
.end method

.method public writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->getThreadCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;

    invoke-direct {v3, p2, p3, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)V

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteTask;->setFuture(Ljava/util/concurrent/Future;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
