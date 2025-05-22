.class public Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source ""


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/BuildingOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BuildingOverlayTotalOptions"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/BuildingOverlay;

.field public allOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation
.end field

.field public isVisible:Z

.field private zIndex:F


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/BuildingOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->a:Lcom/amap/api/maps/model/BuildingOverlay;

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->isVisible:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->zIndex:F

    const-string p1, "BuildingOptions"

    iput-object p1, p0, Lcom/amap/api/maps/model/BaseOptions;->type:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;)F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->zIndex:F

    return p0
.end method

.method static synthetic a(Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;F)F
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->zIndex:F

    return p1
.end method
