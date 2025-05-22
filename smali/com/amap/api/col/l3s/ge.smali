.class public abstract Lcom/amap/api/col/l3s/ge;
.super Lcom/amap/api/col/l3s/jb;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/col/l3s/jb;"
    }
.end annotation


# instance fields
.field protected d:Z

.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Landroid/content/Context;

.field protected i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jb;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ge;->d:Z

    iput v0, p0, Lcom/amap/api/col/l3s/ge;->f:I

    const-string v1, ""

    iput-object v1, p0, Lcom/amap/api/col/l3s/ge;->g:Ljava/lang/String;

    iput v0, p0, Lcom/amap/api/col/l3s/ge;->j:I

    iput-object v1, p0, Lcom/amap/api/col/l3s/ge;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3s/ge;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    iput v0, p0, Lcom/amap/api/col/l3s/ge;->f:I

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/core/ServiceSettings;->getSoTimeOut()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ld;->setSoTimeout(I)V

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/core/ServiceSettings;->getConnectionTimeOut()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ld;->setConnectionTimeout(I)V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/jb;->getIPV6URL()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, ".com/"

    const-string v1, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    add-int/lit8 v0, v0, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private h()Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3s/ge;->f()Lcom/amap/api/col/l3s/hh$b;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3s/hh;->b(Lcom/amap/api/col/l3s/hh$b;)Z

    move-result v3

    const/4 v4, 0x0

    move v6, v4

    move v8, v6

    const/4 v7, 0x0

    :cond_0
    :goto_0
    iget v0, v1, Lcom/amap/api/col/l3s/ge;->f:I

    if-ge v6, v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v11, 0x1

    :try_start_1
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object v12

    iget-object v13, v1, Lcom/amap/api/col/l3s/ge;->h:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/amap/api/col/l3s/ja;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/l3s/lc;->c()Lcom/amap/api/col/l3s/lc;

    move-result-object v12

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/amap/api/col/l3s/hh;->a(Lcom/amap/api/col/l3s/hh$b;)Lcom/amap/api/col/l3s/hh$c;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-object v14, v13, Lcom/amap/api/col/l3s/hh$c;->a:Ljava/lang/Object;

    if-eqz v14, :cond_1

    iget-object v7, v13, Lcom/amap/api/col/l3s/hh$c;->a:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/col/l3s/it; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, v1, Lcom/amap/api/col/l3s/ge;->h:Landroid/content/Context;

    iget-object v14, v2, Lcom/amap/api/col/l3s/hh$b;->a:Ljava/lang/String;

    iget-boolean v13, v13, Lcom/amap/api/col/l3s/hh$c;->b:Z

    invoke-static {v8, v14, v13}, Lcom/amap/api/col/l3s/hq;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catch Lcom/amap/api/col/l3s/it; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v11

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v7

    move v8, v11

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move v8, v11

    goto :goto_4

    :catch_1
    move-exception v0

    move v8, v11

    goto/16 :goto_5

    :cond_1
    :goto_1
    if-nez v7, :cond_6

    if-ne v0, v11, :cond_3

    :try_start_3
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/ge;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {v12, v1}, Lcom/amap/api/col/l3s/lc;->b(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/amap/api/col/l3s/lc;->g(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v12, 0x2

    if-ne v0, v12, :cond_5

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/ge;->d:Z

    if-eqz v0, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/amap/api/col/l3s/kw;->a(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/amap/api/col/l3s/lc;->h(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3s/ge;->a([B)Ljava/lang/Object;

    move-result-object v7

    iget-object v0, v1, Lcom/amap/api/col/l3s/ge;->h:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/ge;->g()Ljava/lang/String;

    move-result-object v14

    sub-long/2addr v12, v9

    invoke-static {v0, v14, v12, v13, v11}, Lcom/amap/api/col/l3s/hq;->a(Landroid/content/Context;Ljava/lang/String;JZ)V

    :cond_6
    iget v6, v1, Lcom/amap/api/col/l3s/ge;->f:I
    :try_end_3
    .catch Lcom/amap/api/col/l3s/it; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    if-nez v8, :cond_0

    :try_start_4
    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2, v7}, Lcom/amap/api/col/l3s/hh;->a(Lcom/amap/api/col/l3s/hh$b;Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v7

    goto/16 :goto_8

    :catch_2
    move-exception v0

    :goto_4
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v13, v1, Lcom/amap/api/col/l3s/ge;->h:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/ge;->g()Ljava/lang/String;

    move-result-object v14

    sub-long/2addr v11, v9

    invoke-static {v13, v14, v11, v12, v4}, Lcom/amap/api/col/l3s/hq;->a(Landroid/content/Context;Ljava/lang/String;JZ)V

    add-int/lit8 v6, v6, 0x1

    iget v9, v1, Lcom/amap/api/col/l3s/ge;->f:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ge v6, v9, :cond_7

    if-eqz v3, :cond_0

    if-nez v8, :cond_0

    :try_start_6
    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v0
    :try_end_6
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :cond_7
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    :goto_5
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v14, v1, Lcom/amap/api/col/l3s/ge;->h:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/ge;->g()Ljava/lang/String;

    move-result-object v15

    sub-long/2addr v12, v9

    invoke-static {v14, v15, v12, v13, v4}, Lcom/amap/api/col/l3s/hq;->a(Landroid/content/Context;Ljava/lang/String;JZ)V

    add-int/lit8 v6, v6, 0x1

    iget v9, v1, Lcom/amap/api/col/l3s/ge;->f:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v10, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    const-string v12, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    const-string v13, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    const-string v14, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    if-ge v6, v9, :cond_b

    :try_start_9
    iget v9, v1, Lcom/amap/api/col/l3s/ge;->j:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v4, v9

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v3, :cond_8

    if-nez v8, :cond_8

    :try_start_a
    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Lcom/amap/api/col/l3s/hh;->a(Lcom/amap/api/col/l3s/hh$b;Ljava/lang/Object;)V
    :try_end_a
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_4
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v11, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v1

    :cond_a
    :goto_6
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v11, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_b
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v11, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v1

    :cond_d
    :goto_7
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/it;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v11, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_8
    if-eqz v3, :cond_e

    if-nez v8, :cond_e

    :try_start_d
    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lcom/amap/api/col/l3s/hh;->a(Lcom/amap/api/col/l3s/hh$b;Ljava/lang/Object;)V

    :cond_e
    throw v0
    :try_end_d
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_f
    return-object v7

    :catchall_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation
.end method

.method protected a([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "ProtocalHandler"

    const-string v2, "loadData"

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/amap/api/col/l3s/gm;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3s/ge;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final e()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/ge;->e:Ljava/lang/Object;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/ge;->h()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ge;->g()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/amap/api/col/l3s/ge;->i:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorLevel()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "4"

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    rem-int/2addr v3, v4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/amap/api/col/l3s/gl;->a(Z)Lcom/amap/api/col/l3s/je;

    move-result-object v4

    invoke-static {v4, v1, v2, p0, v3}, Lcom/amap/api/col/l3s/ka;->a(Lcom/amap/api/col/l3s/je;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    throw v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method protected f()Lcom/amap/api/col/l3s/hh$b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestHead()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSDKName()Ljava/lang/String;
    .locals 0

    const-string p0, "sea"

    return-object p0
.end method
