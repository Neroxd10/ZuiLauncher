.class Landroidx/versionedparcelable/VersionedParcelStream$1;
.super Ljava/io/FilterInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/versionedparcelable/VersionedParcelStream;


# direct methods
.method constructor <init>(Landroidx/versionedparcelable/VersionedParcelStream;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v1, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    return v0
.end method

.method public read([BII)I
    .locals 3

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v1, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget p2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    :cond_2
    return p1
.end method

.method public skip(J)J
    .locals 3

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v1, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    :cond_2
    return-wide p1
.end method
