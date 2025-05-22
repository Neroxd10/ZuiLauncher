.class final Lcom/amap/api/col/l3s/v$i;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/amap/api/col/l3s/v$h;

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3s/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3s/v;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/v$i;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->r:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3s/v$i;->l:I

    iput v1, p0, Lcom/amap/api/col/l3s/v$i;->m:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->o:Z

    iput v0, p0, Lcom/amap/api/col/l3s/v$i;->n:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/v$i;->t:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/v$i;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->b:Z

    return v0
.end method

.method private k()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->i:Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/v$h;->d()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$h;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->h:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/v$j;->c(Lcom/amap/api/col/l3s/v$i;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Lcom/amap/api/col/l3s/v$h;

    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->t:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/amap/api/col/l3s/v$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->h:Z

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->i:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v14, v12

    const/4 v6, 0x0

    :goto_0
    const/4 v13, 0x0

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/amap/api/col/l3s/v$i;->a:Z

    if-eqz v2, :cond_0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->k()V

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->l()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->q:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1
    iget-boolean v2, v1, Lcom/amap/api/col/l3s/v$i;->d:Z

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->c:Z

    if-eq v2, v0, :cond_2

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->c:Z

    iget-boolean v2, v1, Lcom/amap/api/col/l3s/v$i;->c:Z

    iput-boolean v2, v1, Lcom/amap/api/col/l3s/v$i;->d:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-boolean v2, v1, Lcom/amap/api/col/l3s/v$i;->k:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->k()V

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->l()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/amap/api/col/l3s/v$i;->k:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->k()V

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->l()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, v1, Lcom/amap/api/col/l3s/v$i;->i:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->k()V

    :cond_5
    if-eqz v0, :cond_8

    iget-boolean v2, v1, Lcom/amap/api/col/l3s/v$i;->h:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/v;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lcom/amap/api/col/l3s/v;->g(Lcom/amap/api/col/l3s/v;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/v$j;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->l()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$j;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$h;->e()V

    :cond_9
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->g:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->i:Z

    if-eqz v0, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->k()V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->f:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->g:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->g:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->p:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v14, 0x0

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->n()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->h:Z

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/v$j;->b(Lcom/amap/api/col/l3s/v$i;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, v1, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/v$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->h:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v7, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3s/v$j;->c(Lcom/amap/api/col/l3s/v$i;)V

    throw v0

    :cond_f
    :goto_5
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->i:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->i:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    :cond_10
    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->i:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->r:Z

    if-eqz v0, :cond_11

    iget v0, v1, Lcom/amap/api/col/l3s/v$i;->l:I

    iget v2, v1, Lcom/amap/api/col/l3s/v$i;->m:I

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/amap/api/col/l3s/v$i;->r:Z

    move v11, v0

    move v12, v2

    move v0, v8

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->o:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :goto_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v13, :cond_12

    :try_start_6
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_14

    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/v$h;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v8, 0x1

    :try_start_7
    iput-boolean v8, v1, Lcom/amap/api/col/l3s/v$i;->j:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move v8, v0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_13
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v15, 0x1

    :try_start_9
    iput-boolean v15, v1, Lcom/amap/api/col/l3s/v$i;->j:Z

    iput-boolean v15, v1, Lcom/amap/api/col/l3s/v$i;->f:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_14
    :goto_8
    if-eqz v9, :cond_15

    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/v$h;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/amap/api/col/l3s/v$j;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move v9, v0

    :cond_15
    if-eqz v7, :cond_17

    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/v;

    if-eqz v2, :cond_16

    invoke-static {v2}, Lcom/amap/api/col/l3s/v;->h(Lcom/amap/api/col/l3s/v;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    iget-object v7, v1, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    iget-object v7, v7, Lcom/amap/api/col/l3s/v$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v6, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    move v7, v0

    :cond_17
    if-eqz v10, :cond_19

    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/v;

    if-eqz v2, :cond_18

    invoke-static {v2}, Lcom/amap/api/col/l3s/v;->h(Lcom/amap/api/col/l3s/v;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    move v10, v0

    :cond_19
    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/v;

    if-eqz v2, :cond_1a

    invoke-static {v2}, Lcom/amap/api/col/l3s/v;->h(Lcom/amap/api/col/l3s/v;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1a
    iget-object v2, v1, Lcom/amap/api/col/l3s/v$i;->s:Lcom/amap/api/col/l3s/v$h;

    iget-object v15, v2, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, v2, Lcom/amap/api/col/l3s/v$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    move/from16 v16, v3

    iget-object v3, v2, Lcom/amap/api/col/l3s/v$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v15, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    const/16 v3, 0x3000

    if-nez v0, :cond_1b

    iget-object v0, v2, Lcom/amap/api/col/l3s/v$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    goto :goto_9

    :cond_1b
    move v0, v3

    :goto_9
    if-eq v0, v3, :cond_1d

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_1c

    const-string v2, "GLThread"

    const-string v3, "eglSwapBuffers"

    invoke-static {v2, v3, v0}, Lcom/amap/api/col/l3s/v$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, v1, Lcom/amap/api/col/l3s/v$i;->f:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_a

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1c
    const/4 v0, 0x1

    move v3, v0

    goto :goto_b

    :cond_1d
    const/4 v0, 0x1

    :goto_a
    move/from16 v3, v16

    :goto_b
    if-eqz v14, :cond_1e

    move v4, v0

    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1f
    :try_start_d
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v2

    monitor-enter v2

    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->k()V

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3s/v$i;->l()V

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private n()Z
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/l3s/v$i;->l:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/l3s/v$i;->m:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->o:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/amap/api/col/l3s/v$i;->n:I

    if-ne p0, v1, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/amap/api/col/l3s/v$i;->n:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/l3s/v$i;->n:I

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(II)V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/l3s/v$i;->l:I

    iput p2, p0, Lcom/amap/api/col/l3s/v$i;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/v$i;->r:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/v$i;->o:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/v$i;->p:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->b:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->p:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->i:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/v$i;->n()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_1

    :cond_0
    move v1, p2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/v$i;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "r must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->o:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->j:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->e:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->g:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getTextureViewDestorySync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->c:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->b:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getTextureViewDestorySync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->c:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/v$i;->o:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->p:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->a:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/v$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/v$i;->k:Z

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final i()I
    .locals 1

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/amap/api/col/l3s/v$i;->l:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()I
    .locals 1

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/amap/api/col/l3s/v$i;->m:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/v$i;->m()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/v$j;->a(Lcom/amap/api/col/l3s/v$i;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/v$j;->a(Lcom/amap/api/col/l3s/v$i;)V

    throw v0

    :catch_0
    invoke-static {}, Lcom/amap/api/col/l3s/v;->d()Lcom/amap/api/col/l3s/v$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/v$j;->a(Lcom/amap/api/col/l3s/v$i;)V

    return-void
.end method
