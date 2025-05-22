.class final Lcom/amap/api/col/l3s/lk$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/col/l3s/lj;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    iput p2, p0, Lcom/amap/api/col/l3s/lk$a;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/lj;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/lk$a;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/lk$a;->c:Lcom/amap/api/col/l3s/lj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/amap/api/col/l3s/lk$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :try_start_0
    const-class v0, Lcom/amap/api/col/l3s/lk;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/col/l3s/lk;->a()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/ln;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/l3s/lg;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    sget-object v5, Lcom/amap/api/col/l3s/jy;->i:Ljava/lang/String;

    sget v6, Lcom/amap/api/col/l3s/lk;->a:I

    const/high16 v7, 0x200000

    const-string v8, "6"

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/amap/api/col/l3s/ln;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, v2, Lcom/amap/api/col/l3s/lg;->e:Lcom/amap/api/col/l3s/kq;

    if-nez v3, :cond_0

    new-instance v3, Lcom/amap/api/col/l3s/kp;

    new-instance v4, Lcom/amap/api/col/l3s/kr;

    new-instance v5, Lcom/amap/api/col/l3s/ks;

    new-instance v6, Lcom/amap/api/col/l3s/kr;

    invoke-direct {v6}, Lcom/amap/api/col/l3s/kr;-><init>()V

    invoke-direct {v5, v6}, Lcom/amap/api/col/l3s/ks;-><init>(Lcom/amap/api/col/l3s/kq;)V

    invoke-direct {v4, v5}, Lcom/amap/api/col/l3s/kr;-><init>(Lcom/amap/api/col/l3s/kq;)V

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/kp;-><init>(Lcom/amap/api/col/l3s/kq;)V

    iput-object v3, v2, Lcom/amap/api/col/l3s/lg;->e:Lcom/amap/api/col/l3s/kq;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/lk$a;->c:Lcom/amap/api/col/l3s/lj;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/lj;->a()[B

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/amap/api/col/l3s/lh;->a(Ljava/lang/String;[BLcom/amap/api/col/l3s/lg;)V

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

    const-string v0, "ofm"

    const-string v1, "aple"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    :try_start_3
    invoke-static {}, Lcom/amap/api/col/l3s/lk;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ln;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/l3s/lg;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    sget-object v5, Lcom/amap/api/col/l3s/jy;->i:Ljava/lang/String;

    sget v6, Lcom/amap/api/col/l3s/lk;->a:I

    const/high16 v7, 0x200000

    const-string v8, "6"

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Lcom/amap/api/col/l3s/ln;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;IILjava/lang/String;)V

    const v3, 0xdbba00

    iput v3, v0, Lcom/amap/api/col/l3s/lg;->h:I

    iget-object v3, v0, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    if-nez v3, :cond_2

    new-instance v7, Lcom/amap/api/col/l3s/kp;

    new-instance v3, Lcom/amap/api/col/l3s/kr;

    new-instance v4, Lcom/amap/api/col/l3s/ks;

    invoke-direct {v4}, Lcom/amap/api/col/l3s/ks;-><init>()V

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/kr;-><init>(Lcom/amap/api/col/l3s/kq;)V

    invoke-direct {v7, v3}, Lcom/amap/api/col/l3s/kp;-><init>(Lcom/amap/api/col/l3s/kq;)V

    new-instance v3, Lcom/amap/api/col/l3s/lr;

    new-instance v10, Lcom/amap/api/col/l3s/lq;

    iget-object v5, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    new-instance v6, Lcom/amap/api/col/l3s/lv;

    invoke-direct {v6}, Lcom/amap/api/col/l3s/lv;-><init>()V

    new-instance v8, Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/amap/api/col/l3s/jv;->a(I)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    invoke-static {v12}, Lcom/amap/api/col/l3s/iu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    iget-object v11, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    invoke-static {v11}, Lcom/amap/api/col/l3s/iy;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v1

    iget-object v1, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iy;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3s/iy;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/amap/api/col/l3s/iy;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v2, v9, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v2, v9, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3s/iy;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3s/iu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v9, v1

    iget-object v1, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/iu;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3s/iu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/col/l3s/lq;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/lu;Lcom/amap/api/col/l3s/kq;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v3, v10}, Lcom/amap/api/col/l3s/lr;-><init>(Lcom/amap/api/col/l3s/lu;)V

    iput-object v3, v0, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    :cond_2
    iget-object v1, v0, Lcom/amap/api/col/l3s/lg;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "fKey"

    iput-object v1, v0, Lcom/amap/api/col/l3s/lg;->i:Ljava/lang/String;

    :cond_3
    new-instance v1, Lcom/amap/api/col/l3s/lz;

    iget-object v2, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    iget v3, v0, Lcom/amap/api/col/l3s/lg;->h:I

    iget-object v4, v0, Lcom/amap/api/col/l3s/lg;->i:Ljava/lang/String;

    new-instance v12, Lcom/amap/api/col/l3s/lx;

    iget-object v6, p0, Lcom/amap/api/col/l3s/lk$a;->b:Landroid/content/Context;

    sget-boolean v7, Lcom/amap/api/col/l3s/lk;->b:Z

    invoke-static {}, Lcom/amap/api/col/l3s/lk;->b()I

    move-result p0

    mul-int/lit16 v8, p0, 0x400

    sget p0, Lcom/amap/api/col/l3s/lk;->c:I

    mul-int/lit16 v9, p0, 0x400

    const-string v10, "offLocKey"

    sget p0, Lcom/amap/api/col/l3s/lk;->d:I

    mul-int/lit16 v11, p0, 0x400

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/amap/api/col/l3s/lx;-><init>(Landroid/content/Context;ZIILjava/lang/String;I)V

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/amap/api/col/l3s/lz;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/amap/api/col/l3s/ma;)V

    iput-object v1, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    invoke-static {v0}, Lcom/amap/api/col/l3s/lh;->a(Lcom/amap/api/col/l3s/lg;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    const-string v0, "ofm"

    const-string v1, "uold"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
