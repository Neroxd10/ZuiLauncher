.class public final Lcom/amap/api/col/l3s/ko;
.super Lcom/amap/api/col/l3s/kq;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/kq;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3s/kq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/kq;-><init>(Lcom/amap/api/col/l3s/kq;)V

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/amap/api/col/l3s/jf;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "||1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/jf;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
