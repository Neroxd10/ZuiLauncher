.class public final Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final diskKey:Ljava/lang/String;

.field private final ins:[Ljava/io/FileInputStream;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->diskKey:Ljava/lang/String;

    iput-wide p3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->sequenceNumber:J

    iput-object p5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    iput-object p6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/lidroid/xutils/cache/LruDiskCache$Snapshot;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public edit()Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 4

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->diskKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream(I)Ljava/io/FileInputStream;
    .locals 0

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getLength(I)J
    .locals 0

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->lengths:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
