.class final Lcom/amap/api/col/l3s/bh$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/bh;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/col/l3s/bh;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/bh;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    iput-object p2, p0, Lcom/amap/api/col/l3s/bh$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/bh;->a(Lcom/amap/api/col/l3s/bh;Ljava/lang/String;)Lcom/amap/api/col/l3s/bg;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v2, v0, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v2, v0, Lcom/amap/api/col/l3s/bg;->e:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v2}, Lcom/amap/api/col/l3s/bh;->a(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/bw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object v2, Lcom/amap/api/col/l3s/bh;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_4

    sget-object v2, Lcom/amap/api/col/l3s/bh;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3s/bh;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bg;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v1}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {p0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amap/api/col/l3s/bh$a;->b(Lcom/amap/api/col/l3s/bg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    const-string v0, "OfflineDownloadManager"

    const-string v2, "checkUpdatefinally"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v1}, Lcom/amap/api/col/l3s/bh;->b(Lcom/amap/api/col/l3s/bh;)V

    new-instance v1, Lcom/amap/api/col/l3s/bj;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v2}, Lcom/amap/api/col/l3s/bh;->c(Lcom/amap/api/col/l3s/bh;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amap/api/col/l3s/bh;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/col/l3s/bj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/cf;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/bi;

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v2}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v1}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    monitor-enter v1

    :try_start_4
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {p0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amap/api/col/l3s/bh$a;->b(Lcom/amap/api/col/l3s/bg;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    :try_start_5
    const-string v0, "OfflineDownloadManager"

    const-string v2, "checkUpdatefinally"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    monitor-exit v1

    goto :goto_5

    :catchall_3
    move-exception p0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_5
    :goto_5
    return-void

    :cond_6
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bi;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bh;->c()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v1}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    monitor-enter v1

    :try_start_7
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {p0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amap/api/col/l3s/bh$a;->b(Lcom/amap/api/col/l3s/bg;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p0

    :try_start_8
    const-string v0, "OfflineDownloadManager"

    const-string v2, "checkUpdatefinally"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    monitor-exit v1

    goto :goto_7

    :catchall_5
    move-exception p0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p0

    :cond_8
    :goto_7
    return-void

    :catchall_6
    move-exception v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v2}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    monitor-enter v2

    :try_start_9
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {p0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amap/api/col/l3s/bh$a;->b(Lcom/amap/api/col/l3s/bg;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p0

    :try_start_a
    const-string v0, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {p0, v0, v3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    monitor-exit v2

    goto :goto_9

    :catchall_8
    move-exception p0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    throw p0

    :cond_9
    :goto_9
    throw v1

    :catch_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {v1}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    monitor-enter v1

    :try_start_b
    iget-object p0, p0, Lcom/amap/api/col/l3s/bh$1;->b:Lcom/amap/api/col/l3s/bh;

    invoke-static {p0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bh;)Lcom/amap/api/col/l3s/bh$a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amap/api/col/l3s/bh$a;->b(Lcom/amap/api/col/l3s/bg;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception p0

    :try_start_c
    const-string v0, "OfflineDownloadManager"

    const-string v2, "checkUpdatefinally"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    monitor-exit v1

    goto :goto_b

    :catchall_a
    move-exception p0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    throw p0

    :cond_a
    :goto_b
    return-void
.end method
