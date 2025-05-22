.class final Lcom/amap/api/col/l3s/kb$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/ma;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/col/l3s/ma;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/col/l3s/ma;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/kb$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3s/kb$2;->c:Lcom/amap/api/col/l3s/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    const-class v0, Lcom/amap/api/col/l3s/kb;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3s/kb;->a()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ln;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/l3s/lg;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/col/l3s/kb$2;->b:Ljava/lang/String;

    const/16 v5, 0x3e8

    const v6, 0x3e8000

    const-string v7, "1"

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/amap/api/col/l3s/ln;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/kb$2;->c:Lcom/amap/api/col/l3s/ma;

    iput-object v2, v1, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    iget-object v2, v1, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/col/l3s/lr;

    new-instance v9, Lcom/amap/api/col/l3s/lq;

    iget-object v4, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    new-instance v5, Lcom/amap/api/col/l3s/lv;

    invoke-direct {v5}, Lcom/amap/api/col/l3s/lv;-><init>()V

    new-instance v6, Lcom/amap/api/col/l3s/kp;

    new-instance v3, Lcom/amap/api/col/l3s/kr;

    new-instance v7, Lcom/amap/api/col/l3s/ks;

    invoke-direct {v7}, Lcom/amap/api/col/l3s/ks;-><init>()V

    invoke-direct {v3, v7}, Lcom/amap/api/col/l3s/kr;-><init>(Lcom/amap/api/col/l3s/kq;)V

    invoke-direct {v6, v3}, Lcom/amap/api/col/l3s/kp;-><init>(Lcom/amap/api/col/l3s/kq;)V

    const-string v7, "QImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJhZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMi"

    const/16 v3, 0x8

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x1

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iy;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x2

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iy;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x3

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x4

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v10, v8, v3

    const/4 v3, 0x5

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x6

    iget-object p0, p0, Lcom/amap/api/col/l3s/kb$2;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/iu;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v8, v3

    const/4 p0, 0x7

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v8, p0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/col/l3s/lq;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/lu;Lcom/amap/api/col/l3s/kq;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v2, v9}, Lcom/amap/api/col/l3s/lr;-><init>(Lcom/amap/api/col/l3s/lu;)V

    iput-object v2, v1, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    :cond_0
    const p0, 0x36ee80

    iput p0, v1, Lcom/amap/api/col/l3s/lg;->h:I

    invoke-static {v1}, Lcom/amap/api/col/l3s/lh;->a(Lcom/amap/api/col/l3s/lg;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    const-string v0, "lg"

    const-string v1, "pul"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
