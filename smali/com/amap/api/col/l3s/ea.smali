.class public final Lcom/amap/api/col/l3s/ea;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/ea$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Random;

.field private final b:I

.field private final c:I

.field private d:Lcom/autonavi/base/amap/mapcore/MapConfig;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ea;->a:Ljava/util/Random;

    const/16 v0, 0x100

    iput v0, p0, Lcom/amap/api/col/l3s/ea;->b:I

    iput v0, p0, Lcom/amap/api/col/l3s/ea;->c:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/ea;->d:Lcom/autonavi/base/amap/mapcore/MapConfig;

    return-void
.end method

.method private a(IIILjava/lang/String;)[B
    .locals 7

    :try_start_0
    new-instance v6, Lcom/amap/api/col/l3s/ea$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3s/ea$a;-><init>(Lcom/amap/api/col/l3s/ea;IIILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/amap/api/col/l3s/dw;->makeHttpRequestWithInterrupted()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getTile(III)Lcom/amap/api/maps/model/Tile;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ea;->d:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/ea;->d:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "zh_cn"

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/col/l3s/ea;->a(IIILjava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    return-object p0

    :cond_1
    iget p2, p0, Lcom/amap/api/col/l3s/ea;->b:I

    iget p0, p0, Lcom/amap/api/col/l3s/ea;->c:I

    invoke-static {p2, p0, p1}, Lcom/amap/api/maps/model/Tile;->obtain(II[B)Lcom/amap/api/maps/model/Tile;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    :goto_1
    return-object p0
.end method

.method public final getTileHeight()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/ea;->c:I

    return p0
.end method

.method public final getTileWidth()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/ea;->b:I

    return p0
.end method
