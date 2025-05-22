.class final Lcom/amap/api/col/l3s/lm$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:I = 0x1

.field static b:I = 0x2

.field static c:I = 0x3


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/col/l3s/ll;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/ll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    iput p2, p0, Lcom/amap/api/col/l3s/lm$a;->f:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/amap/api/col/l3s/ll;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/lm$a;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/amap/api/col/l3s/lm$a;->e:Lcom/amap/api/col/l3s/ll;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/ll;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/lm$a;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/amap/api/col/l3s/lm$a;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    const-class v2, Lcom/amap/api/col/l3s/lm;

    iget v0, v1, Lcom/amap/api/col/l3s/lm$a;->f:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->e:Lcom/amap/api/col/l3s/ll;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->e:Lcom/amap/api/col/l3s/ll;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    iget-object v1, v1, Lcom/amap/api/col/l3s/lm$a;->e:Lcom/amap/api/col/l3s/ll;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/ll;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/lm;->a(Landroid/content/Context;[B)V

    monitor-exit v2

    return-void

    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    const-string v1, "stm"

    const-string v2, "as"

    :goto_2
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    :try_start_3
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    :try_start_4
    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->g:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    const/4 v3, 0x0

    const/4 v0, 0x0

    new-array v4, v0, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/ll;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/ll;->a()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v0

    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v5

    goto :goto_5

    :catchall_4
    move-exception v0

    :goto_5
    :try_start_9
    const-string v5, "stm"

    const-string v6, "aStB"

    invoke-static {v0, v5, v6}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :cond_8
    :goto_6
    :try_start_b
    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/amap/api/col/l3s/lm;->a(Landroid/content/Context;[B)V

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    return-void

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    throw v1

    :cond_a
    :goto_8
    monitor-exit v2

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :catchall_9
    move-exception v0

    const-string v1, "stm"

    const-string v2, "apb"

    goto :goto_2

    :cond_b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    :try_start_f
    iget-object v0, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/amap/api/col/l3s/lm;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ln;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/l3s/lg;

    move-result-object v0

    iget-object v2, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    sget-object v4, Lcom/amap/api/col/l3s/jy;->h:Ljava/lang/String;

    const/16 v5, 0x3e8

    const v6, 0x4b000

    const-string v7, "2"

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lcom/amap/api/col/l3s/ln;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, v0, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    if-nez v2, :cond_d

    new-instance v2, Lcom/amap/api/col/l3s/lo;

    new-instance v3, Lcom/amap/api/col/l3s/ls;

    iget-object v4, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    new-instance v5, Lcom/amap/api/col/l3s/lp;

    new-instance v6, Lcom/amap/api/col/l3s/lt;

    new-instance v7, Lcom/amap/api/col/l3s/lv;

    invoke-direct {v7}, Lcom/amap/api/col/l3s/lv;-><init>()V

    invoke-direct {v6, v7}, Lcom/amap/api/col/l3s/lt;-><init>(Lcom/amap/api/col/l3s/lu;)V

    invoke-direct {v5, v6}, Lcom/amap/api/col/l3s/lp;-><init>(Lcom/amap/api/col/l3s/lu;)V

    invoke-direct {v3, v4, v5}, Lcom/amap/api/col/l3s/ls;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/lu;)V

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3s/lo;-><init>(Lcom/amap/api/col/l3s/lu;)V

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    :cond_d
    const v2, 0x36ee80

    iput v2, v0, Lcom/amap/api/col/l3s/lg;->h:I

    iget-object v2, v0, Lcom/amap/api/col/l3s/lg;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "cKey"

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->i:Ljava/lang/String;

    :cond_e
    iget-object v2, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    if-nez v2, :cond_f

    new-instance v2, Lcom/amap/api/col/l3s/lz;

    iget-object v3, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    iget v4, v0, Lcom/amap/api/col/l3s/lg;->h:I

    iget-object v5, v0, Lcom/amap/api/col/l3s/lg;->i:Ljava/lang/String;

    new-instance v6, Lcom/amap/api/col/l3s/lw;

    iget-object v7, v0, Lcom/amap/api/col/l3s/lg;->a:Ljava/lang/String;

    new-instance v15, Lcom/amap/api/col/l3s/lx;

    iget-object v9, v1, Lcom/amap/api/col/l3s/lm$a;->d:Landroid/content/Context;

    sget-boolean v10, Lcom/amap/api/col/l3s/lm;->a:Z

    invoke-static {}, Lcom/amap/api/col/l3s/lm;->b()I

    move-result v1

    mul-int/lit16 v11, v1, 0x400

    sget v1, Lcom/amap/api/col/l3s/lm;->b:I

    mul-int/lit16 v12, v1, 0x400

    const-string v13, "staticUpdate"

    invoke-static {}, Lcom/amap/api/col/l3s/lm;->c()I

    move-result v1

    mul-int/lit16 v14, v1, 0x400

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/amap/api/col/l3s/lx;-><init>(Landroid/content/Context;ZIILjava/lang/String;I)V

    invoke-direct {v6, v7, v15}, Lcom/amap/api/col/l3s/lw;-><init>(Ljava/lang/String;Lcom/amap/api/col/l3s/ma;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/col/l3s/lz;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/amap/api/col/l3s/ma;)V

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    :cond_f
    invoke-static {v0}, Lcom/amap/api/col/l3s/lh;->a(Lcom/amap/api/col/l3s/lg;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    const-string v1, "stm"

    const-string v2, "usd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method
