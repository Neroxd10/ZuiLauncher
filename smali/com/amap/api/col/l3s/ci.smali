.class public final Lcom/amap/api/col/l3s/ci;
.super Lcom/amap/api/col/l3s/dw;
.source ""


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/dw;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ci;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIPV6URL()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ci;->getURL()Ljava/lang/String;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/Hashtable;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    const-string v0, "User-Agent"

    const-string v1, "MAC=channel:amapapi"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ci;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final isSupportIPV6()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
