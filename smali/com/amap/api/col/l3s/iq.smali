.class public final Lcom/amap/api/col/l3s/iq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;
.implements Lcom/amap/api/trace/LBSTraceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/iq$c;,
        Lcom/amap/api/col/l3s/iq$a;,
        Lcom/amap/api/col/l3s/iq$b;
    }
.end annotation


# static fields
.field private static final s:Ljava/util/concurrent/TimeUnit;


# instance fields
.field a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps/CoordinateConverter;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:J

.field private g:I

.field private h:Lcom/amap/api/trace/TraceStatusListener;

.field private i:Lcom/amap/api/col/l3s/az;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:J

.field private n:Lcom/amap/api/col/l3s/iq$c;

.field private o:Lcom/amap/api/trace/TraceLocation;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/amap/api/col/l3s/iq;->s:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x7d0

    iput-wide v1, v0, Lcom/amap/api/col/l3s/iq;->f:J

    const/4 v1, 0x5

    iput v1, v0, Lcom/amap/api/col/l3s/iq;->g:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, v0, Lcom/amap/api/col/l3s/iq;->k:I

    iput v1, v0, Lcom/amap/api/col/l3s/iq;->l:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/amap/api/col/l3s/iq;->m:J

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->o:Lcom/amap/api/trace/TraceLocation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->p:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->q:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->r:Ljava/util/List;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/l3s/iq;->a:I

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->t:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->u:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/maps/CoordinateConverter;

    invoke-direct {v2, v1}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/amap/api/col/l3s/iq;->c:Lcom/amap/api/maps/CoordinateConverter;

    new-instance v1, Lcom/amap/api/col/l3s/iq$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/col/l3s/iq$c;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->n:Lcom/amap/api/col/l3s/iq$c;

    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object v1

    iget-object v2, v0, Lcom/amap/api/col/l3s/iq;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3s/ja;->a(Landroid/content/Context;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, v0, Lcom/amap/api/col/l3s/iq;->a:I

    mul-int/lit8 v5, v2, 0x2

    sget-object v8, Lcom/amap/api/col/l3s/iq;->s:Ljava/util/concurrent/TimeUnit;

    iget-object v9, v0, Lcom/amap/api/col/l3s/iq;->t:Ljava/util/concurrent/BlockingQueue;

    new-instance v10, Lcom/amap/api/col/l3s/ek;

    const-string v2, "AMapTraceManagerProcess"

    invoke-direct {v10, v2}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v11}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v4, 0x1

    const-wide/16 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, v0, Lcom/amap/api/col/l3s/iq;->a:I

    mul-int/lit8 v14, v2, 0x2

    sget-object v17, Lcom/amap/api/col/l3s/iq;->s:Ljava/util/concurrent/TimeUnit;

    iget-object v2, v0, Lcom/amap/api/col/l3s/iq;->u:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/amap/api/col/l3s/ek;

    const-string v4, "AMapTraceManagerRequest"

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/ek;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v13, 0x1

    const-wide/16 v15, 0x1

    move-object v12, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v12 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, v0, Lcom/amap/api/col/l3s/iq;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static a(DDDD)D
    .locals 1

    cmpl-double v0, p0, p4

    if-lez v0, :cond_0

    sub-double/2addr p0, p4

    goto :goto_0

    :cond_0
    sub-double p0, p4, p0

    :goto_0
    cmpl-double p4, p2, p6

    if-lez p4, :cond_1

    sub-double/2addr p2, p6

    goto :goto_1

    :cond_1
    sub-double p2, p6, p2

    :goto_1
    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->r:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/col/l3s/iq;->r:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, v0, Lcom/amap/api/col/l3s/iq;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v6, v3

    move-wide v7, v4

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/trace/TraceLocation;

    if-eqz v9, :cond_2

    if-nez v6, :cond_3

    :goto_1
    move-object v6, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v6}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v9}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v9}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, Lcom/amap/api/col/l3s/iq;->a(DDDD)D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpl-double v12, v10, v12

    if-gtz v12, :cond_2

    add-double/2addr v7, v10

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/amap/api/col/l3s/iq;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/LatLng;

    if-nez v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/amap/api/col/l3s/iq;->p:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :goto_3
    move-object v3, v6

    goto :goto_2

    :cond_6
    iget-wide v9, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v11, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v13, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 p1, v2

    iget-wide v2, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v15, v2

    invoke-static/range {v9 .. v16}, Lcom/amap/api/col/l3s/iq;->a(DDDD)D

    move-result-wide v2

    add-double/2addr v4, v2

    cmpg-double v2, v4, v7

    if-gez v2, :cond_7

    iget-object v2, v0, Lcom/amap/api/col/l3s/iq;->p:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->remove()V

    move-object/from16 v2, p1

    goto :goto_3

    :cond_7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/iq;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/iq;->g:I

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->q:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/iq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/iq;)Lcom/amap/api/trace/TraceStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->h:Lcom/amap/api/trace/TraceStatusListener;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/iq;)Lcom/amap/api/col/l3s/iq$c;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->n:Lcom/amap/api/col/l3s/iq$c;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/col/l3s/iq;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->c:Lcom/amap/api/maps/CoordinateConverter;

    return-object p0
