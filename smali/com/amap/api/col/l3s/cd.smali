.class public final Lcom/amap/api/col/l3s/cd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/cd$a;,
        Lcom/amap/api/col/l3s/cd$c;,
        Lcom/amap/api/col/l3s/cd$b;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3s/cd$b;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/ca;Lcom/amap/api/col/l3s/bz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3s/cd$b;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/l3s/cd$b;-><init>(Lcom/amap/api/col/l3s/ca;Lcom/amap/api/col/l3s/bz;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/cd;->a:Lcom/amap/api/col/l3s/cd$b;

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JJLcom/amap/api/col/l3s/cd$c;Lcom/amap/api/col/l3s/cd$a;)I
    .locals 8

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p0, 0x400

    new-array v1, p0, [B

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-virtual {p1, v1, v2, p0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    if-eqz p7, :cond_1

    iget-boolean v5, p7, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return v3

    :cond_1
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v3, v4

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_0

    if-eqz p6, :cond_0

    int-to-long v4, v3

    add-long/2addr v4, p2

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long/2addr v4, p4

    if-eqz p7, :cond_2

    iget-boolean v6, p7, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-nez v6, :cond_0

    :cond_2
    invoke-interface {p6, v4, v5}, Lcom/amap/api/col/l3s/cd$c;->a(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return v3
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/amap/api/col/l3s/cd;->a(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/amap/api/col/l3s/cd$c;Lcom/amap/api/col/l3s/cd$b;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3}, Lcom/amap/api/col/l3s/cd$b;->e()Lcom/amap/api/col/l3s/cd$a;

    move-result-object v6

    const-wide/16 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v3, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_0

    iget-boolean v8, v6, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/l3s/cd;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {p2}, Lcom/amap/api/col/l3s/cd$c;->a()V

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    add-long/2addr v1, v7

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amap/api/col/l3s/cd$b;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-wide v3, v1

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {p0, p3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, p1

    move-object v2, v0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/amap/api/col/l3s/cd;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JLcom/amap/api/col/l3s/cd$c;Lcom/amap/api/col/l3s/cd$a;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {p0}, Ljava/util/zip/CheckedInputStream;->close()V

    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JLcom/amap/api/col/l3s/cd$c;Lcom/amap/api/col/l3s/cd$a;)V
    .locals 9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p5, :cond_0

    iget-boolean v1, p5, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3s/cd;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/amap/api/col/l3s/cd$c;->a()V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amap/api/col/l3s/cd;->a(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_3
    int-to-long v3, v8

    move-object v0, v2

    move-object v1, p1

    move-wide v2, v3

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3s/cd;->a(Ljava/io/File;Ljava/util/zip/ZipInputStream;JJLcom/amap/api/col/l3s/cd$c;Lcom/amap/api/col/l3s/cd$a;)I

    move-result v0

    add-int/2addr v8, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd;->a:Lcom/amap/api/col/l3s/cd$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->f()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object p0, p0, Lcom/amap/api/col/l3s/cd;->a:Lcom/amap/api/col/l3s/cd$b;

    if-eqz p0, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->d()Lcom/amap/api/col/l3s/bz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->l()V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->e()Lcom/amap/api/col/l3s/cd$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->n()V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->m()V

    :cond_3
    return-void

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v2, Lcom/amap/api/col/l3s/cd$1;

    invoke-direct {v2, v0}, Lcom/amap/api/col/l3s/cd$1;-><init>(Lcom/amap/api/col/l3s/bz;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->e()Lcom/amap/api/col/l3s/cd$a;

    move-result-object v4

    iget-boolean v4, v4, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->n()V

    :cond_6
    invoke-static {v3, v1, v2, p0}, Lcom/amap/api/col/l3s/cd;->a(Ljava/io/File;Ljava/io/File;Lcom/amap/api/col/l3s/cd$c;Lcom/amap/api/col/l3s/cd$b;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->e()Lcom/amap/api/col/l3s/cd$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->n()V

    return-void

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3s/bz;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    return-void

    :catchall_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->e()Lcom/amap/api/col/l3s/cd$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-eqz p0, :cond_9

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->n()V

    return-void

    :cond_9
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->m()V

    goto :goto_1

    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cd$b;->e()Lcom/amap/api/col/l3s/cd$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/cd$a;->a:Z

    if-eqz p0, :cond_b

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->n()V

    return-void

    :cond_b
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/amap/api/col/l3s/bz;->m()V

    :cond_c
    :goto_1
    return-void
.end method
