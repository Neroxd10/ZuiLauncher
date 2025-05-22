.class public Lcom/lenovo/lsf/common/InterProcessLock;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/FileOutputStream;

.field private c:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/lsf/common/HexString;->toString([B)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".lock"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InterProcessLock"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public lock(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "InterProcessLock"

    iget-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/lenovo/lsf/common/InterProcessLock;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->a:Ljava/io/File;

    if-nez p1, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->a:Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    const/4 p0, 0x0

    return p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v2
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;

    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->a:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public tryLock(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "InterProcessLock"

    iget-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/lenovo/lsf/common/InterProcessLock;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->a:Ljava/io/File;

    if-nez p1, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->a:Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;

    if-nez p1, :cond_2

    :try_start_4
    iget-object p1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    :goto_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    iput-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_1

    :try_start_5
    iget-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    iput-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->b:Ljava/io/FileOutputStream;

    :cond_1
    throw p1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->c:Ljava/nio/channels/FileLock;

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
