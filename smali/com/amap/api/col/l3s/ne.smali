.class public final Lcom/amap/api/col/l3s/ne;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/ne$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcom/amap/api/col/l3s/ne;

.field private static h:Ljava/lang/Object;


# instance fields
.field private a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/ne$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/ne$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/ne$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/ne$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/ne;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ne;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ne;->f:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ne;->a:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ne;->b:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ne;->c:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ne;->d:Landroid/util/LongSparseArray;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/ne;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/ne;->g:Lcom/amap/api/col/l3s/ne;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/col/l3s/ne;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/ne;->g:Lcom/amap/api/col/l3s/ne;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/ne;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/ne;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/ne;->g:Lcom/amap/api/col/l3s/ne;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/col/l3s/ne;->g:Lcom/amap/api/col/l3s/ne;

    return-object v0
.end method

.method private static a(Landroid/util/LongSparseArray;J)S
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/ne$a;",
            ">;J)S"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3s/ne$a;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7fff

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/amap/api/col/l3s/ne$a;->b:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    int-to-short p2, p2

    iget-boolean p1, p1, Lcom/amap/api/col/l3s/ne$a;->c:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p1, p2

    int-to-short p2, p1

    :goto_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static a(Ljava/util/List;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/nd;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/ne$a;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/ne$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    if-nez v2, :cond_1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/col/l3s/nd;

    new-instance v2, Lcom/amap/api/col/l3s/ne$a;

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3s/ne$a;-><init>(B)V

    invoke-interface {p1}, Lcom/amap/api/col/l3s/nd;->b()I

    move-result v4

    iput v4, v2, Lcom/amap/api/col/l3s/ne$a;->a:I

    iput-wide v0, v2, Lcom/amap/api/col/l3s/ne$a;->b:J

    iput-boolean v3, v2, Lcom/amap/api/col/l3s/ne$a;->c:Z

    invoke-interface {p1}, Lcom/amap/api/col/l3s/nd;->a()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/nd;

    invoke-interface {v2}, Lcom/amap/api/col/l3s/nd;->a()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/col/l3s/ne$a;

    const/4 v7, 0x1

    if-nez v6, :cond_2

    new-instance v6, Lcom/amap/api/col/l3s/ne$a;

    invoke-direct {v6, v3}, Lcom/amap/api/col/l3s/ne$a;-><init>(B)V

    :goto_2
    invoke-interface {v2}, Lcom/amap/api/col/l3s/nd;->b()I

    move-result v2

    iput v2, v6, Lcom/amap/api/col/l3s/ne$a;->a:I

    iput-wide v0, v6, Lcom/amap/api/col/l3s/ne$a;->b:J

    iput-boolean v7, v6, Lcom/amap/api/col/l3s/ne$a;->c:Z

    goto :goto_3

    :cond_2
    iget v8, v6, Lcom/amap/api/col/l3s/ne$a;->a:I

    invoke-interface {v2}, Lcom/amap/api/col/l3s/nd;->b()I

    move-result v9

    if-eq v8, v9, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method final a(J)S
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ne;->a:Landroid/util/LongSparseArray;

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ne;->a(Landroid/util/LongSparseArray;J)S

    move-result p0

    return p0
.end method

.method final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/nd;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ne;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ne;->a:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ne;->b:Landroid/util/LongSparseArray;

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3s/ne;->a(Ljava/util/List;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ne;->a:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ne;->b:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/amap/api/col/l3s/ne;->a:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ne;->b:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method final b(J)S
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ne;->c:Landroid/util/LongSparseArray;

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ne;->a(Landroid/util/LongSparseArray;J)S

    move-result p0

    return p0
.end method

.method final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/nd;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ne;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/ne;->c:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/amap/api/col/l3s/ne;->d:Landroid/util/LongSparseArray;

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3s/ne;->a(Ljava/util/List;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/ne;->c:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ne;->d:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/amap/api/col/l3s/ne;->c:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ne;->d:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
