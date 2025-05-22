.class Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field b:Z

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->a:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->a:Z

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->b:Z

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->b:Z

    const/16 v1, 0x64

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->a(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->b(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v2

    const/16 v3, 0x62

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v2

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->d(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;I)I

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v2

    if-le v2, v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v2

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v3

    :goto_1
    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->d(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;I)I

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->c(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    if-lt v0, v1, :cond_3

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->f(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->g(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    :goto_3
    :try_start_1
    monitor-exit v0

    goto :goto_0

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->d(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;I)I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->e(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->h(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$a;->c:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->h(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
