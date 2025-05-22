.class public final Lcom/amap/api/col/l3s/dl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/dl$b;,
        Lcom/amap/api/col/l3s/dl$a;,
        Lcom/amap/api/col/l3s/dl$d;,
        Lcom/amap/api/col/l3s/dl$g;,
        Lcom/amap/api/col/l3s/dl$c;,
        Lcom/amap/api/col/l3s/dl$f;,
        Lcom/amap/api/col/l3s/dl$e;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3s/dl$d;

.field private b:Lcom/amap/api/col/l3s/dl$g;

.field private c:Lcom/amap/api/col/l3s/dl$c;

.field private d:Lcom/amap/api/col/l3s/dl$e;

.field private e:Lcom/amap/api/col/l3s/dl$e;

.field private f:Lcom/amap/api/col/l3s/dl$a;

.field private g:Lcom/amap/api/col/l3s/dl$b;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/dl;->h:J

    invoke-static {}, Lcom/autonavi/base/amap/mapcore/gles/AMapNativeGLShaderManager;->nativeCreateGLShaderManager()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/dl;->h:J

    return-void
.end method

.method private declared-synchronized c()Lcom/amap/api/col/l3s/dk;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->a:Lcom/amap/api/col/l3s/dl$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/dl$d;

    const-string v1, "texture_normal.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dl$d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dl;->a:Lcom/amap/api/col/l3s/dl$d;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->a:Lcom/amap/api/col/l3s/dl$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/amap/api/col/l3s/dk;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->b:Lcom/amap/api/col/l3s/dl$g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/dl$g;

    const-string v1, "texture.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dl$g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dl;->b:Lcom/amap/api/col/l3s/dl$g;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->b:Lcom/amap/api/col/l3s/dl$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Lcom/amap/api/col/l3s/dk;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->c:Lcom/amap/api/col/l3s/dl$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/dl$c;

    const-string v1, "texture_layer.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dl$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dl;->c:Lcom/amap/api/col/l3s/dl$c;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->c:Lcom/amap/api/col/l3s/dl$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Lcom/amap/api/col/l3s/dk;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->d:Lcom/amap/api/col/l3s/dl$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/dl$e;

    const-string v1, "point.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dl$e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dl;->d:Lcom/amap/api/col/l3s/dl$e;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->d:Lcom/amap/api/col/l3s/dl$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Lcom/amap/api/col/l3s/dk;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->e:Lcom/amap/api/col/l3s/dl$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/dl$f;

    const-string v1, "point_2.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/dl$f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dl;->e:Lcom/amap/api/col/l3s/dl$e;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->e:Lcom/amap/api/col/l3s/dl$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Lcom/amap/api/col/l3s/dl$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->f:Lcom/amap/api/col/l3s/dl$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/dl$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/dl$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dl;->f:Lcom/amap/api/col/l3s/dl$a;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->f:Lcom/amap/api/col/l3s/dl$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()Lcom/amap/api/col/l3s/dk;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->g:Lcom/amap/api/col/l3s/dl$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/dl$b;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/dl$b;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/dl;->g:Lcom/amap/api/col/l3s/dl$b;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->g:Lcom/amap/api/col/l3s/dl$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/dl;->h:J

    return-wide v0
.end method

.method public final a(I)Lcom/amap/api/col/l3s/dk;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dl;->g()Lcom/amap/api/col/l3s/dk;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dl;->i()Lcom/amap/api/col/l3s/dk;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dl;->h()Lcom/amap/api/col/l3s/dl$a;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dl;->f()Lcom/amap/api/col/l3s/dk;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dl;->e()Lcom/amap/api/col/l3s/dk;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dl;->c()Lcom/amap/api/col/l3s/dk;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-direct {p0}, Lcom/amap/api/col/l3s/dl;->d()Lcom/amap/api/col/l3s/dk;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->a:Lcom/amap/api/col/l3s/dl$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->a:Lcom/amap/api/col/l3s/dl$d;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dk;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dl;->a:Lcom/amap/api/col/l3s/dl$d;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->b:Lcom/amap/api/col/l3s/dl$g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->b:Lcom/amap/api/col/l3s/dl$g;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dk;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dl;->b:Lcom/amap/api/col/l3s/dl$g;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->c:Lcom/amap/api/col/l3s/dl$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->c:Lcom/amap/api/col/l3s/dl$c;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dk;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dl;->c:Lcom/amap/api/col/l3s/dl$c;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->d:Lcom/amap/api/col/l3s/dl$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->d:Lcom/amap/api/col/l3s/dl$e;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dk;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dl;->d:Lcom/amap/api/col/l3s/dl$e;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->e:Lcom/amap/api/col/l3s/dl$e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/dl;->e:Lcom/amap/api/col/l3s/dl$e;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dk;->a()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/dl;->e:Lcom/amap/api/col/l3s/dl$e;

    :cond_4
    iget-wide v0, p0, Lcom/amap/api/col/l3s/dl;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/amap/api/col/l3s/dl;->h:J

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/gles/AMapNativeGLShaderManager;->nativeDestroyGLShaderManager(J)V

    iput-wide v2, p0, Lcom/amap/api/col/l3s/dl;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
