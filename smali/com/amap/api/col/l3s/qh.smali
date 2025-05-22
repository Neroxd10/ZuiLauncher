.class public final Lcom/amap/api/col/l3s/qh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/qh$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcom/amap/api/col/l3s/qh;

.field private static h:Ljava/lang/Object;


# instance fields
.field private a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/qh$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/qh$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/qh$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/amap/api/col/l3s/qh$a;",
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

    sput-object v0, Lcom/amap/api/col/l3s/qh;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qh;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qh;->f:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qh;->a:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qh;->b:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qh;->c:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qh;->d:Landroid/util/LongSparseArray;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/qh;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/qh;->g:Lcom/amap/api/col/l3s/qh;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/col/l3s/qh;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/qh;->g:Lcom/amap/api/col/l3s/qh;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/qh;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/qh;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/qh;->g:Lcom/amap/api/col/l3s/qh;

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
    sget-object v0, Lcom/amap/api/col/l3s/qh;->g:Lcom/amap/api/col/l3s/qh;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/qg;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/qh;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/qh;->a:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/amap/api/col/l3s/qh;->b:Landroid/util/LongSparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/qg;

    new-instance v5, Lcom/amap/api/col/l3s/qh$a;

    invoke-direct {v5, v6}, Lcom/amap/api/col/l3s/qh$a;-><init>(B)V

    invoke-interface {v1}, Lcom/amap/api/col/l3s/qg;->b()I

    move-result v7

    iput v7, v5, Lcom/amap/api/col/l3s/qh$a;->a:I

    iput-wide v3, v5, Lcom/amap/api/col/l3s/qh$a;->b:J

    iput-boolean v6, v5, Lcom/amap/api/col/l3s/qh$a;->c:Z

    invoke-interface {v1}, Lcom/amap/api/col/l3s/qg;->a()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3s/qg;

    invoke-interface {v5}, Lcom/amap/api/col/l3s/qg;->a()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/col/l3s/qh$a;

    const/4 v10, 0x1

    if-nez v9, :cond_2

    new-instance v9, Lcom/amap/api/col/l3s/qh$a;

    invoke-direct {v9, v6}, Lcom/amap/api/col/l3s/qh$a;-><init>(B)V

    invoke-interface {v5}, Lcom/amap/api/col/l3s/qg;->b()I

    move-result v5

    iput v5, v9, Lcom/amap/api/col/l3s/qh$a;->a:I

    iput-wide v3, v9, Lcom/amap/api/col/l3s/qh$a;->b:J

    :goto_2
    iput-boolean v10, v9, Lcom/amap/api/col/l3s/qh$a;->c:Z

    goto :goto_3

    :cond_2
    iget v11, v9, Lcom/amap/api/col/l3s/qh$a;->a:I

    invoke-interface {v5}, Lcom/amap/api/col/l3s/qg;->b()I

    move-result v12

    if-eq v11, v12, :cond_3

    invoke-interface {v5}, Lcom/amap/api/col/l3s/qg;->b()I

    move-result v5

    iput v5, v9, Lcom/amap/api/col/l3s/qh$a;->a:I

    iput-wide v3, v9, Lcom/amap/api/col/l3s/qh$a;->b:J

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v2, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3s/qh;->a:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/amap/api/col/l3s/qh;->b:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/amap/api/col/l3s/qh;->a:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/amap/api/col/l3s/qh;->b:Landroid/util/LongSparseArray;

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
