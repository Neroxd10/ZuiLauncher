.class public Lcom/amap/api/maps/CoordinateConverter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/CoordinateConverter$CoordType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoordinateConverter"


# instance fields
.field private coordType:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field private ctx:Landroid/content/Context;

.field private sourceLatLng:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->coordType:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    iput-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->sourceLatLng:Lcom/amap/api/maps/model/LatLng;

    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->ctx:Landroid/content/Context;

    return-void
.end method

.method public static isAMapDataAvailable(DD)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/eq;->a(DD)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public convert()Lcom/amap/api/maps/model/LatLng;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->coordType:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/amap/api/maps/CoordinateConverter;->sourceLatLng:Lcom/amap/api/maps/model/LatLng;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    const-string v2, ""

    sget-object v3, Lcom/amap/api/maps/CoordinateConverter$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "gps"

    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->sourceLatLng:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ap;->a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    const-string v2, "google"

    :goto_0
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->sourceLatLng:Lcom/amap/api/maps/model/LatLng;

    goto :goto_1

    :pswitch_2
    const-string v2, "aliyun"

    goto :goto_0

    :pswitch_3
    const-string v2, "sosomap"

    goto :goto_0

    :pswitch_4
    const-string v2, "mapabc"

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->sourceLatLng:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ap;->b(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    const-string v2, "mapbar"

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->sourceLatLng:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ap;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    const-string v2, "baidu"

    :goto_1
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->ctx:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "CoordinateConverter"

    const-string v2, "convert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->sourceLatLng:Lcom/amap/api/maps/model/LatLng;

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->sourceLatLng:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->coordType:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    return-object p0
.end method
