.class public final Lcom/amap/api/col/l3s/jt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:I = 0x64

.field private static d:I = 0x2710


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amap/api/col/l3s/jq;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/amap/api/col/l3s/jt;->b:I

    iput v0, p0, Lcom/amap/api/col/l3s/jt;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/jt;->e:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/col/l3s/jt;->c:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jt;->a:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/amap/api/col/l3s/jt;->b:I

    iput p1, p0, Lcom/amap/api/col/l3s/jt;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3s/jt;->e:I

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/jt;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amap/api/col/l3s/jq;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/jt;->a:Ljava/util/Vector;

    return-object p0
.end method

.method public final declared-synchronized a(Lcom/amap/api/col/l3s/jq;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/jq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/jt;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/amap/api/col/l3s/jt;->e:I

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/jq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amap/api/col/l3s/jt;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/jt;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3s/jt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/amap/api/col/l3s/jt;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/2addr v1, p1

    sget p1, Lcom/amap/api/col/l3s/jt;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-le v1, p1, :cond_2

    return v3

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/jt;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/jt;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
