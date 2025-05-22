.class public final Lcom/amap/api/col/l3s/lw;
.super Lcom/amap/api/col/l3s/ma;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/col/l3s/ma;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/ma;-><init>(Lcom/amap/api/col/l3s/ma;)V

    const/16 p2, 0x1e

    iput p2, p0, Lcom/amap/api/col/l3s/lw;->a:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/lw;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "fus"

    const-string v2, "gfn"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method


# virtual methods
.method protected final c()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/lw;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/l3s/lw;->a(Ljava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/amap/api/col/l3s/lw;->a:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
