.class public final Lcom/amap/api/col/l3s/qr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/amap/api/col/l3s/qs;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/qr;->a:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/qr;->b:J

    return-void
.end method

.method private static a(II)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/qs;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5

    iget-boolean v2, p1, Lcom/amap/api/col/l3s/qs;->p:Z

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/qr;->a:Ljava/util/HashMap;

    iget v2, p1, Lcom/amap/api/col/l3s/qs;->k:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    move-wide v2, v0

    goto :goto_1

    :cond_1
    iget v2, p1, Lcom/amap/api/col/l3s/qs;->h:I

    iget v3, p1, Lcom/amap/api/col/l3s/qs;->i:I

    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/amap/api/col/l3s/qs;->c:I

    iget v3, p1, Lcom/amap/api/col/l3s/qs;->d:I

    :goto_0
    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/qr;->a(II)J

    move-result-wide v2

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3s/qs;

    if-nez v4, :cond_3

    :goto_2
    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/amap/api/col/l3s/qs;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0

    :cond_3
    iget v5, v4, Lcom/amap/api/col/l3s/qs;->j:I

    iget v6, p1, Lcom/amap/api/col/l3s/qs;->j:I

    if-eq v5, v6, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v0, v4, Lcom/amap/api/col/l3s/qs;->m:J

    iput-wide v0, p1, Lcom/amap/api/col/l3s/qs;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide p0

    iget-wide v0, v4, Lcom/amap/api/col/l3s/qs;->m:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0

    :cond_5
    :goto_3
    return-wide v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/qr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/qr;->b:J

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/amap/api/col/l3s/qs;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/amap/api/col/l3s/pu;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/qr;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long v2, v0, v2

    const-wide/32 v6, 0xea60

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/qr;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v7, v3, :cond_5

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/col/l3s/qs;

    iget-boolean v13, v12, Lcom/amap/api/col/l3s/qs;->p:Z

    if-eqz v13, :cond_4

    iget v13, v12, Lcom/amap/api/col/l3s/qs;->k:I

    if-eq v13, v11, :cond_2

    if-eq v13, v10, :cond_1

    if-eq v13, v9, :cond_2

    if-eq v13, v8, :cond_2

    goto :goto_2

    :cond_1
    iget v4, v12, Lcom/amap/api/col/l3s/qs;->h:I

    iget v5, v12, Lcom/amap/api/col/l3s/qs;->i:I

    goto :goto_1

    :cond_2
    iget v4, v12, Lcom/amap/api/col/l3s/qs;->c:I

    iget v5, v12, Lcom/amap/api/col/l3s/qs;->d:I

    :goto_1
    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/qr;->a(II)J

    move-result-wide v4

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/col/l3s/qs;

    if-eqz v8, :cond_4

    iget v9, v8, Lcom/amap/api/col/l3s/qs;->j:I

    iget v10, v12, Lcom/amap/api/col/l3s/qs;->j:I

    if-ne v9, v10, :cond_3

    iget-wide v8, v8, Lcom/amap/api/col/l3s/qs;->m:J

    iput-wide v8, v12, Lcom/amap/api/col/l3s/qs;->m:J

    goto :goto_3

    :cond_3
    iput-wide v0, v12, Lcom/amap/api/col/l3s/qs;->m:J

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v6, v3, :cond_9

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/col/l3s/qs;

    iget-boolean v12, v7, Lcom/amap/api/col/l3s/qs;->p:Z

    if-eqz v12, :cond_8

    iget v12, v7, Lcom/amap/api/col/l3s/qs;->k:I

    if-eq v12, v11, :cond_7

    if-eq v12, v10, :cond_6

    if-eq v12, v9, :cond_7

    if-eq v12, v8, :cond_7

    goto :goto_6

    :cond_6
    iget v4, v7, Lcom/amap/api/col/l3s/qs;->h:I

    iget v5, v7, Lcom/amap/api/col/l3s/qs;->i:I

    goto :goto_5

    :cond_7
    iget v4, v7, Lcom/amap/api/col/l3s/qs;->c:I

    iget v5, v7, Lcom/amap/api/col/l3s/qs;->d:I

    :goto_5
    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/qr;->a(II)J

    move-result-wide v4

    :goto_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    iput-wide v0, p0, Lcom/amap/api/col/l3s/qr;->b:J

    :cond_a
    return-void
.end method
