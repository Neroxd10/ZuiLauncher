.class public Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;,
        Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private volatile e:I

.field private f:I

.field private g:I

.field private h:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;

.field private i:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->d:I

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->g:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->k:Ljava/lang/Object;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->i:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->k()V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->i()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    return p0
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    return p1
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->j()V

    return-void
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I

    return p0
.end method

.method static synthetic h(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->k:Ljava/lang/Object;

    return-object p0
.end method

.method private declared-synchronized i()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->i:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;->onProgress(II)V

    :cond_0
    return-void
.end method

.method private declared-synchronized k()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3e8

    if-gt v0, v1, :cond_1

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f:I

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->g:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    div-int v0, v2, v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->g:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    :goto_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a:I

    sub-int v1, v0, v1

    const/16 v2, 0x1e

    if-le v0, v2, :cond_4

    const-wide v3, 0x408f400000000000L    # 1000.0

    const-wide v5, 0x3ff19999a0000000L    # 1.100000023841858

    sub-int/2addr v0, v2

    int-to-double v7, v0

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    div-double/2addr v7, v9

    double-to-int v0, v7

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v0, v5

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->d:I

    :cond_4
    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c:I

    if-eq v1, v0, :cond_5

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c:I

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->d:I

    int-to-double v2, v0

    const-wide v4, 0x3ff4ccccc0000000L    # 1.2999999523162842

    int-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->h:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->h:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRealProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a:I

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->j:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->h:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->h:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->h:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitingForFinish()V
    .locals 6

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->setRealProgress(I)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->k:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x3

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    :try_start_0
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b:I

    if-ge v2, v0, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->k:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
