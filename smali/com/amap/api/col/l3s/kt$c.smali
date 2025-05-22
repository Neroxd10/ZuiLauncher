.class final Lcom/amap/api/col/l3s/kt$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/kt;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/amap/api/col/l3s/kt$a;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3s/kt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/kt$c;->a:Lcom/amap/api/col/l3s/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/col/l3s/kt$c;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/col/l3s/kt;->f(Lcom/amap/api/col/l3s/kt;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/amap/api/col/l3s/kt$c;->c:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3s/kt;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/kt$c;-><init>(Lcom/amap/api/col/l3s/kt;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/kt$c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/kt$c;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/kt$c;Lcom/amap/api/col/l3s/kt$a;)Lcom/amap/api/col/l3s/kt$a;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/kt$c;->e:Lcom/amap/api/col/l3s/kt$a;

    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/kt$c;[Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    iget-object v1, p0, Lcom/amap/api/col/l3s/kt$c;->a:Lcom/amap/api/col/l3s/kt;

    invoke-static {v1}, Lcom/amap/api/col/l3s/kt;->f(Lcom/amap/api/col/l3s/kt;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/kt$c;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-static {p1}, Lcom/amap/api/col/l3s/kt$c;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1}, Lcom/amap/api/col/l3s/kt$c;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/kt$c;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/kt$c;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/kt$c;)Lcom/amap/api/col/l3s/kt$a;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$c;->e:Lcom/amap/api/col/l3s/kt$a;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/kt$c;)[J
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$c;->c:[J

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/kt$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/kt$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/kt$c;->d:Z

    return p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/kt$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/kt$c;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3s/kt$c;->a:Lcom/amap/api/col/l3s/kt;

    invoke-static {v1}, Lcom/amap/api/col/l3s/kt;->g(Lcom/amap/api/col/l3s/kt;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$c;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$c;->c:[J

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3s/kt$c;->a:Lcom/amap/api/col/l3s/kt;

    invoke-static {v1}, Lcom/amap/api/col/l3s/kt;->g(Lcom/amap/api/col/l3s/kt;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$c;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