.end method

.method static synthetic i(Lcom/amap/api/col/l3s/iq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcom/amap/api/col/l3s/iq;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->e:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/iq;->stopTrace()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/iq;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/iq;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/iq;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v0, p0, Lcom/amap/api/col/l3s/iq;->d:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/iq;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/iq;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/iq;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v0, p0, Lcom/amap/api/col/l3s/iq;->e:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iput-object v0, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/amap/api/col/l3s/iq;->h:Lcom/amap/api/trace/TraceStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/iq;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/col/l3s/iq;->c:Lcom/amap/api/maps/CoordinateConverter;

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 11

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->h:Lcom/amap/api/trace/TraceStatusListener;

    if-eqz v0, :cond_7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/iq;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->h:Lcom/amap/api/trace/TraceStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->h:Lcom/amap/api/trace/TraceStatusListener;

    const-string v1, "\u5b9a\u4f4d\u8d85\u65f6"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/amap/api/trace/TraceStatusListener;->onTraceStatus(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/iq;->m:J

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "LBSTraceClient"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Locate failed [errorCode:\""

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"  errorInfo:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v10, Lcom/amap/api/trace/TraceLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v7

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/trace/TraceLocation;-><init>(DDFFJ)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/iq;->o:Lcom/amap/api/trace/TraceLocation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v10}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v10}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v10, p0, Lcom/amap/api/col/l3s/iq;->o:Lcom/amap/api/trace/TraceLocation;

    iget p1, p0, Lcom/amap/api/col/l3s/iq;->k:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/amap/api/col/l3s/iq;->k:I

    iget v3, p0, Lcom/amap/api/col/l3s/iq;->g:I

    if-ne p1, v3, :cond_6

    iget v3, p0, Lcom/amap/api/col/l3s/iq;->l:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/amap/api/col/l3s/iq;->l:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v3, p0, Lcom/amap/api/col/l3s/iq;->g:I

    if-lt p1, v3, :cond_5

    const/16 v3, 0x32

    if-gt p1, v3, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lcom/amap/api/col/l3s/iq$b;

    invoke-direct {v3, p0, p1}, Lcom/amap/api/col/l3s/iq$b;-><init>(Lcom/amap/api/col/l3s/iq;Ljava/util/List;)V

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/amap/api/col/l3s/iq;->queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, p1, -0x32

    if-ltz v3, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    iget v6, p0, Lcom/amap/api/col/l3s/iq;->g:I

    sub-int v6, v3, v6

    invoke-interface {v5, v6, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/amap/api/col/l3s/iq;->a(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    invoke-interface {v5, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/amap/api/col/l3s/iq$b;

    invoke-direct {p1, p0, v4}, Lcom/amap/api/col/l3s/iq$b;-><init>(Lcom/amap/api/col/l3s/iq;Ljava/util/List;)V

    invoke-virtual {p0, v3, v4, v2, p1}, Lcom/amap/api/col/l3s/iq;->queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V

    :cond_5
    :goto_1
    iput v1, p0, Lcom/amap/api/col/l3s/iq;->k:I

    :cond_6
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

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return-void
.end method

.method public final queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;I",
            "Lcom/amap/api/trace/TraceListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v6, Lcom/amap/api/col/l3s/iq$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3s/iq$a;-><init>(Lcom/amap/api/col/l3s/iq;ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/iq;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setLocationInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/iq;->f:J

    return-void
.end method

.method public final setTraceStatusInterval(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/iq;->g:I

    return-void
.end method

.method public final startTrace(Lcom/amap/api/trace/TraceStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "LBSTraceClient"

    const-string p1, "Context need to be initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/iq;->m:J

    iput-object p1, p0, Lcom/amap/api/col/l3s/iq;->h:Lcom/amap/api/trace/TraceStatusListener;

    iget-object p1, p0, Lcom/amap/api/col/l3s/iq;->i:Lcom/amap/api/col/l3s/az;

    if-nez p1, :cond_1

    new-instance p1, Lcom/amap/api/col/l3s/az;

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3s/az;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/iq;->i:Lcom/amap/api/col/l3s/az;

    iget-wide v0, p0, Lcom/amap/api/col/l3s/iq;->f:J

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/col/l3s/az;->a(J)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/iq;->i:Lcom/amap/api/col/l3s/az;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/az;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    :cond_1
    return-void
.end method

.method public final stopTrace()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->i:Lcom/amap/api/col/l3s/az;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/az;->deactivate()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/iq;->i:Lcom/amap/api/col/l3s/az;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->t:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->u:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/iq;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/col/l3s/iq;->l:I

    iput v2, p0, Lcom/amap/api/col/l3s/iq;->k:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amap/api/col/l3s/iq;->m:J

    iput-object v1, p0, Lcom/amap/api/col/l3s/iq;->o:Lcom/amap/api/trace/TraceLocation;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method
