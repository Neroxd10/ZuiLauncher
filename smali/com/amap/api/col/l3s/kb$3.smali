.class final Lcom/amap/api/col/l3s/kb$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Lcom/amap/api/col/l3s/kb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/lg;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/amap/api/col/l3s/kb$a;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/lg;Landroid/content/Context;Lcom/amap/api/col/l3s/kb$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/kb$3;->a:Lcom/amap/api/col/l3s/lg;

    iput-object p2, p0, Lcom/amap/api/col/l3s/kb$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/col/l3s/kb$3;->c:Lcom/amap/api/col/l3s/kb$a;

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
    iget-object v1, p0, Lcom/amap/api/col/l3s/kb$3;->a:Lcom/amap/api/col/l3s/lg;

    iget-object v1, v1, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/kb$3;->a:Lcom/amap/api/col/l3s/lg;

    new-instance v2, Lcom/amap/api/col/l3s/lr;

    new-instance v9, Lcom/amap/api/col/l3s/lq;

    iget-object v4, p0, Lcom/amap/api/col/l3s/kb$3;->b:Landroid/content/Context;

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

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$3;->b:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x1

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$3;->b:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iy;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x2

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$3;->b:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iy;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x3

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$3;->b:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x4

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v10, v8, v3

    const/4 v3, 0x5

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$3;->b:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x6

    iget-object v10, p0, Lcom/amap/api/col/l3s/kb$3;->b:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3s/iu;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v3, 0x7

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v10, v8, v3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/col/l3s/lq;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/lu;Lcom/amap/api/col/l3s/kq;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v2, v9}, Lcom/amap/api/col/l3s/lr;-><init>(Lcom/amap/api/col/l3s/lu;)V

    iput-object v2, v1, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/kb$3;->a:Lcom/amap/api/col/l3s/lg;

    invoke-static {v1}, Lcom/amap/api/col/l3s/lh;->a(Lcom/amap/api/col/l3s/lg;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/kb$3;->c:Lcom/amap/api/col/l3s/kb$a;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/kb$3;->c:Lcom/amap/api/col/l3s/kb$a;

    invoke-interface {p0, v1}, Lcom/amap/api/col/l3s/kb$a;->a(I)V

    :cond_1
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
