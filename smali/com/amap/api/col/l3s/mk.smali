.class public final Lcom/amap/api/col/l3s/mk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/mk$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcom/amap/api/col/l3s/mk;

.field private static h:Ljava/lang/Object;


# instance fields
.field private a:Lcom/amap/api/col/l3s/mj;

.field private b:Lcom/amap/api/col/l3s/ml;

.field private c:J

.field private d:Lcom/amap/api/col/l3s/no;

.field private e:Lcom/amap/api/col/l3s/mg;

.field private f:Lcom/amap/api/col/l3s/no;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/mk;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3s/no;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/no;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/mk;->f:Lcom/amap/api/col/l3s/no;

    new-instance v0, Lcom/amap/api/col/l3s/mj;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/mj;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/mk;->a:Lcom/amap/api/col/l3s/mj;

    new-instance v0, Lcom/amap/api/col/l3s/ml;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/ml;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/mk;->b:Lcom/amap/api/col/l3s/ml;

    new-instance v0, Lcom/amap/api/col/l3s/mg;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/mg;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/mk;->e:Lcom/amap/api/col/l3s/mg;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/mk;
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/mk;->g:Lcom/amap/api/col/l3s/mk;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/col/l3s/mk;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/mk;->g:Lcom/amap/api/col/l3s/mk;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/mk;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/mk;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/mk;->g:Lcom/amap/api/col/l3s/mk;

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
    sget-object v0, Lcom/amap/api/col/l3s/mk;->g:Lcom/amap/api/col/l3s/mk;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/mk$a;)Lcom/amap/api/col/l3s/mm;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v3, v0, Lcom/amap/api/col/l3s/mk;->d:Lcom/amap/api/col/l3s/no;

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/amap/api/col/l3s/mk$a;->a:Lcom/amap/api/col/l3s/no;

    invoke-virtual {v4, v3}, Lcom/amap/api/col/l3s/nn;->a(Lcom/amap/api/col/l3s/nn;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    :cond_1
    iget-object v4, v0, Lcom/amap/api/col/l3s/mk;->a:Lcom/amap/api/col/l3s/mj;

    iget-object v5, v1, Lcom/amap/api/col/l3s/mk$a;->a:Lcom/amap/api/col/l3s/no;

    iget-boolean v6, v1, Lcom/amap/api/col/l3s/mk$a;->j:Z

    iget-byte v7, v1, Lcom/amap/api/col/l3s/mk$a;->g:B

    iget-object v8, v1, Lcom/amap/api/col/l3s/mk$a;->h:Ljava/lang/String;

    iget-object v9, v1, Lcom/amap/api/col/l3s/mk$a;->i:Ljava/util/List;

    invoke-virtual/range {v4 .. v9}, Lcom/amap/api/col/l3s/mj;->a(Lcom/amap/api/col/l3s/no;ZBLjava/lang/String;Ljava/util/List;)Lcom/amap/api/col/l3s/mj$a;

    move-result-object v17

    iget-object v3, v0, Lcom/amap/api/col/l3s/mk;->b:Lcom/amap/api/col/l3s/ml;

    iget-object v4, v1, Lcom/amap/api/col/l3s/mk$a;->a:Lcom/amap/api/col/l3s/no;

    iget-object v5, v1, Lcom/amap/api/col/l3s/mk$a;->b:Ljava/util/List;

    iget-boolean v6, v1, Lcom/amap/api/col/l3s/mk$a;->e:Z

    iget-wide v7, v1, Lcom/amap/api/col/l3s/mk$a;->d:J

    move-wide v9, v11

    invoke-virtual/range {v3 .. v10}, Lcom/amap/api/col/l3s/ml;->a(Lcom/amap/api/col/l3s/no;Ljava/util/List;ZJJ)Ljava/util/List;

    move-result-object v20

    if-nez v17, :cond_2

    if-eqz v20, :cond_3

    :cond_2
    iget-object v2, v0, Lcom/amap/api/col/l3s/mk;->f:Lcom/amap/api/col/l3s/no;

    iget-object v3, v1, Lcom/amap/api/col/l3s/mk$a;->a:Lcom/amap/api/col/l3s/no;

    iget-wide v4, v1, Lcom/amap/api/col/l3s/mk$a;->f:J

    iput-wide v4, v2, Lcom/amap/api/col/l3s/no;->k:J

    iput-wide v4, v2, Lcom/amap/api/col/l3s/nn;->b:J

    iput-wide v11, v2, Lcom/amap/api/col/l3s/nn;->c:J

    iget-wide v4, v3, Lcom/amap/api/col/l3s/nn;->e:D

    iput-wide v4, v2, Lcom/amap/api/col/l3s/nn;->e:D

    iget-wide v4, v3, Lcom/amap/api/col/l3s/nn;->d:D

    iput-wide v4, v2, Lcom/amap/api/col/l3s/nn;->d:D

    iget-wide v4, v3, Lcom/amap/api/col/l3s/nn;->f:D

    iput-wide v4, v2, Lcom/amap/api/col/l3s/nn;->f:D

    iget v4, v3, Lcom/amap/api/col/l3s/nn;->i:F

    iput v4, v2, Lcom/amap/api/col/l3s/nn;->i:F

    iget v4, v3, Lcom/amap/api/col/l3s/nn;->g:F

    iput v4, v2, Lcom/amap/api/col/l3s/nn;->g:F

    iget v3, v3, Lcom/amap/api/col/l3s/nn;->h:F

    iput v3, v2, Lcom/amap/api/col/l3s/nn;->h:F

    new-instance v3, Lcom/amap/api/col/l3s/mm;

    const/4 v4, 0x0

    iget-object v15, v0, Lcom/amap/api/col/l3s/mk;->e:Lcom/amap/api/col/l3s/mg;

    iget-wide v5, v1, Lcom/amap/api/col/l3s/mk$a;->c:J

    move-object/from16 v16, v2

    move-wide/from16 v18, v5

    invoke-virtual/range {v15 .. v20}, Lcom/amap/api/col/l3s/mg;->a(Lcom/amap/api/col/l3s/no;Lcom/amap/api/col/l3s/mj$a;JLjava/util/List;)[B

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/amap/api/col/l3s/mm;-><init>(I[B)V

    move-object v2, v3

    :cond_3
    iget-object v1, v1, Lcom/amap/api/col/l3s/mk$a;->a:Lcom/amap/api/col/l3s/no;

    iput-object v1, v0, Lcom/amap/api/col/l3s/mk;->d:Lcom/amap/api/col/l3s/no;

    iput-wide v13, v0, Lcom/amap/api/col/l3s/mk;->c:J

    :cond_4
    return-object v2
.end method
