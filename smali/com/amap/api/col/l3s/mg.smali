.class public final Lcom/amap/api/col/l3s/mg;
.super Lcom/amap/api/col/l3s/mf;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/mf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/no;Lcom/amap/api/col/l3s/mj$a;JLjava/util/List;)[B
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3s/no;",
            "Lcom/amap/api/col/l3s/mj$a;",
            "J",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/np;",
            ">;)[B"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-super/range {p0 .. p0}, Lcom/amap/api/col/l3s/mf;->a()Lcom/amap/api/col/l3s/mf;

    :try_start_0
    iget-wide v7, v1, Lcom/amap/api/col/l3s/no;->k:J

    iget-wide v5, v1, Lcom/amap/api/col/l3s/nn;->c:J

    iget-wide v9, v1, Lcom/amap/api/col/l3s/nn;->e:D

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    iget-wide v13, v1, Lcom/amap/api/col/l3s/nn;->d:D

    mul-double/2addr v13, v11

    double-to-int v10, v13

    iget-wide v11, v1, Lcom/amap/api/col/l3s/nn;->f:D

    double-to-int v11, v11

    iget v4, v1, Lcom/amap/api/col/l3s/nn;->i:F

    float-to-int v12, v4

    iget v4, v1, Lcom/amap/api/col/l3s/nn;->g:F

    float-to-int v13, v4

    iget v4, v1, Lcom/amap/api/col/l3s/nn;->h:F

    float-to-int v4, v4

    int-to-short v14, v4

    iget-byte v15, v1, Lcom/amap/api/col/l3s/no;->l:B

    iget-object v4, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static/range {v4 .. v15}, Lcom/amap/api/col/l3s/mv;->a(Lcom/amap/api/col/l3s/ph;JJIIIIISB)I

    move-result v1

    if-eqz v2, :cond_16

    iget-object v7, v2, Lcom/amap/api/col/l3s/mj$a;->f:Ljava/util/List;

    if-eqz v7, :cond_16

    iget-object v7, v2, Lcom/amap/api/col/l3s/mj$a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_16

    iget-object v7, v2, Lcom/amap/api/col/l3s/mj$a;->f:Ljava/util/List;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/col/l3s/ni;

    instance-of v9, v8, Lcom/amap/api/col/l3s/nk;

    if-eqz v9, :cond_2

    move-object v9, v8

    check-cast v9, Lcom/amap/api/col/l3s/nk;

    iget v10, v9, Lcom/amap/api/col/l3s/nk;->j:I

    iget v9, v9, Lcom/amap/api/col/l3s/nk;->k:I

    invoke-static {v10, v9}, Lcom/amap/api/col/l3s/nf;->a(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/amap/api/col/l3s/nf;->a(J)S

    move-result v9

    :goto_1
    iput v9, v8, Lcom/amap/api/col/l3s/ni;->g:I

    goto :goto_0

    :cond_2
    instance-of v9, v8, Lcom/amap/api/col/l3s/nl;

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Lcom/amap/api/col/l3s/nl;

    iget v10, v9, Lcom/amap/api/col/l3s/nl;->j:I

    iget v9, v9, Lcom/amap/api/col/l3s/nl;->k:I

    invoke-static {v10, v9}, Lcom/amap/api/col/l3s/nf;->a(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/amap/api/col/l3s/nf;->a(J)S

    move-result v9

    goto :goto_1

    :cond_3
    instance-of v9, v8, Lcom/amap/api/col/l3s/nm;

    if-eqz v9, :cond_4

    move-object v9, v8

    check-cast v9, Lcom/amap/api/col/l3s/nm;

    iget v10, v9, Lcom/amap/api/col/l3s/nm;->j:I

    iget v9, v9, Lcom/amap/api/col/l3s/nm;->k:I

    invoke-static {v10, v9}, Lcom/amap/api/col/l3s/nf;->a(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/amap/api/col/l3s/nf;->a(J)S

    move-result v9

    goto :goto_1

    :cond_4
    instance-of v9, v8, Lcom/amap/api/col/l3s/nj;

    if-eqz v9, :cond_1

    move-object v9, v8

    check-cast v9, Lcom/amap/api/col/l3s/nj;

    iget v10, v9, Lcom/amap/api/col/l3s/nj;->k:I

    iget v9, v9, Lcom/amap/api/col/l3s/nj;->l:I

    invoke-static {v10, v9}, Lcom/amap/api/col/l3s/nf;->a(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/amap/api/col/l3s/nf;->a(J)S

    move-result v9

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v7, v2, Lcom/amap/api/col/l3s/mj$a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v7, [I

    const/4 v9, 0x0

    :goto_3
    const/4 v10, 0x2

    if-ge v9, v7, :cond_e

    iget-object v11, v2, Lcom/amap/api/col/l3s/mj$a;->f:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amap/api/col/l3s/ni;

    instance-of v12, v11, Lcom/amap/api/col/l3s/nk;

    if-eqz v12, :cond_7

    move-object v10, v11

    check-cast v10, Lcom/amap/api/col/l3s/nk;

    iget-boolean v12, v10, Lcom/amap/api/col/l3s/ni;->i:Z

    if-nez v12, :cond_6

    iget-object v12, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget v13, v10, Lcom/amap/api/col/l3s/nk;->j:I

    iget v14, v10, Lcom/amap/api/col/l3s/nk;->k:I

    iget v15, v10, Lcom/amap/api/col/l3s/ni;->c:I

    iget v10, v10, Lcom/amap/api/col/l3s/nk;->l:I

    invoke-static {v12, v13, v14, v15, v10}, Lcom/amap/api/col/l3s/mw;->a(Lcom/amap/api/col/l3s/ph;IIII)I

    move-result v10

    move/from16 v23, v1

    move/from16 v22, v7

    :goto_4
    move v1, v10

    const/4 v4, -0x1

    const/16 v16, 0x1

    goto/16 :goto_6

    :cond_6
    iget-object v12, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v10}, Lcom/amap/api/col/l3s/ni;->b()I

    move-result v13

    invoke-virtual {v10}, Lcom/amap/api/col/l3s/ni;->c()I

    move-result v14

    iget v15, v10, Lcom/amap/api/col/l3s/nk;->j:I

    iget v5, v10, Lcom/amap/api/col/l3s/nk;->k:I

    iget v6, v10, Lcom/amap/api/col/l3s/ni;->c:I

    iget v4, v10, Lcom/amap/api/col/l3s/nk;->m:I

    move/from16 v22, v7

    iget v7, v10, Lcom/amap/api/col/l3s/nk;->n:I

    move/from16 v23, v1

    iget v1, v10, Lcom/amap/api/col/l3s/ni;->d:I

    iget v10, v10, Lcom/amap/api/col/l3s/nk;->l:I

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v4

    move/from16 v19, v7

    move/from16 v20, v1

    move/from16 v21, v10

    invoke-static/range {v12 .. v21}, Lcom/amap/api/col/l3s/mw;->a(Lcom/amap/api/col/l3s/ph;IIIIIIIII)I

    move-result v10

    goto :goto_4

    :cond_7
    move/from16 v23, v1

    move/from16 v22, v7

    instance-of v1, v11, Lcom/amap/api/col/l3s/nl;

    if-eqz v1, :cond_8

    const/4 v10, 0x3

    move-object v1, v11

    check-cast v1, Lcom/amap/api/col/l3s/nl;

    iget-object v12, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ni;->b()I

    move-result v13

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ni;->c()I

    move-result v14

    iget v15, v1, Lcom/amap/api/col/l3s/nl;->j:I

    iget v4, v1, Lcom/amap/api/col/l3s/nl;->k:I

    iget v5, v1, Lcom/amap/api/col/l3s/nl;->l:I

    iget v6, v1, Lcom/amap/api/col/l3s/ni;->c:I

    iget v7, v1, Lcom/amap/api/col/l3s/nl;->m:I

    iget v1, v1, Lcom/amap/api/col/l3s/ni;->d:I

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v1

    invoke-static/range {v12 .. v20}, Lcom/amap/api/col/l3s/mx;->a(Lcom/amap/api/col/l3s/ph;IIIIIIII)I

    move-result v1

    :goto_5
    move/from16 v16, v10

    const/4 v4, -0x1

    goto/16 :goto_6

    :cond_8
    instance-of v1, v11, Lcom/amap/api/col/l3s/nj;

    if-eqz v1, :cond_a

    move-object v1, v11

    check-cast v1, Lcom/amap/api/col/l3s/nj;

    iget-boolean v4, v1, Lcom/amap/api/col/l3s/ni;->i:Z

    if-nez v4, :cond_9

    iget-object v12, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget v13, v1, Lcom/amap/api/col/l3s/nj;->j:I

    iget v14, v1, Lcom/amap/api/col/l3s/nj;->k:I

    iget v15, v1, Lcom/amap/api/col/l3s/nj;->l:I

    iget v4, v1, Lcom/amap/api/col/l3s/nj;->m:I

    iget v5, v1, Lcom/amap/api/col/l3s/nj;->n:I

    iget v1, v1, Lcom/amap/api/col/l3s/ni;->c:I

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v1

    invoke-static/range {v12 .. v18}, Lcom/amap/api/col/l3s/mq;->a(Lcom/amap/api/col/l3s/ph;IIIIII)I

    move-result v1

    goto :goto_5

    :cond_9
    iget-object v12, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget v13, v1, Lcom/amap/api/col/l3s/nj;->j:I

    iget v14, v1, Lcom/amap/api/col/l3s/nj;->k:I

    iget v15, v1, Lcom/amap/api/col/l3s/nj;->l:I

    iget v4, v1, Lcom/amap/api/col/l3s/nj;->m:I

    iget v5, v1, Lcom/amap/api/col/l3s/nj;->n:I

    iget v6, v1, Lcom/amap/api/col/l3s/ni;->c:I

    iget v1, v1, Lcom/amap/api/col/l3s/ni;->d:I

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v1

    invoke-static/range {v12 .. v19}, Lcom/amap/api/col/l3s/mq;->a(Lcom/amap/api/col/l3s/ph;IIIIIII)I

    move-result v1

    goto :goto_5

    :cond_a
    instance-of v1, v11, Lcom/amap/api/col/l3s/nm;

    if-eqz v1, :cond_b

    const/4 v10, 0x4

    move-object v1, v11

    check-cast v1, Lcom/amap/api/col/l3s/nm;

    iget-object v12, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ni;->b()I

    move-result v13

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ni;->c()I

    move-result v14

    iget v15, v1, Lcom/amap/api/col/l3s/nm;->j:I

    iget v4, v1, Lcom/amap/api/col/l3s/nm;->k:I

    iget v5, v1, Lcom/amap/api/col/l3s/nm;->l:I

    iget v6, v1, Lcom/amap/api/col/l3s/ni;->c:I

    iget v7, v1, Lcom/amap/api/col/l3s/nm;->m:I

    iget v1, v1, Lcom/amap/api/col/l3s/ni;->d:I

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v1

    invoke-static/range {v12 .. v20}, Lcom/amap/api/col/l3s/na;->a(Lcom/amap/api/col/l3s/ph;IIIIIIII)I

    move-result v1

    goto :goto_5

    :cond_b
    const/4 v1, -0x1

    const/4 v4, -0x1

    const/16 v16, 0x0

    :goto_6
    if-eq v1, v4, :cond_17

    iget-boolean v5, v11, Lcom/amap/api/col/l3s/ni;->h:Z

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    int-to-byte v13, v5

    iget-boolean v5, v11, Lcom/amap/api/col/l3s/ni;->i:Z

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    int-to-byte v14, v5

    iget-object v12, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget v5, v11, Lcom/amap/api/col/l3s/ni;->g:I

    int-to-short v15, v5

    move/from16 v17, v1

    invoke-static/range {v12 .. v17}, Lcom/amap/api/col/l3s/mt;->a(Lcom/amap/api/col/l3s/ph;BBSBI)I

    move-result v1

    aput v1, v8, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v22

    move/from16 v1, v23

    goto/16 :goto_3

    :cond_e
    move/from16 v23, v1

    const/4 v4, -0x1

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget-object v5, v2, Lcom/amap/api/col/l3s/mj$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v5, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v5, v8}, Lcom/amap/api/col/l3s/mr;->a(Lcom/amap/api/col/l3s/ph;[I)I

    move-result v5

    iget-object v6, v2, Lcom/amap/api/col/l3s/mj$a;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_15

    iget-object v9, v2, Lcom/amap/api/col/l3s/mj$a;->g:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/col/l3s/ni;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v9, Lcom/amap/api/col/l3s/ni;->e:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const-wide/16 v13, 0x7fff

    cmp-long v15, v11, v13

    if-gtz v15, :cond_f

    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-gez v15, :cond_10

    :cond_f
    move-wide v11, v13

    :cond_10
    instance-of v13, v9, Lcom/amap/api/col/l3s/nk;

    if-eqz v13, :cond_11

    check-cast v9, Lcom/amap/api/col/l3s/nk;

    iget-object v13, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget v14, v9, Lcom/amap/api/col/l3s/nk;->j:I

    iget v9, v9, Lcom/amap/api/col/l3s/nk;->k:I

    :goto_a
    long-to-int v11, v11

    int-to-short v11, v11

    invoke-static {v13, v14, v9, v11}, Lcom/amap/api/col/l3s/mz;->a(Lcom/amap/api/col/l3s/ph;IIS)I

    move-result v9

    const/4 v11, 0x1

    goto :goto_b

    :cond_11
    instance-of v13, v9, Lcom/amap/api/col/l3s/nl;

    if-eqz v13, :cond_12

    check-cast v9, Lcom/amap/api/col/l3s/nl;

    iget-object v13, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget v14, v9, Lcom/amap/api/col/l3s/nl;->j:I

    iget v9, v9, Lcom/amap/api/col/l3s/nl;->k:I

    goto :goto_a

    :cond_12
    instance-of v13, v9, Lcom/amap/api/col/l3s/nj;

    if-eqz v13, :cond_13

    check-cast v9, Lcom/amap/api/col/l3s/nj;

    iget-object v13, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget v14, v9, Lcom/amap/api/col/l3s/nj;->j:I

    iget v15, v9, Lcom/amap/api/col/l3s/nj;->k:I

    iget v9, v9, Lcom/amap/api/col/l3s/nj;->l:I

    long-to-int v11, v11

    int-to-short v11, v11

    invoke-static {v13, v14, v15, v9, v11}, Lcom/amap/api/col/l3s/my;->a(Lcom/amap/api/col/l3s/ph;IIIS)I

    move-result v9

    move v11, v10

    goto :goto_b

    :cond_13
    instance-of v13, v9, Lcom/amap/api/col/l3s/nm;

    if-eqz v13, :cond_14

    check-cast v9, Lcom/amap/api/col/l3s/nm;

    iget-object v13, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget v14, v9, Lcom/amap/api/col/l3s/nm;->j:I

    iget v9, v9, Lcom/amap/api/col/l3s/nm;->k:I

    goto :goto_a

    :cond_14
    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_b
    iget-object v12, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    int-to-byte v11, v11

    invoke-static {v12, v11, v9}, Lcom/amap/api/col/l3s/ms;->a(Lcom/amap/api/col/l3s/ph;BI)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_15
    iget-object v6, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v6, v7}, Lcom/amap/api/col/l3s/mr;->b(Lcom/amap/api/col/l3s/ph;[I)I

    move-result v6

    iget-object v7, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget-byte v2, v2, Lcom/amap/api/col/l3s/mj$a;->a:B

    invoke-static {v7, v1, v2, v5, v6}, Lcom/amap/api/col/l3s/mr;->a(Lcom/amap/api/col/l3s/ph;IBII)I

    move-result v1

    goto :goto_c

    :cond_16
    move/from16 v23, v1

    const/4 v4, -0x1

    :cond_17
    move v1, v4

    :goto_c
    if-eqz v3, :cond_1b

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3s/np;

    iget-wide v6, v5, Lcom/amap/api/col/l3s/np;->a:J

    invoke-static {v6, v7}, Lcom/amap/api/col/l3s/nf;->b(J)S

    move-result v6

    iput-short v6, v5, Lcom/amap/api/col/l3s/np;->g:S

    goto :goto_d

    :cond_18
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v2, :cond_1a

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/col/l3s/np;

    iget-object v7, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget-object v8, v6, Lcom/amap/api/col/l3s/np;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/amap/api/col/l3s/mh;->a(Ljava/lang/CharSequence;)I

    move-result v14

    iget-wide v7, v6, Lcom/amap/api/col/l3s/np;->a:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_19

    iget-wide v7, v6, Lcom/amap/api/col/l3s/np;->a:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_19

    const/4 v10, 0x1

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    :goto_f
    iget-object v9, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    iget-wide v11, v6, Lcom/amap/api/col/l3s/np;->a:J

    iget v7, v6, Lcom/amap/api/col/l3s/np;->c:I

    int-to-short v13, v7

    iget-short v15, v6, Lcom/amap/api/col/l3s/np;->g:S

    iget v6, v6, Lcom/amap/api/col/l3s/np;->d:I

    int-to-short v6, v6

    move/from16 v16, v6

    invoke-static/range {v9 .. v16}, Lcom/amap/api/col/l3s/nc;->a(Lcom/amap/api/col/l3s/ph;ZJSISS)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1a
    iget-object v2, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v2, v4}, Lcom/amap/api/col/l3s/nb;->a(Lcom/amap/api/col/l3s/ph;[I)I

    move-result v2

    iget-object v3, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v3, v2}, Lcom/amap/api/col/l3s/nb;->a(Lcom/amap/api/col/l3s/ph;I)I

    move-result v2

    move v4, v2

    :cond_1b
    iget-object v2, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v2}, Lcom/amap/api/col/l3s/mo;->a(Lcom/amap/api/col/l3s/ph;)V

    iget-object v2, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    move/from16 v3, v23

    invoke-static {v2, v3}, Lcom/amap/api/col/l3s/mo;->a(Lcom/amap/api/col/l3s/ph;I)V

    if-lez v1, :cond_1c

    iget-object v2, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3s/mo;->c(Lcom/amap/api/col/l3s/ph;I)V

    :cond_1c
    if-lez v4, :cond_1d

    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v1, v4}, Lcom/amap/api/col/l3s/mo;->b(Lcom/amap/api/col/l3s/ph;I)V

    :cond_1d
    iget-object v1, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-static {v1}, Lcom/amap/api/col/l3s/mo;->b(Lcom/amap/api/col/l3s/ph;)I

    move-result v1

    iget-object v2, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/ph;->c(I)V

    iget-object v0, v0, Lcom/amap/api/col/l3s/mf;->a:Lcom/amap/api/col/l3s/mh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ph;->c()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_10

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ns;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method
