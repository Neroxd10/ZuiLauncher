.class final Lcom/amap/api/col/l3s/t$b;
.super Lcom/amap/api/col/l3s/dw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final d:Lcom/amap/api/col/l3s/t$a;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/t$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dw;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/t$b;->d:Lcom/amap/api/col/l3s/t$a;

    return-void
.end method


# virtual methods
.method public final getIPV6URL()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/t$b;->getURL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRequestHead()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/t$b;->d:Lcom/amap/api/col/l3s/t$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/t$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isSupportIPV6()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
