.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$c;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

    invoke-static {p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$c;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache$c;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$c;Lcom/bumptech/glide/disklrucache/DiskLruCache$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$c;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$c;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

    return-object p0
.end method

.method static synthetic b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b:[Z

    return-object p0
.end method

.method private c(I)Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$c;->g(Lcom/bumptech/glide/disklrucache/DiskLruCache$c;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$c;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache$c;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$c;->j(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    monitor-exit v0

    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->g(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    iput-boolean v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->c:Z

    return-void
.end method

.method public getFile(I)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$c;->g(Lcom/bumptech/glide/disklrucache/DiskLruCache$c;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$c;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache$c;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache$c;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$c;->k(I)Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->c(I)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public set(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/OutputStreamWriter;

    sget-object p1, Lcom/bumptech/glide/disklrucache/b;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/bumptech/glide/disklrucache/b;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/b;->a(Ljava/io/Closeable;)V

    throw p1
.end method
