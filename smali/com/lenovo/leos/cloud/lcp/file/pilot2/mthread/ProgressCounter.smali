.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

.field private final b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$a;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$a;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->getTotalLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->b:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ReadOdometer;->sortedOdometers()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    const/4 v8, 0x2

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide v2, v8, v9

    const/4 v9, 0x1

    sub-long/2addr v4, v2

    aput-wide v4, v8, v9

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-wide v2, v6

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$a;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->getTotalLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->b:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->sortedOdometers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v2, v8

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    new-array v7, v7, [J

    aput-wide v2, v7, v6

    sub-long v2, v8, v2

    aput-wide v2, v7, v5

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-long v2, v8, v10

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->getRecentOffset()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->getRecentLength()J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long p1, v2, v8

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    new-array v0, v7, [J

    aput-wide v2, v0, v6

    sub-long/2addr v8, v2

    aput-wide v8, v0, v5

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->a()V

    return-void
.end method

.method private a()V
    .locals 10

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    aget-wide v6, v0, v1

    add-long/2addr v4, v6

    aget-wide v6, v2, v3

    aget-wide v8, v2, v1

    add-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    aget-wide v8, v2, v3

    cmp-long v4, v4, v8

    if-ltz v4, :cond_2

    aget-wide v2, v0, v3

    sub-long/2addr v6, v2

    aput-wide v6, v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized finish(JJ)V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 p1, 0x1

    aput-wide p3, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter$b;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTotalLength()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->b:J

    return-wide v0
.end method

.method public isFinish()Z
    .locals 4

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->progress()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->b:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized progress()J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/4 v4, 0x1

    aget-wide v3, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
