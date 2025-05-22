.class public final Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source ""


# static fields
.field public static final BuffSz_:I = 0x10000


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:[B

.field private h:J

.field private i:Z

.field private j:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->a:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->c(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->a:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->c(I)V

    return-void
.end method

.method private a()I
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    invoke-super {p0, v3, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v2, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    array-length v0, v0

    if-ge v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->i:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    array-length v1, v0

    const/4 v3, -0x1

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_3
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->j:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->j:J

    return v2
.end method

.method private b()V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->b:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->j:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-super {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    const/4 v2, 0x0

    invoke-super {p0, v1, v2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->j:J

    iput-boolean v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->b:Z

    :cond_1
    return-void
.end method

.method private c(I)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->b:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    iput-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iput-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    const/high16 v3, 0x10000

    if-le p1, v3, :cond_0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    new-array p1, v3, [B

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    const-wide/32 v3, 0x10000

    iput-wide v3, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->h:J

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->i:Z

    iput-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->j:J

    return-void
.end method

.method private d([BII)I
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->i:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->h:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->seek(J)V

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->h:J

    :goto_0
    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    :cond_1
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    return p3
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->b()V

    return-void
.end method

.method public getFilePointer()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->a:Ljava/lang/String;

    return-object p0
.end method

.method public length()J
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    invoke-super {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 6

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->i:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->seek(J)V

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v4, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    iget-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v3, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    sub-long v3, v1, v3

    long-to-int v3, v3

    aget-byte v0, v0, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    and-int/lit16 p0, v0, 0xff

    return p0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 6

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->i:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->seek(J)V

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v4, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    return p3
.end method

.method public seek(J)V
    .locals 5

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->b()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->b()V

    const-wide/32 v0, -0x10000

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    iget-object v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->h:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->j:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->j:J

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->a()I

    move-result v0

    iget-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    :cond_3
    :goto_1
    iput-wide p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    return-void
.end method

.method public sync()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->flush()V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->c:Z

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 8

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->i:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->h:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->seek(J)V

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :goto_0
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->f:J

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->g:[B

    iget-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    iget-wide v6, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->e:J

    sub-long v6, v1, v6

    long-to-int v3, v6

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->b:Z

    iput-boolean p1, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->c:Z

    return-void
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->d([BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->b:Z

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->c:Z

    goto :goto_0

    :cond_0
    return-void
.end method
