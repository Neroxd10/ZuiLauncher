.class public final Lcom/amap/api/col/l3s/jr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/jr$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/l3s/je;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/amap/api/col/l3s/jt;

.field private i:Lcom/amap/api/col/l3s/jt;

.field private j:Lcom/amap/api/col/l3s/kb$a;

.field private k:Lcom/amap/api/col/l3s/kb$a;

.field private l:Landroid/os/Handler;

.field private m:Lcom/amap/api/col/l3s/lg;

.field private n:Lcom/amap/api/col/l3s/lg;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/je;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/jr;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/jr;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/jr;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/jr;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->g:Ljava/util/List;

    new-instance v0, Lcom/amap/api/col/l3s/jt;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/jt;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->h:Lcom/amap/api/col/l3s/jt;

    new-instance v0, Lcom/amap/api/col/l3s/jt;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/jt;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->i:Lcom/amap/api/col/l3s/jt;

    new-instance v0, Lcom/amap/api/col/l3s/jr$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/jr$1;-><init>(Lcom/amap/api/col/l3s/jr;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->j:Lcom/amap/api/col/l3s/kb$a;

    new-instance v0, Lcom/amap/api/col/l3s/jr$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/jr$2;-><init>(Lcom/amap/api/col/l3s/jr;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->k:Lcom/amap/api/col/l3s/kb$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->l:Landroid/os/Handler;

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    iput-object p1, p0, Lcom/amap/api/col/l3s/jr;->b:Lcom/amap/api/col/l3s/je;

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 4

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/jr;->b:Lcom/amap/api/col/l3s/je;

    invoke-static {v2}, Lcom/amap/api/col/l3s/ju;->a(Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/ju;

    move-result-object v2

    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, v0, v0, p1}, Lcom/amap/api/col/l3s/ju;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/jr;)Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/jr;->l:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/jr;->l:Landroid/os/Handler;

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->l:Landroid/os/Handler;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/jr;
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amap/api/col/l3s/jr$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/col/l3s/jr$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/col/l3s/jr;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3s/jr;-><init>(Lcom/amap/api/col/l3s/je;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/amap/api/col/l3s/jr$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3s/jr;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/col/l3s/je;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/je;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amap/api/col/l3s/jc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const-string p2, "a"

    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "EBDEC84EF205FEA2DF0719DEB822869E"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private a(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/jr;->b(I)Lcom/amap/api/col/l3s/jt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/jt;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/jq;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "[]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/amap/api/col/l3s/jr;->b:Lcom/amap/api/col/l3s/je;

    invoke-static {p1}, Lcom/amap/api/col/l3s/jq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/jr;->c(I)Lcom/amap/api/col/l3s/lg;

    move-result-object p0

    invoke-static {v2, v3, v4, p0, v1}, Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/jt;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/jr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/jr;->b:Lcom/amap/api/col/l3s/je;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ju;->a(Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/ju;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    const-string v4, ""

    const-string v5, ""

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/col/l3s/ju;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private b(I)Lcom/amap/api/col/l3s/jt;
    .locals 1

    sget v0, Lcom/amap/api/col/l3s/jq;->b:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->i:Lcom/amap/api/col/l3s/jt;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->h:Lcom/amap/api/col/l3s/jt;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/jr;)Lcom/amap/api/col/l3s/lg;
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->c()Lcom/amap/api/col/l3s/lg;

    move-result-object p0

    return-object p0
.end method

.method private b(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/jr;->c(Z)V

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/jr;->d(Z)V

    return-void
.end method

.method private b()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c()Lcom/amap/api/col/l3s/lg;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->d()Lcom/amap/api/col/l3s/lg;

    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    return-object p0
.end method

.method private c(I)Lcom/amap/api/col/l3s/lg;
    .locals 1

    sget v0, Lcom/amap/api/col/l3s/jq;->b:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->c()Lcom/amap/api/col/l3s/lg;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->e()Lcom/amap/api/col/l3s/lg;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    :cond_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/jr;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    sget v0, Lcom/amap/api/col/l3s/jq;->b:I

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->c(I)Lcom/amap/api/col/l3s/lg;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    check-cast v1, Lcom/amap/api/col/l3s/js;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3s/js;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->j:Lcom/amap/api/col/l3s/kb$a;

    invoke-static {p1, v0, p0}, Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Lcom/amap/api/col/l3s/kb$a;)V

    return-void
.end method

.method private d()Lcom/amap/api/col/l3s/lg;
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/amap/api/col/l3s/lg;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/lg;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    const-wide/32 v2, 0x1e848000

    iput-wide v2, v0, Lcom/amap/api/col/l3s/lg;->b:J

    const/16 v2, 0x30d4

    iput v2, v0, Lcom/amap/api/col/l3s/lg;->d:I

    const-string v2, "1"

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->c:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v0, Lcom/amap/api/col/l3s/lg;->h:I

    const-string v2, "elkey"

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->i:Ljava/lang/String;

    const-string v0, "error"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->a(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    new-instance v8, Lcom/amap/api/col/l3s/js;

    const/4 v3, 0x1

    new-instance v4, Lcom/amap/api/col/l3s/mb;

    iget-object v2, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/amap/api/col/l3s/jr;->d:Z

    invoke-direct {v4, v2, v7}, Lcom/amap/api/col/l3s/mb;-><init>(Landroid/content/Context;Z)V

    const v7, 0x989680

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/l3s/js;-><init>(ZLcom/amap/api/col/l3s/ma;JI)V

    iput-object v8, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->n:Lcom/amap/api/col/l3s/lg;

    iput-object v1, p0, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/jr;)Lcom/amap/api/col/l3s/lg;
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->e()Lcom/amap/api/col/l3s/lg;

    move-result-object p0

    return-object p0
.end method

.method private d(Z)V
    .locals 2

    sget v0, Lcom/amap/api/col/l3s/jq;->a:I

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->c(I)Lcom/amap/api/col/l3s/lg;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    check-cast v1, Lcom/amap/api/col/l3s/js;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3s/js;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->k:Lcom/amap/api/col/l3s/kb$a;

    invoke-static {p1, v0, p0}, Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/lg;Lcom/amap/api/col/l3s/kb$a;)V

    return-void
.end method

.method private e()Lcom/amap/api/col/l3s/lg;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->f()Lcom/amap/api/col/l3s/lg;

    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/jr;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->d(Z)V

    return-void
.end method

.method private f()Lcom/amap/api/col/l3s/lg;
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/amap/api/col/l3s/lg;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/lg;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    const-wide/32 v2, 0x1e848000

    iput-wide v2, v0, Lcom/amap/api/col/l3s/lg;->b:J

    const/16 v2, 0x30d4

    iput v2, v0, Lcom/amap/api/col/l3s/lg;->d:I

    const-string v2, "1"

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->c:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v0, Lcom/amap/api/col/l3s/lg;->h:I

    const-string v2, "inlkey"

    iput-object v2, v0, Lcom/amap/api/col/l3s/lg;->i:Ljava/lang/String;

    const-string v0, "info"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->a(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    new-instance v8, Lcom/amap/api/col/l3s/js;

    iget-boolean v3, p0, Lcom/amap/api/col/l3s/jr;->f:Z

    new-instance v4, Lcom/amap/api/col/l3s/mb;

    iget-object v2, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/amap/api/col/l3s/jr;->d:Z

    invoke-direct {v4, v2, v7}, Lcom/amap/api/col/l3s/mb;-><init>(Landroid/content/Context;Z)V

    const v7, 0x1c9c380

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/l3s/js;-><init>(ZLcom/amap/api/col/l3s/ma;JI)V

    iput-object v8, v0, Lcom/amap/api/col/l3s/lg;->f:Lcom/amap/api/col/l3s/ma;

    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->m:Lcom/amap/api/col/l3s/lg;

    iput-object v1, p0, Lcom/amap/api/col/l3s/lg;->g:Lcom/amap/api/col/l3s/lu;

    return-object p0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->b:Lcom/amap/api/col/l3s/je;

    const-string v1, "CAF9B6B99962BF5C2264824231D7A40C"

    invoke-static {v0, v1, p0}, Lcom/amap/api/col/l3s/jr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/col/l3s/je;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/jr;->b:Lcom/amap/api/col/l3s/je;

    const-string v1, "CB5E100E5A9A3E7F6D1FD97512215282"

    invoke-static {v0, v1, p0}, Lcom/amap/api/col/l3s/jr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/col/l3s/je;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/amap/api/col/l3s/jq;->b:I

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->a(I)V

    sget v0, Lcom/amap/api/col/l3s/jq;->a:I

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->a(I)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/jq;)V
    .locals 7

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/jr;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/l3s/jq;->a(Lcom/amap/api/col/l3s/jq;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/l3s/jr;->g:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/jr;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/col/l3s/jr;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/jq;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3s/jr;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/jr;->e:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/jq;->a()I

    move-result v0

    sget v2, Lcom/amap/api/col/l3s/jq;->a:I

    if-ne v0, v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/jq;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/jr;->b(I)Lcom/amap/api/col/l3s/jt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/jq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3s/jt;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/jt;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/jq;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    if-nez v3, :cond_8

    return-void

    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "[]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/amap/api/col/l3s/jr;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/col/l3s/jr;->b:Lcom/amap/api/col/l3s/je;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/jq;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/jq;->a()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/amap/api/col/l3s/jr;->c(I)Lcom/amap/api/col/l3s/lg;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v2}, Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Lcom/amap/api/col/l3s/lg;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3s/jr;->b(Z)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/jt;->b()V

    goto :goto_4

    :cond_a
    :goto_3
    return-void

    :cond_b
    :goto_4
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/jt;->a(Lcom/amap/api/col/l3s/jq;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/jr;->b(Z)V

    return-void
.end method

.method public final a(ZZZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/jr;->c:Z

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/jr;->d:Z

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/jr;->e:Z

    iput-boolean p4, p0, Lcom/amap/api/col/l3s/jr;->f:Z

    iput-object p5, p0, Lcom/amap/api/col/l3s/jr;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->d()Lcom/amap/api/col/l3s/lg;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/jr;->f()Lcom/amap/api/col/l3s/lg;

    return-void
.end method
