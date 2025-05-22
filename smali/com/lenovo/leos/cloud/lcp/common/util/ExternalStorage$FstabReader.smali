.class public final Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FstabReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/system/etc/"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->b:Ljava/lang/String;

    const-string v0, ".fstab"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->e()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->c:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;Ljava/io/File;)V
    .locals 11

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p2, "UTF-8"

    invoke-direct {v2, v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    if-eqz p0, :cond_3

    const-string v3, "dev_mount"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\\s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    aget-object p0, v3, p0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;-><init>()V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    iput v5, v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableBlocks:I

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    mul-long/2addr v5, v7

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v5, v9

    const-wide/16 v9, 0x400

    div-long/2addr v5, v9

    iput-wide v5, v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableSpace:J

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v7

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v7, v3

    mul-long/2addr v5, v7

    div-long/2addr v5, v9

    iput-wide v5, v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->totalSpace:J

    iput-object p0, v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-lez p0, :cond_0

    invoke-interface {p1, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;->onFsFound(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_3
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p2, p0, v0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object p2, p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p2, p0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, p0

    move-object v2, p2

    :goto_2
    move-object p0, p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object p2, p0

    move-object v2, p2

    :goto_3
    move-object p0, p1

    :goto_4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p2, p0, v0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_2
    move-exception p0

    :goto_5
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0

    :cond_4
    :goto_6
    return-void
.end method

.method private c()[Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$b;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$b;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->findStorageInfoListByVolumePaths(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$a;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$a;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->iterateFileSystem(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;)V

    return-object v0
.end method

.method private e()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public browseDefaultStorage(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;)V
    .locals 8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;-><init>()V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableBlocks:I

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    mul-long/2addr v2, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x400

    div-long/2addr v2, v6

    iput-wide v2, v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableSpace:J

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    iput-wide v2, v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->totalSpace:J

    iput-object p0, v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;->onFsFound(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;)V

    :cond_0
    return-void
.end method

.method protected findStorageInfoListByVolumePaths(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->c(Landroid/os/storage/StorageManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->d(Landroid/os/storage/StorageManager;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;-><init>()V

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    iput v6, v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableBlocks:I

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x1

    mul-long/2addr v6, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v6, v10

    const-wide/16 v10, 0x400

    div-long/2addr v6, v10

    iput-wide v6, v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->availableSpace:J

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    iput-wide v6, v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->totalSpace:J

    iput-object v3, v4, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public getStorages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->b(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v4, v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->diskType:I

    goto :goto_0

    :cond_2
    :goto_1
    iput v3, v1, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$StorageInfo;->diskType:I

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->a:Ljava/util/List;

    return-object p0
.end method

.method protected iterateFileSystem(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->c()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0, p1, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->b(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->browseDefaultStorage(Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader$OnFsFoundListener;)V

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage$FstabReader;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method
