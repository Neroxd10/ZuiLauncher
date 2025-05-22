.class public final Lcom/amap/api/col/l3s/kv;
.super Lcom/amap/api/col/l3s/ld;
.source ""


# instance fields
.field private d:[B

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/l3s/ld;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/kv;->d:[B

    iput-object p2, p0, Lcom/amap/api/col/l3s/kv;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getEntityBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/kv;->d:[B

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

    iget-object p0, p0, Lcom/amap/api/col/l3s/kv;->e:Ljava/util/Map;

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

    const-string p0, "https://adiu.amap.com/ws/device/adius"

    return-object p0
.end method
