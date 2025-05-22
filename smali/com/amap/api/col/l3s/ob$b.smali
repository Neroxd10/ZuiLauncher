.class final Lcom/amap/api/col/l3s/ob$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ob;

.field private b:I

.field private c:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ob;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3s/ob$b;->b:I

    iput p2, p0, Lcom/amap/api/col/l3s/ob$b;->b:I

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/l3s/ob;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/ob$b;-><init>(Lcom/amap/api/col/l3s/ob;I)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/amap/api/col/l3s/ob$b;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ob;->a(Lcom/amap/api/col/l3s/ob;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v2, "satellites"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-static {v0, v2}, Lcom/amap/api/col/l3s/pc;->a(Landroid/location/Location;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    iget-boolean v0, v0, Lcom/amap/api/col/l3s/ok;->r:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ok;->f()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ok;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v3, v3, Lcom/amap/api/col/l3s/ob;->c:Lcom/amap/api/col/l3s/oj;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/oj;->a()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/amap/api/col/l3s/mk$a;

    invoke-direct {v4}, Lcom/amap/api/col/l3s/mk$a;-><init>()V

    new-instance v5, Lcom/amap/api/col/l3s/no;

    invoke-direct {v5}, Lcom/amap/api/col/l3s/no;-><init>()V

    iget-object v6, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    iput v6, v5, Lcom/amap/api/col/l3s/nn;->i:F

    iget-object v6, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    iput-wide v6, v5, Lcom/amap/api/col/l3s/nn;->f:D

    iget-object v6, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v5, Lcom/amap/api/col/l3s/nn;->d:D

    iget-object v6, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getBearing()F

    move-result v6

    iput v6, v5, Lcom/amap/api/col/l3s/nn;->h:F

    iget-object v6, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v5, Lcom/amap/api/col/l3s/nn;->e:D

    iget-object v6, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v6

    iput-boolean v6, v5, Lcom/amap/api/col/l3s/nn;->j:Z

    iget-object v6, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/amap/api/col/l3s/nn;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getSpeed()F

    move-result v6

    iput v6, v5, Lcom/amap/api/col/l3s/nn;->g:F

    int-to-byte v2, v2

    iput-byte v2, v5, Lcom/amap/api/col/l3s/no;->l:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/amap/api/col/l3s/nn;->b:J

    iget-object v2, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/amap/api/col/l3s/nn;->c:J

    iget-object v2, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/amap/api/col/l3s/no;->k:J

    iput-object v5, v4, Lcom/amap/api/col/l3s/mk$a;->a:Lcom/amap/api/col/l3s/no;

    iput-object v0, v4, Lcom/amap/api/col/l3s/mk$a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ok;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/np;->a(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/amap/api/col/l3s/mk$a;->c:J

    :cond_5
    sget-wide v5, Lcom/amap/api/col/l3s/ok;->w:J

    iput-wide v5, v4, Lcom/amap/api/col/l3s/mk$a;->d:J

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/amap/api/col/l3s/mk$a;->f:J

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/iy;->p(Landroid/content/Context;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, v4, Lcom/amap/api/col/l3s/mk$a;->g:B

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/iy;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/amap/api/col/l3s/mk$a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->b:Lcom/amap/api/col/l3s/ok;

    iget-boolean v0, v0, Lcom/amap/api/col/l3s/ok;->q:Z

    iput-boolean v0, v4, Lcom/amap/api/col/l3s/mk$a;->e:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v0, v0, Lcom/amap/api/col/l3s/ob;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/pc;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/amap/api/col/l3s/mk$a;->j:Z

    iput-object v3, v4, Lcom/amap/api/col/l3s/mk$a;->i:Ljava/util/List;

    invoke-static {v4}, Lcom/amap/api/col/l3s/ng;->a(Lcom/amap/api/col/l3s/mk$a;)Lcom/amap/api/col/l3s/mm;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ob;->b(Lcom/amap/api/col/l3s/ob;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    invoke-static {v3}, Lcom/amap/api/col/l3s/ob;->b(Lcom/amap/api/col/l3s/ob;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ob;->b(Lcom/amap/api/col/l3s/ob;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/amap/api/col/l3s/ka;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/amap/api/col/l3s/ob$b;

    invoke-direct {v4, v0, v1}, Lcom/amap/api/col/l3s/ob$b;-><init>(Lcom/amap/api/col/l3s/ob;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ob;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    const-string v0, "cl"

    const-string v1, "coll"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    const/4 v0, 0x0

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amap/api/col/l3s/ob;->a(J)J

    iget-object v1, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v1, v1, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    iget-object v1, v1, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ma;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v3, v3, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    iget-object v3, v3, Lcom/amap/api/col/l3s/lg;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v3, v3, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    iget-wide v3, v3, Lcom/amap/api/col/l3s/lg;->b:J

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/l3s/kt;->a(Ljava/io/File;J)Lcom/amap/api/col/l3s/kt;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/amap/api/col/l3s/ob;->e()[B

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-nez v3, :cond_9

    :try_start_8
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/kt;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    return-void

    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object v4, v4, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    invoke-static {v0, v4, v1, v3}, Lcom/amap/api/col/l3s/ob;->a(Lcom/amap/api/col/l3s/kt;Lcom/amap/api/col/l3s/lg;Ljava/util/List;[B)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    iget-object p0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob;->e:Lcom/amap/api/col/l3s/lg;

    iget-object p0, p0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/ma;->a_(Z)V

    invoke-static {}, Lcom/amap/api/col/l3s/ng;->a()[B

    move-result-object p0

    invoke-static {}, Lcom/amap/api/col/l3s/jf;->c()[B

    move-result-object v2

    invoke-static {v3, p0, v2}, Lcom/amap/api/col/l3s/iz;->b([B[B[B)[B

    move-result-object p0

    invoke-static {v3}, Lcom/amap/api/col/l3s/ol;->a([B)[B

    move-result-object v2

    invoke-static {v2, p0, v4}, Lcom/amap/api/col/l3s/ng;->a([B[BLjava/util/List;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/jf;->b([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ng;->a([B)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ob;->a(Lcom/amap/api/col/l3s/kt;Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_1

    :cond_b
    :goto_0
    :try_start_a
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/kt;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    return-void

    :cond_c
    :goto_1
    if-eqz v0, :cond_d

    :try_start_b
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/kt;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    return-void

    :catchall_6
    move-exception p0

    :try_start_c
    const-string v1, "leg"

    const-string v2, "uts"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v0, :cond_d

    :try_start_d
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/kt;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    :cond_d
    return-void

    :catchall_8
    move-exception p0

    if-eqz v0, :cond_e

    :try_start_e
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/kt;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :catchall_9
    :cond_e
    throw p0

    :cond_f
    if-ne v0, v1, :cond_10

    iget-object p0, p0, Lcom/amap/api/col/l3s/ob$b;->a:Lcom/amap/api/col/l3s/ob;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ob;->c(Lcom/amap/api/col/l3s/ob;)V

    :cond_10
    return-void
.end method
