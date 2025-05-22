.class public final enum Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum changeBearing:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum changeBearingGeoCenter:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum changeCenter:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum changeGeoCenterZoom:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum changeTilt:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum newLatLngBounds:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum none:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum scrollBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum zoomBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum zoomIn:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum zoomOut:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

.field public static final enum zoomTo:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->none:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "zoomIn"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomIn:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "changeCenter"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeCenter:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "changeTilt"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeTilt:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "changeBearing"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeBearing:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "changeBearingGeoCenter"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeBearingGeoCenter:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "changeGeoCenterZoom"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeGeoCenterZoom:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "zoomOut"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomOut:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "zoomTo"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomTo:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "zoomBy"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "scrollBy"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->scrollBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "newCameraPosition"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "newLatLngBounds"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "newLatLngBoundsWithSize"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const-string v1, "changeGeoCenterZoomTiltBearing"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    sget-object v16, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->none:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v16, v1, v2

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomIn:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeCenter:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeTilt:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeBearing:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeBearingGeoCenter:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeGeoCenterZoom:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomOut:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomTo:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->scrollBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v13

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    aput-object v2, v1, v14

    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->$VALUES:[Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;
    .locals 1

    const-class v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->$VALUES:[Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    invoke-virtual {v0}, [Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    return-object v0
.end method
