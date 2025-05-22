.class public Lcom/amap/api/maps/model/HeatMapLayerOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source ""


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation


# static fields
.field public static final DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private static final DEFAULT_GRADIENT_COLORS:[I
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private static final DEFAULT_GRADIENT_START_POINTS:[F
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field public static final DEFAULT_OPACITY:D = 0.6
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field public static final DEFAULT_RADIUS:I = 0xc
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field public static final TYPE_GRID:I = 0x1
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field public static final TYPE_HEXAGON:I = 0x2
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field public static final TYPE_NORMAL:I
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field


# instance fields
.field private isPointsUpdated:Z

.field private isVisible:Z

.field private mColors:[I

.field private mData:Ljava/util/Collection;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mGap:F

.field private mGradient:Lcom/amap/api/maps/model/Gradient;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private mLatitude:D

.field private mOpacity:F

.field private mSize:F

.field private mStartPoints:[F

.field private mType:I

.field private maxIntensity:D

.field private maxZoom:F

.field private minZoom:F

.field private pointList:[D

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0x66

    const/16 v3, 0xe1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v4

    const/16 v2, 0xff

    invoke-static {v2, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    sput-object v1, Lcom/amap/api/maps/model/HeatMapLayerOptions;->DEFAULT_GRADIENT_COLORS:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->DEFAULT_GRADIENT_START_POINTS:[F

    new-instance v2, Lcom/amap/api/maps/model/Gradient;

    invoke-direct {v2, v1, v0}, Lcom/amap/api/maps/model/Gradient;-><init>([I[F)V

    sput-object v2, Lcom/amap/api/maps/model/HeatMapLayerOptions;->DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    sget-object v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

    iput-object v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGradient:Lcom/amap/api/maps/model/Gradient;

    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mOpacity:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxIntensity:D

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxZoom:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->minZoom:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGap:F

    const/4 v1, 0x2

    iput v1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mType:I

    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->zIndex:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isPointsUpdated:Z

    const-string v0, "HeatMapLayerOptions"

    iput-object v0, p0, Lcom/amap/api/maps/model/BaseOptions;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public data(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/HeatMapLayerOptions;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    new-instance v2, Lcom/amap/api/maps/model/WeightedLatLng;

    invoke-direct {v2, v1}, Lcom/amap/api/maps/model/WeightedLatLng;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->weightedData(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatMapLayerOptions;

    move-result-object p0

    return-object p0
.end method

.method public gap(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGap:F

    return-object p0
.end method

.method public getData()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mData:Ljava/util/Collection;

    return-object p0
.end method

.method public getGap()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGap:F

    return p0
.end method

.method public getGradient()Lcom/amap/api/maps/model/Gradient;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGradient:Lcom/amap/api/maps/model/Gradient;

    return-object p0
.end method

.method public getMaxIntensity()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxIntensity:D

    return-wide v0
.end method

.method public getMaxZoom()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxZoom:F

    return p0
.end method

.method public getMinZoom()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->minZoom:F

    return p0
.end method

.method public getOpacity()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mOpacity:F

    return p0
.end method

.method public getSize()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mSize:F

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mType:I

    return p0
.end method

.method public getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->zIndex:F

    return p0
.end method

.method public gradient(Lcom/amap/api/maps/model/Gradient;)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGradient:Lcom/amap/api/maps/model/Gradient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Gradient;->getColors()[I

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mColors:[I

    iget-object p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGradient:Lcom/amap/api/maps/model/Gradient;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Gradient;->getStartPoints()[F

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mStartPoints:[F

    :cond_0
    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isVisible:Z

    return p0
.end method

.method public maxIntensity(D)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxIntensity:D

    return-object p0
.end method

.method public maxZoom(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxZoom:F

    return-object p0
.end method

.method public minZoom(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->minZoom:F

    return-object p0
.end method

.method public opacity(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mOpacity:F

    return-object p0
.end method

.method public size(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mSize:F

    return-object p0
.end method

.method public type(I)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mType:I

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isVisible:Z

    return-object p0
.end method

.method public weightedData(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/HeatMapLayerOptions;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mData:Ljava/util/Collection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isPointsUpdated:Z

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->getData()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    new-array v4, v4, [D

    iput-object v4, v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->pointList:[D

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    move-wide v7, v5

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/maps/model/WeightedLatLng;

    if-eqz v9, :cond_4

    iget-object v10, v9, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    if-eqz v10, :cond_4

    iget-object v11, v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->pointList:[D

    mul-int/lit8 v12, v4, 0x3

    iget-wide v13, v10, Lcom/amap/api/maps/model/LatLng;->latitude:D

    aput-wide v13, v11, v12

    add-int/lit8 v15, v12, 0x1

    iget-wide v1, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    aput-wide v1, v11, v15

    add-int/lit8 v12, v12, 0x2

    iget-wide v1, v9, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    aput-wide v1, v11, v12

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v5, v13

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v7, v13

    :cond_2
    cmpl-double v1, v13, v7

    if-lez v1, :cond_3

    move-wide v7, v13

    :cond_3
    cmpg-double v1, v13, v5

    if-gez v1, :cond_0

    move-wide v5, v13

    goto :goto_0

    :cond_4
    const-string v1, "mapcore"

    const-string v2, "read file failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_6

    add-double/2addr v5, v7

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v1, v5, v1

    goto :goto_1

    :cond_6
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mLatitude:D

    :cond_7
    return-object v0
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->zIndex:F

    return-object p0
.end method
