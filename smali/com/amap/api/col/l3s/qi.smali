.class public final Lcom/amap/api/col/l3s/qi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/qi$a;
    }
.end annotation


# direct methods
.method public static declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/qk;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/amap/api/col/l3s/qi;

    monitor-enter v0

    if-eqz p0, :cond_6

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/qk;

    instance-of v3, v2, Lcom/amap/api/col/l3s/qm;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/amap/api/col/l3s/qm;

    new-instance v3, Lcom/amap/api/col/l3s/qi$a;

    iget v4, v2, Lcom/amap/api/col/l3s/qm;->j:I

    iget v5, v2, Lcom/amap/api/col/l3s/qm;->k:I

    iget v2, v2, Lcom/amap/api/col/l3s/qk;->c:I

    invoke-direct {v3, v4, v5, v2}, Lcom/amap/api/col/l3s/qi$a;-><init>(III)V

    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/amap/api/col/l3s/qn;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/amap/api/col/l3s/qn;

    new-instance v3, Lcom/amap/api/col/l3s/qi$a;

    iget v4, v2, Lcom/amap/api/col/l3s/qn;->j:I

    iget v5, v2, Lcom/amap/api/col/l3s/qn;->k:I

    iget v2, v2, Lcom/amap/api/col/l3s/qk;->c:I

    invoke-direct {v3, v4, v5, v2}, Lcom/amap/api/col/l3s/qi$a;-><init>(III)V

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lcom/amap/api/col/l3s/qo;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/amap/api/col/l3s/qo;

    new-instance v3, Lcom/amap/api/col/l3s/qi$a;

    iget v4, v2, Lcom/amap/api/col/l3s/qo;->j:I

    iget v5, v2, Lcom/amap/api/col/l3s/qo;->k:I

    iget v2, v2, Lcom/amap/api/col/l3s/qk;->c:I

    invoke-direct {v3, v4, v5, v2}, Lcom/amap/api/col/l3s/qi$a;-><init>(III)V

    goto :goto_1

    :cond_4
    instance-of v3, v2, Lcom/amap/api/col/l3s/ql;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/amap/api/col/l3s/ql;

    new-instance v3, Lcom/amap/api/col/l3s/qi$a;

    iget v4, v2, Lcom/amap/api/col/l3s/ql;->k:I

    iget v5, v2, Lcom/amap/api/col/l3s/ql;->l:I

    iget v2, v2, Lcom/amap/api/col/l3s/qk;->c:I

    invoke-direct {v3, v4, v5, v2}, Lcom/amap/api/col/l3s/qi$a;-><init>(III)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/amap/api/col/l3s/qh;->a()Lcom/amap/api/col/l3s/qh;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/qh;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_6
    :goto_2
    monitor-exit v0

    return-void
.end method
