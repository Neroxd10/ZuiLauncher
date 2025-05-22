.class public final Lcom/amap/api/col/l3s/cb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/ky$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/cb$a;,
        Lcom/amap/api/col/l3s/cb$b;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3s/cc;

.field b:J

.field c:J

.field d:J

.field e:Z

.field f:Lcom/amap/api/col/l3s/bw;

.field g:J

.field h:Lcom/amap/api/col/l3s/cb$a;

.field private i:Landroid/content/Context;

.field private j:Lcom/amap/api/col/l3s/ch;

.field private k:Ljava/lang/String;

.field private l:Lcom/amap/api/col/l3s/lf;

.field private m:Lcom/amap/api/col/l3s/bx;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/cc;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/l3s/ch;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cb;->b:J

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cb;->c:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/cb;->e:Z

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cb;->g:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/cb;->n:Z

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/l3s/bw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bw;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3s/cb;->f:Lcom/amap/api/col/l3s/bw;

    iput-object p1, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    iput-object p3, p0, Lcom/amap/api/col/l3s/cb;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/cb;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/cc;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/cc;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/cb;->e:Z

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3s/cb;->b:J

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/cb;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3s/cb;->d:J

    iput-wide p1, p0, Lcom/amap/api/col/l3s/cb;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/amap/api/col/l3s/ch$a;->c:Lcom/amap/api/col/l3s/ch$a;

    invoke-interface {p0, p1}, Lcom/amap/api/col/l3s/ch;->a(Lcom/amap/api/col/l3s/ch$a;)V

    :cond_0
    return-void

    :cond_1
    iput-wide v0, p0, Lcom/amap/api/col/l3s/cb;->b:J

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cb;->c:J

    return-void
.end method

.method private c()J
    .locals 4

    iget-object p0, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cc;->a()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/lc;->b()Lcom/amap/api/col/l3s/lc;

    new-instance v0, Lcom/amap/api/col/l3s/cb$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cb$b;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getProtocol()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/lc;->b(Lcom/amap/api/col/l3s/ld;Z)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3s/it; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    const/4 v0, -0x1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Length"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    int-to-long v0, v0

    return-wide v0
.end method

