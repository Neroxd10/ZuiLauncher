.class public final Lcom/amap/api/col/l3s/mh;
.super Lcom/amap/api/col/l3s/ph;
.source ""


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/ph;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)I
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/ph;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/amap/api/col/l3s/ns;->a(Ljava/lang/Throwable;)V

    const-string p1, ""

    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/ph;->a(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method
