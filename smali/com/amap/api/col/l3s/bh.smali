.class public Lcom/amap/api/col/l3s/bh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/bh$a;,
        Lcom/amap/api/col/l3s/bh$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Z = false

.field public static d:Ljava/lang/String; = ""

.field private static volatile k:Lcom/amap/api/col/l3s/bh;


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/bg;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/amap/api/col/l3s/bh$b;

.field public f:Lcom/amap/api/col/l3s/bl;

.field g:Lcom/amap/api/col/l3s/bn;

.field h:Lcom/amap/api/col/l3s/bk;

.field private i:Landroid/content/Context;

.field private j:Z

.field private l:Lcom/amap/api/col/l3s/bh$a;

.field private m:Lcom/amap/api/col/l3s/bq;

.field private n:Lcom/amap/api/col/l3s/bw;

.field private o:Ljava/util/concurrent/ExecutorService;

.field private p:Ljava/util/concurrent/ExecutorService;

.field private q:Ljava/util/concurrent/ExecutorService;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bh;->j:Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->o:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->p:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->q:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->e:Lcom/amap/api/col/l3s/bh$b;

    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->h:Lcom/amap/api/col/l3s/bk;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bh;->r:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/bh;Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/bh;->g(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/bh;->k:Lcom/amap/api/col/l3s/bh;

    if-nez v0, :cond_1

    const-class v0, Lcom/amap/api/col/l3s/bh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/bh;->k:Lcom/amap/api/col/l3s/bh;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/amap/api/col/l3s/bh;->b:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/bh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/bh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amap/api/col/l3s/bh;->k:Lcom/amap/api/col/l3s/bh;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/api/col/l3s/bh;->k:Lcom/amap/api/col/l3s/bh;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bw;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->n:Lcom/amap/api/col/l3s/bw;

    return-object p0
.end method

.method private a(Lcom/amap/api/col/l3s/bg;Z)V
    .locals 10

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->g:Lcom/amap/api/col/l3s/bn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/bn;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bh;->g:Lcom/amap/api/col/l3s/bn;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    new-instance v8, Lcom/amap/api/col/l3s/ek;

    const-string v1, "AMapOfflineRemove"

    invoke-direct {v8, v1}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bh;->p:Ljava/util/concurrent/ExecutorService;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/l3s/bh$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/col/l3s/bh$2;-><init>(Lcom/amap/api/col/l3s/bh;Lcom/amap/api/col/l3s/bg;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "requestDelete"

    const-string p2, "removeExcecRunnable"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/amap/api/col/l3s/bh;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/bh;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bh;->g()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/bh;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->l:Lcom/amap/api/col/l3s/bh$a;

    return-object p0
.end method

.method private e(Lcom/amap/api/col/l3s/bg;)V
    .locals 10

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bh;->g()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->q:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    new-instance v8, Lcom/amap/api/col/l3s/ek;

    const-string v1, "AMapOfflineDownload"

    invoke-direct {v8, v1}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bh;->q:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/l3s/bh$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/bh$3;-><init>(Lcom/amap/api/col/l3s/bh;Lcom/amap/api/col/l3s/bg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "startDownload"

    const-string v0, "downloadExcecRunnable"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/bh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/bh;->j:Z

    return p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/bh;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bh;->j:Z

    return v0
.end method

.method private g(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    monitor-exit v1

    return-object v2

    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {p0, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private h(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v1

    return-object v2

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/bw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bh;->n:Lcom/amap/api/col/l3s/bw;

    :try_start_0
    const-string v1, "000001"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bw;->a(Ljava/lang/String;)Lcom/amap/api/col/l3s/br;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh;->n:Lcom/amap/api/col/l3s/bw;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/bw;->c(Ljava/lang/String;)V

    const-string v1, "100000"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bu;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->n:Lcom/amap/api/col/l3s/bw;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/bw;->a(Lcom/amap/api/col/l3s/br;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "changeBadCase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/bh$b;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3s/bh$b;-><init>(Lcom/amap/api/col/l3s/bh;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->e:Lcom/amap/api/col/l3s/bh$b;

    new-instance v0, Lcom/amap/api/col/l3s/bl;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/bl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    invoke-static {}, Lcom/amap/api/col/l3s/bq;->a()Lcom/amap/api/col/l3s/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bh;->m:Lcom/amap/api/col/l3s/bq;

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/bh;->a:Ljava/lang/String;

    :try_start_1
    const-string v0, ""

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ex;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "offlinemapv4.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    const-string v2, "offlinemapv4.png"

    invoke-static {v1, v2}, Lcom/amap/api/col/l3s/ce;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/amap/api/col/l3s/ce;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v1, :cond_5

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/amap/api/col/l3s/ce;->a(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/bl;->a(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    const-string v0, "MapDownloadManager"

    const-string v2, "paseJson io"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bl;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    new-instance v5, Lcom/amap/api/col/l3s/bg;

    iget-object v6, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/amap/api/col/l3s/bg;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    new-instance v0, Lcom/amap/api/col/l3s/bk;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/bk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bh;->h:Lcom/amap/api/col/l3s/bk;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final a(Lcom/amap/api/col/l3s/bg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/bh;->a(Lcom/amap/api/col/l3s/bg;Z)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/bh$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bh;->l:Lcom/amap/api/col/l3s/bh$a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/bh;->l:Lcom/amap/api/col/l3s/bh$a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->l:Lcom/amap/api/col/l3s/bh$a;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/amap/api/col/l3s/bh$a;->b(Lcom/amap/api/col/l3s/bg;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    new-instance v8, Lcom/amap/api/col/l3s/ek;

    const-string v1, "AMapOfflineCheckUpdate"

    invoke-direct {v8, v1}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bh;->o:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/l3s/bh$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/bh$1;-><init>(Lcom/amap/api/col/l3s/bh;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "OfflineDownloadManager"

    const-string v0, "checkUpdate"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->n:Lcom/amap/api/col/l3s/bw;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bw;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/br;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bu;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bu;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v1, Lcom/amap/api/col/l3s/bu;->l:I

    const/4 v3, 0x4

    const/4 v4, 0x7

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    if-ltz v2, :cond_1

    const/4 v2, 0x3

    iput v2, v1, Lcom/amap/api/col/l3s/bu;->l:I

    :cond_1
    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3s/bh;->g(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bu;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v5, Lcom/amap/api/col/l3s/bh;->d:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/amap/api/col/l3s/bh;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v4}, Lcom/amap/api/col/l3s/bg;->a(I)V

    goto :goto_1

    :cond_2
    iget v3, v1, Lcom/amap/api/col/l3s/bu;->l:I

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3s/bg;->a(I)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bu;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/amap/api/col/l3s/bh;->n:Lcom/amap/api/col/l3s/bw;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amap/api/col/l3s/bw;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/bg;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/bl;->a(Lcom/amap/api/col/l3s/bg;)V

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->l:Lcom/amap/api/col/l3s/bh$a;

    if-eqz p0, :cond_6

    :try_start_0
    invoke-interface {p0}, Lcom/amap/api/col/l3s/bh$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "OfflineDownloadManager"

    const-string v1, "verifyCallBack"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final b(Lcom/amap/api/col/l3s/bg;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->m:Lcom/amap/api/col/l3s/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->m:Lcom/amap/api/col/l3s/bq;

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/amap/api/col/l3s/bq;->a(Lcom/amap/api/col/l3s/bp;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/bh;->g(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected final c()V
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/col/l3s/bo;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/bo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/bo;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/cf;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/bl;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bl;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v4, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3s/bg;

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    sget-object v7, Lcom/amap/api/col/l3s/bh;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    sget-object v7, Lcom/amap/api/col/l3s/bh;->d:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/amap/api/col/l3s/bh;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/bg;->f()V

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/bg;->o()V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setCity(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/bg;->o()V

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setAdcode(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setSize(J)V

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setCode(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getJianpin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setJianpin(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setPinyin(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    return-void
.end method

.method public final c(Lcom/amap/api/col/l3s/bg;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->m:Lcom/amap/api/col/l3s/bq;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bq;->a(Lcom/amap/api/col/l3s/bp;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/bh;->g(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->l:Lcom/amap/api/col/l3s/bh$a;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/amap/api/col/l3s/bh$a;->c(Lcom/amap/api/col/l3s/bg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "OfflineDownloadManager"

    const-string v0, "remove"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bh;->c(Lcom/amap/api/col/l3s/bg;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/bh;->a(Lcom/amap/api/col/l3s/bg;Z)V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/bg;

    iget-object v3, v2, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v4, v2, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v4, v2, Lcom/amap/api/col/l3s/bg;->b:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/bh;->c(Lcom/amap/api/col/l3s/bg;)V

    iget-object v2, v2, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/ck;->e()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Lcom/amap/api/col/l3s/bg;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->m:Lcom/amap/api/col/l3s/bq;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/bq;->b(Lcom/amap/api/col/l3s/bp;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/bh;->g(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/bh;->e(Lcom/amap/api/col/l3s/bg;)V

    return-void

    :cond_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/bg;

    iget-object v2, v1, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v3, v1, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->e()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/bh;->h(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/bh;->e(Lcom/amap/api/col/l3s/bg;)V

    return-void

    :cond_0
    new-instance p0, Lcom/amap/api/maps/AMapException;

    const-string p1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, p1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/bh;->g(Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->o:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->q:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->h:Lcom/amap/api/col/l3s/bk;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->h:Lcom/amap/api/col/l3s/bk;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->h:Lcom/amap/api/col/l3s/bk;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->e:Lcom/amap/api/col/l3s/bh$b;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->e:Lcom/amap/api/col/l3s/bh$b;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->m:Lcom/amap/api/col/l3s/bq;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bq;->b()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bl;->g()V

    :cond_6
    sput-object v1, Lcom/amap/api/col/l3s/bh;->k:Lcom/amap/api/col/l3s/bh;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/l3s/bh;->b:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bh;->j:Z

    monitor-enter p0

    :try_start_0
    iput-object v1, p0, Lcom/amap/api/col/l3s/bh;->l:Lcom/amap/api/col/l3s/bh$a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