.method private d()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/cb;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cb;->e()V

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cb;->g:J

    iget-wide v0, p0, Lcom/amap/api/col/l3s/cb;->b:J

    iget-wide v2, p0, Lcom/amap/api/col/l3s/cb;->d:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz v4, :cond_0

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/amap/api/col/l3s/ch;->a(JJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/cb;->g:J

    :cond_0
    return-void
.end method

.method private e()V
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3s/cb;->f:Lcom/amap/api/col/l3s/bw;

    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/cc;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/cc;->d()I

    move-result v2

    iget-wide v3, p0, Lcom/amap/api/col/l3s/cb;->d:J

    iget-wide v5, p0, Lcom/amap/api/col/l3s/cb;->b:J

    iget-wide v7, p0, Lcom/amap/api/col/l3s/cb;->c:J

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/col/l3s/bw;->a(Ljava/lang/String;IJJJ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    const-string v0, "SiteFileFetch"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lcom/amap/api/col/l3s/iw;->a:I
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    move v1, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/amap/api/col/l3s/cb;->i:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/iw;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    const-string v5, "authOffLineDownLoad"

    invoke-static {v4, v0, v5}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget v1, Lcom/amap/api/col/l3s/iw;->a:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    sget-object v2, Lcom/amap/api/col/l3s/ch$a;->a:Lcom/amap/api/col/l3s/ch$a;

    invoke-interface {v1, v2}, Lcom/amap/api/col/l3s/ch;->a(Lcom/amap/api/col/l3s/ch$a;)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/cc;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {v4}, Lcom/amap/api/col/l3s/cc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-nez v1, :cond_5

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/cb;->e:Z

    :cond_5
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/cb;->e:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cb;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/col/l3s/cb;->d:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    const-wide/16 v6, -0x2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    iput-wide v4, p0, Lcom/amap/api/col/l3s/cb;->c:J

    :cond_6
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/amap/api/col/l3s/cb;->b:J

    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    invoke-interface {v1}, Lcom/amap/api/col/l3s/ch;->i()V

    :cond_8
    iget-wide v4, p0, Lcom/amap/api/col/l3s/cb;->b:J

    iget-wide v6, p0, Lcom/amap/api/col/l3s/cb;->c:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_9

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cb;->onFinish()V

    return-void

    :cond_9
    new-instance v1, Lcom/amap/api/col/l3s/ci;

    iget-object v4, p0, Lcom/amap/api/col/l3s/cb;->k:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/amap/api/col/l3s/ci;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x7530

    invoke-virtual {v1, v4}, Lcom/amap/api/col/l3s/ld;->setConnectionTimeout(I)V

    invoke-virtual {v1, v4}, Lcom/amap/api/col/l3s/ld;->setSoTimeout(I)V

    new-instance v9, Lcom/amap/api/col/l3s/lf;

    iget-wide v4, p0, Lcom/amap/api/col/l3s/cb;->b:J

    iget-wide v6, p0, Lcom/amap/api/col/l3s/cb;->c:J

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getProtocol()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_a

    move v8, v3

    goto :goto_3

    :cond_a
    move v8, v2

    :goto_3
    move-object v2, v9

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/col/l3s/lf;-><init>(Lcom/amap/api/col/l3s/ld;JJZ)V

    iput-object v9, p0, Lcom/amap/api/col/l3s/cb;->l:Lcom/amap/api/col/l3s/lf;

    new-instance v1, Lcom/amap/api/col/l3s/bx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/cc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/l3s/cb;->a:Lcom/amap/api/col/l3s/cc;

    invoke-virtual {v3}, Lcom/amap/api/col/l3s/cc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/amap/api/col/l3s/cb;->b:J

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/col/l3s/bx;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/cb;->m:Lcom/amap/api/col/l3s/bx;

    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->l:Lcom/amap/api/col/l3s/lf;

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/ky;->a(Lcom/amap/api/col/l3s/ky$a;)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    sget-object v2, Lcom/amap/api/col/l3s/ch$a;->b:Lcom/amap/api/col/l3s/ch$a;

    invoke-interface {v1, v2}, Lcom/amap/api/col/l3s/ch;->a(Lcom/amap/api/col/l3s/ch$a;)V
    :try_end_2
    .catch Lcom/amap/api/maps/AMapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    return-void

    :catch_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz p0, :cond_d

    sget-object v0, Lcom/amap/api/col/l3s/ch$a;->c:Lcom/amap/api/col/l3s/ch$a;

    invoke-interface {p0, v0}, Lcom/amap/api/col/l3s/ch;->a(Lcom/amap/api/col/l3s/ch$a;)V

    :cond_d
    return-void

    :catch_1
    move-exception v1

    const-string v2, "download"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz p0, :cond_e

    sget-object v0, Lcom/amap/api/col/l3s/ch$a;->a:Lcom/amap/api/col/l3s/ch$a;

    invoke-interface {p0, v0}, Lcom/amap/api/col/l3s/ch;->a(Lcom/amap/api/col/l3s/ch$a;)V

    :cond_e
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/cb$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/cb;->h:Lcom/amap/api/col/l3s/cb$a;

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cb;->l:Lcom/amap/api/col/l3s/lf;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ky;->a()V

    :cond_0
    return-void
.end method

.method public final onDownload([BJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cb;->m:Lcom/amap/api/col/l3s/bx;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/bx;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide p2, p0, Lcom/amap/api/col/l3s/cb;->b:J

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cb;->d()V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p2, "fileAccessI"

    const-string p3, "fileAccessI.write(byte[] data)"

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/amap/api/col/l3s/ch$a;->c:Lcom/amap/api/col/l3s/ch$a;

    invoke-interface {p1, p2}, Lcom/amap/api/col/l3s/ch;->a(Lcom/amap/api/col/l3s/ch$a;)V

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/cb;->l:Lcom/amap/api/col/l3s/lf;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ky;->a()V

    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/cb;->n:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cb;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amap/api/col/l3s/ch$a;->b:Lcom/amap/api/col/l3s/ch$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3s/ch;->a(Lcom/amap/api/col/l3s/ch$a;)V

    :cond_0
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/cb;->m:Lcom/amap/api/col/l3s/bx;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bx;->a()V

    :cond_2
    return-void
.end method

.method public final onFinish()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cb;->d()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/col/l3s/ch;->j()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cb;->m:Lcom/amap/api/col/l3s/bx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bx;->a()V

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/cb;->h:Lcom/amap/api/col/l3s/cb$a;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/amap/api/col/l3s/cb$a;->c()V

    :cond_2
    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/cb;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/cb;->j:Lcom/amap/api/col/l3s/ch;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amap/api/col/l3s/ch;->k()V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/cb;->e()V

    return-void
.end method
