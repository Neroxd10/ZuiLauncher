.class public abstract Lcom/amap/api/col/l3s/fa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/fa$c;,
        Lcom/amap/api/col/l3s/fa$b;,
        Lcom/amap/api/col/l3s/fa$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3s/fb;

.field private b:Lcom/amap/api/col/l3s/fb$a;

.field protected c:Z

.field protected d:Landroid/content/res/Resources;

.field private e:Z

.field private final f:Ljava/lang/Object;

.field private g:Lcom/amap/api/col/l3s/fa$c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fa;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fa;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fa;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/fa;->g:Lcom/amap/api/col/l3s/fa$c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/fa;->d:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fa;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fa;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Lcom/amap/api/col/l3s/dj$a;)V
    .locals 0

    invoke-static {p0}, Lcom/amap/api/col/l3s/fa;->c(Lcom/amap/api/col/l3s/dj$a;)Lcom/amap/api/col/l3s/fa$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/dx;->c()Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/dj$a;)Lcom/amap/api/col/l3s/fa$a;
    .locals 0

    invoke-static {p0}, Lcom/amap/api/col/l3s/fa;->c(Lcom/amap/api/col/l3s/dj$a;)Lcom/amap/api/col/l3s/fa$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/fa;)Lcom/amap/api/col/l3s/fb;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    return-object p0
.end method

.method private static c(Lcom/amap/api/col/l3s/dj$a;)Lcom/amap/api/col/l3s/fa$a;
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/dj$a;->j:Lcom/amap/api/col/l3s/fa$a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/fa;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/fa;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/fa;)Lcom/amap/api/col/l3s/fa$c;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fa;->g:Lcom/amap/api/col/l3s/fa$c;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fa;->e:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/fa;->a(Z)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/fa$c;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fa;->g:Lcom/amap/api/col/l3s/fa$c;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/fb$a;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/l3s/fa;->b:Lcom/amap/api/col/l3s/fb$a;

    invoke-static {p1}, Lcom/amap/api/col/l3s/fb;->a(Lcom/amap/api/col/l3s/fb$a;)Lcom/amap/api/col/l3s/fb;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    new-instance p1, Lcom/amap/api/col/l3s/fa$b;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/fa$b;-><init>(Lcom/amap/api/col/l3s/fa;)V

    const/4 p0, 0x1

    new-array v0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3s/dx;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fa;->b:Lcom/amap/api/col/l3s/fb$a;

    sget-object v1, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/amap/api/col/l3s/fb$a;->j:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/amap/api/col/l3s/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/col/l3s/fb$a;->c:Ljava/io/File;

    new-instance p1, Lcom/amap/api/col/l3s/fa$b;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/fa$b;-><init>(Lcom/amap/api/col/l3s/fa;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/dx;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fa;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fa;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/fa;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final a(ZLcom/amap/api/col/l3s/dj$a;)V
    .locals 3

    const-string v0, "-"

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/amap/api/col/l3s/dj$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/amap/api/col/l3s/dj$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/amap/api/col/l3s/dj$a;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/fb;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Lcom/amap/api/col/l3s/dj$a;->a(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    new-instance v0, Lcom/amap/api/col/l3s/fa$a;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/col/l3s/fa$a;-><init>(Lcom/amap/api/col/l3s/fa;Lcom/amap/api/col/l3s/dj$a;)V

    iput-object v0, p2, Lcom/amap/api/col/l3s/dj$a;->j:Lcom/amap/api/col/l3s/fa$a;

    sget-object p0, Lcom/amap/api/col/l3s/dx;->c:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {v0, p0, p2}, Lcom/amap/api/col/l3s/dx;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected final b()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fb;->a()V

    :cond_0
    return-void
.end method

.method protected final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/fb;->a(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fb;->b()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 3

    new-instance v0, Lcom/amap/api/col/l3s/fa$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/fa$b;-><init>(Lcom/amap/api/col/l3s/fa;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/dx;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;

    return-void
.end method

.method protected final d()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fb;->c()V

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/fb;->a(Z)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fa;->a:Lcom/amap/api/col/l3s/fb;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fb;->a()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    new-instance v0, Lcom/amap/api/col/l3s/fa$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/fa$b;-><init>(Lcom/amap/api/col/l3s/fa;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/dx;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3s/dx;

    return-void
.end method
