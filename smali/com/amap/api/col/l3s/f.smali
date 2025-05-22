.class public final Lcom/amap/api/col/l3s/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/amap/api/col/l3s/e;

.field b:Landroid/content/Context;

.field c:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    iput-object v0, p0, Lcom/amap/api/col/l3s/f;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/col/l3s/f;->c:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/f;->b:Landroid/content/Context;

    new-instance p1, Lcom/amap/api/col/l3s/e;

    iget-object v0, p0, Lcom/amap/api/col/l3s/f;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3s/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    const-string v1, "a"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/amap/api/col/l3s/e;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3s/iv;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v1, "b"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iu;->a(Ljava/lang/String;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/amap/api/col/l3s/iy;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    const-string v1, "as"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/amap/api/col/l3s/e;->d:Lcom/amap/api/col/l3s/e$a;

    if-eqz p1, :cond_2

    const/16 v0, 0x9

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    new-instance p1, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    iget-object v0, v0, Lcom/amap/api/col/l3s/e;->d:Lcom/amap/api/col/l3s/e$a;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/f;->c:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/e;->d()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/col/l3s/e;->j:J

    iget-object v0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    invoke-static {}, Lcom/amap/api/col/l3s/pc;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/col/l3s/e;->k:J

    iget-object p0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ApsServiceCore"

    const-string v1, "onCreate"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/f;->a:Lcom/amap/api/col/l3s/e;

    iget-object p0, p0, Lcom/amap/api/col/l3s/e;->d:Lcom/amap/api/col/l3s/e$a;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ApsServiceCore"

    const-string v1, "onDestroy"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
