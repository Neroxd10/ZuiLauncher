.class final Lcom/amap/api/col/l3s/li$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/li;->a(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/li$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/l3s/li$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-class v0, Lcom/amap/api/col/l3s/li;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/li$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/col/l3s/jf;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/jc;->a([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/l3s/li;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ln;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/l3s/lg;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/li$1;->b:Landroid/content/Context;

    sget-object v5, Lcom/amap/api/col/l3s/jy;->j:Ljava/lang/String;

    const/16 v6, 0x32

    const v7, 0x19000

    const-string v8, "10"

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/amap/api/col/l3s/ln;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, v2, Lcom/amap/api/col/l3s/lg;->e:Lcom/amap/api/col/l3s/kq;

    if-nez v3, :cond_0

    new-instance v3, Lcom/amap/api/col/l3s/kp;

    new-instance v4, Lcom/amap/api/col/l3s/ks;

    new-instance v5, Lcom/amap/api/col/l3s/kr;

    invoke-direct {v5}, Lcom/amap/api/col/l3s/kr;-><init>()V

    invoke-direct {v4, v5}, Lcom/amap/api/col/l3s/ks;-><init>(Lcom/amap/api/col/l3s/kq;)V

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/kp;-><init>(Lcom/amap/api/col/l3s/kq;)V

    iput-object v3, v2, Lcom/amap/api/col/l3s/lg;->e:Lcom/amap/api/col/l3s/kq;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "yyyyMMdd HH:mm:ss"

    invoke-static {v3, v4, v5}, Lcom/amap/api/col/l3s/jf;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " \"timestamp\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"details\":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/amap/api/col/l3s/li$1;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/jf;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/amap/api/col/l3s/lh;->a(Ljava/lang/String;[BLcom/amap/api/col/l3s/lg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string v1, "mam"

    const-string v2, "ap"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
