.class public final Lcom/amap/api/col/l3s/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/ky$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/t$b;,
        Lcom/amap/api/col/l3s/t$d;,
        Lcom/amap/api/col/l3s/t$a;,
        Lcom/amap/api/col/l3s/t$c;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3s/t$a;

.field private final b:Landroid/content/Context;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Lcom/amap/api/col/l3s/lf;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/t$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/t;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/t;->a:Lcom/amap/api/col/l3s/t$a;

    new-instance p1, Lcom/amap/api/col/l3s/lf;

    new-instance v0, Lcom/amap/api/col/l3s/t$b;

    invoke-direct {v0, p2}, Lcom/amap/api/col/l3s/t$b;-><init>(Lcom/amap/api/col/l3s/t$a;)V

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3s/lf;-><init>(Lcom/amap/api/col/l3s/ld;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/t;->d:Lcom/amap/api/col/l3s/lf;

    invoke-virtual {p2}, Lcom/amap/api/col/l3s/t$a;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/t;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/t;->a:Lcom/amap/api/col/l3s/t$a;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/t$a;->e()Lcom/amap/api/col/l3s/t$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/t$c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/t$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/t$c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/t;->a:Lcom/amap/api/col/l3s/t$a;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/t$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/t;->d:Lcom/amap/api/col/l3s/lf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/t;->d:Lcom/amap/api/col/l3s/lf;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ky;->a(Lcom/amap/api/col/l3s/ky$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AuthTaskDownload"

    const-string v1, "startDownload()"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onDownload([BJ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/t;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3s/t;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/t;->c:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/t;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/t;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AuthTaskDownload"

    const-string p2, "onDownload()"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onException(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/t;->c:Ljava/io/RandomAccessFile;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/t;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AuthTaskDownload"

    const-string v0, "onException()"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onFinish()V
    .locals 11

    const-string v0, "AuthTaskDownload"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/t;->c:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/t;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "onFinish3"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/t;->a:Lcom/amap/api/col/l3s/t$a;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/t$a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/t;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/amap/api/col/l3s/jc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/t;->a:Lcom/amap/api/col/l3s/t$a;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/t$a;->d()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v3, Lcom/amap/api/col/l3s/by;

    invoke-direct {v3}, Lcom/amap/api/col/l3s/by;-><init>()V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/amap/api/col/l3s/t;->e:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/amap/api/col/l3s/ce;->a(Ljava/io/File;)J

    move-result-wide v8

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/amap/api/col/l3s/by;->a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/col/l3s/by$a;)J

    iget-object v1, p0, Lcom/amap/api/col/l3s/t;->a:Lcom/amap/api/col/l3s/t$a;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/t$a;->e()Lcom/amap/api/col/l3s/t$c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/t$c;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3s/t;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/t$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amap/api/col/l3s/t$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1, v2}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/amap/api/col/l3s/t;->e:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    const-string v1, "onFinish1"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :cond_2
    :try_start_5
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/amap/api/col/l3s/t;->e:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    :try_start_6
    const-string v1, "onFinish"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    const-string v1, "onFinish()"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop()V
    .locals 0

    return-void
.end method
