.class Lcom/amap/api/col/l3s/hi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:J

.field private c:I

.field private d:J

.field private final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/amap/api/col/l3s/hh$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/amap/api/col/l3s/hh$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/hi;->a:Z

    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hi;->b:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/col/l3s/hi;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hi;->d:J

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hi;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hi;->g:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hi;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/hi;->i:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/hi;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/hi;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amap/api/col/l3s/hi;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hi;->d:J

    :cond_0
    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hi;->d:J

    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/hi;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/hh$b;)Lcom/amap/api/col/l3s/hh$c;
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/hi;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/hi;->b(Lcom/amap/api/col/l3s/hh$b;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/hi;->a()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, p1}, Lcom/amap/api/col/l3s/hi;->a(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/amap/api/col/l3s/hh$c;

    iget-object v2, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, p1}, Lcom/amap/api/col/l3s/hi;->b(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3s/hh$c;-><init>(Ljava/lang/Object;Z)V

    monitor-exit v0

    return-object v1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/hi;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/hi;->a(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/hi;->a(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/hi;->a(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->h:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Lcom/amap/api/col/l3s/hh$c;

    iget-object v1, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1, p1}, Lcom/amap/api/col/l3s/hi;->b(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/hh$c;-><init>(Ljava/lang/Object;Z)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public a(Lcom/amap/api/col/l3s/hh$a;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/hh$a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/hi;->a:Z

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/hh$a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hi;->b:J

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/hh$a;->c()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/hi;->c:I

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/hh$b;Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/hi;->a:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/hi;->b(Lcom/amap/api/col/l3s/hh$b;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget v2, p0, Lcom/amap/api/col/l3s/hi;->c:I

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/hh$b;

    if-eqz v3, :cond_2

    move-object v2, v3

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1, v2}, Lcom/amap/api/col/l3s/hi;->c(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/col/l3s/hi;->a()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/hi;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Lcom/amap/api/col/l3s/hi;->h:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/hi;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3s/hi;->c(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/amap/api/col/l3s/hi;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method protected a(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/amap/api/col/l3s/hh$b;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amap/api/col/l3s/hh$b;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected b(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/amap/api/col/l3s/hh$b;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amap/api/col/l3s/hh$b;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lcom/amap/api/col/l3s/hh$b;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/hi;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method protected c(Ljava/util/LinkedHashMap;Lcom/amap/api/col/l3s/hh$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/amap/api/col/l3s/hh$b;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amap/api/col/l3s/hh$b;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
