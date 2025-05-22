.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final a:Ljava/io/Serializable;

.field private final b:J

.field private final c:J

.field private final d:J

.field private volatile e:[J

.field protected transient executing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile lastOffset:J

.field protected final odometers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final threadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    return-void
.end method

.method private constructor <init>(Ljava/io/Serializable;IJJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->odometers:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->executing:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->lastOffset:J

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->a:Ljava/io/Serializable;

    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->b:J

    iput-wide p5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->c:J

    iput-wide p7, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->d:J

    const-wide/16 p5, 0x0

    cmp-long p1, p3, p5

    if-nez p1, :cond_0

    iput-wide p5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->lastOffset:J

    :cond_0
    div-long/2addr p3, p7

    long-to-int p1, p3

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->threadCount:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->threadCount:I

    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private declared-synchronized a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->executing:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->executing:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->executing:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()J
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private c()I
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->odometers:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->partNumber(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->c()I

    move-result v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->threadCount:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->planNewOdometer()[J

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static newInstance(Ljava/io/Serializable;IJJJ)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;
    .locals 10

    new-instance v9, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;-><init>(Ljava/io/Serializable;IJJJ)V

    invoke-direct {v9}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->d()V

    return-object v9
.end method


# virtual methods
.method public declared-synchronized acquire()[J
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->odometers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->lastOffset:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->partNumber(J)I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finish(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->odometers:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->isAllFinish()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLastOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->lastOffset:J

    return-wide v0
.end method

.method public getRecentLength()J
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getRecentOffset()J
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getTarget()Ljava/io/Serializable;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->a:Ljava/io/Serializable;

    return-object p0
.end method

.method public getThreadCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->threadCount:I

    return p0
.end method

.method public getTotalLength()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->b:J

    return-wide v0
.end method

.method public declared-synchronized isAllFinish()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->lastOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->odometers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLastOffset(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->lastOffset:J

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public partNumber(J)I
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->c:J

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method

.method protected declared-synchronized planNewOdometer()[J
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->d:J

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->c:J

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->c:J

    rem-long v6, v0, v6

    sub-long/2addr v4, v6

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    move-wide v2, v4

    :cond_1
    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->b:J

    sub-long/2addr v4, v0

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->lastOffset:J

    move-wide v2, v4

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    iput-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->odometers:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J

    aget-wide v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->e:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sortedOdometers()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->odometers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
