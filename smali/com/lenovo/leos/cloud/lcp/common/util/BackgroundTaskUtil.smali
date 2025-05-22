.class public final Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

.field private static final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private static c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->a:Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->a:Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->a:Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public decreaseBackgroundTask()V
    .locals 1

    :try_start_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public getAtomicInteger()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    :try_start_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->c:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public getBackgroundTaskCount()I
    .locals 1

    :try_start_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public getReentrantLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public increaseBackgroundTask()V
    .locals 1

    :try_start_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/BackgroundTaskUtil;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
