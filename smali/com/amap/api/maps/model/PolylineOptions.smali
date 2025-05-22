.class public final Lcom/amap/api/maps/model/PolylineOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;,
        Lcom/amap/api/maps/model/PolylineOptions$LineCapType;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/PolylineOptionsCreator;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field public static final DOTTEDLINE_TYPE_CIRCLE:I = 0x1
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field public static final DOTTEDLINE_TYPE_SQUARE:I
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private bitmapSymbol:Ljava/lang/String;

.field private bitmapSymbolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private color:I

.field private colorValues:Ljava/util/List;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private customIndexs:Ljava/util/List;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private customTexture:Lcom/amap/api/maps/model/BitmapDescriptor;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private customTextureList:Ljava/util/List;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private dottedLineType:I

.field private eraseBitmapSymbol:Ljava/lang/String;

.field private eraseColor:I

.field private eraseTexture:Lcom/amap/api/maps/model/BitmapDescriptor;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private eraseVisible:Z

.field private footPrintBitmapSymbol:Ljava/lang/String;

.field private footPrintGap:F

.field private footPrintTexture:Lcom/amap/api/maps/model/BitmapDescriptor;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private isAboveMaskLayer:Z

.field private isColorValuesUpdated:Z

.field private isCustomIndexesUpdated:Z

.field private isCustomTextureListUpdated:Z

.field private isDottedLine:Z

.field private isGeodesic:Z

.field private isGradient:Z

.field private isPointsUpdated:Z

.field private isUseTexture:Z

.field private isVisible:Z

.field private jniColorValues:[I

.field private jniCustomIndexes:[I

.field private lineCapType:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private lineJoinType:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation
.end field

.field private nLineCapType:I

.field private nLineJoinType:I

.field private pointList:[D

.field private final points:Ljava/util/List;
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private showPolylineRangeEnable:Z

.field private shownPolylineRangeBegin:F

.field private shownPolylineRangeEnd:F

.field private shownRangeBegin:F

.field private shownRangeEnd:F

.field private shownRatio:F

.field private transparency:F

.field private width:F

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolylineOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/PolylineOptions;->CREATOR:Lcom/amap/api/maps/model/PolylineOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->width:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->color:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->zIndex:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isVisible:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isGradient:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->transparency:F

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer:Z

    iput v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->dottedLineType:I

    sget-object v2, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapRound:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    iput-object v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->lineCapType:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    sget-object v2, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->LineJoinBevel:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    iput-object v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->lineJoinType:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    const/4 v2, 0x3

    iput v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->nLineCapType:I

    iput v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->nLineJoinType:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRatio:F

    iput v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRangeBegin:F

    iput v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRangeEnd:F

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->footPrintGap:F

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseVisible:Z

    const v2, -0x777778

    iput v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseColor:I

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isPointsUpdated:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isCustomTextureListUpdated:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isColorValuesUpdated:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isCustomIndexesUpdated:Z

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownPolylineRangeBegin:F

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownPolylineRangeEnd:F

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->showPolylineRangeEnable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->points:Ljava/util/List;

    const-string v0, "PolylineOptions"

    iput-object v0, p0, Lcom/amap/api/maps/model/BaseOptions;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final aboveMaskLayer(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer:Z

    return-object p0
.end method

.method public final add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isPointsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public final varargs add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->points:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isPointsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isPointsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p0
.end method

.method public final color(I)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->color:I

    return-object p0
.end method

.method public final colorValues(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->colorValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->jniColorValues:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->jniColorValues:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->jniColorValues:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isColorValuesUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final geodesic(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic:Z

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->color:I

    return p0
.end method

.method public final getColorValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->colorValues:Ljava/util/List;

    return-object p0
.end method

.method public final getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->customTexture:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final getCustomTextureIndex()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->customIndexs:Ljava/util/List;

    return-object p0
.end method

.method public final getCustomTextureList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->customTextureList:Ljava/util/List;

    return-object p0
.end method

.method public final getDottedLineType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->dottedLineType:I

    return p0
.end method

.method public final getEraseColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseColor:I

    return p0
.end method

.method public final getEraseTexture()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseTexture:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final getEraseVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseVisible:Z

    return p0
.end method

.method public final getFootPrintGap()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->footPrintGap:F

    return p0
.end method

.method public final getFootPrintTexture()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->footPrintTexture:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final getLineCapType()Lcom/amap/api/maps/model/PolylineOptions$LineCapType;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->lineCapType:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    return-object p0
.end method

.method public final getLineJoinType()Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->lineJoinType:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    return-object p0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->points:Ljava/util/List;

    return-object p0
.end method

.method public final getPolylineShownRangeBegin()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownPolylineRangeBegin:F

    return p0
.end method

.method public final getPolylineShownRangeEnd()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownPolylineRangeEnd:F

    return p0
.end method

.method public final getShownRangeBegin()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRangeBegin:F

    return p0
.end method

.method public final getShownRangeEnd()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRangeEnd:F

    return p0
.end method

.method public final getShownRatio()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRatio:F

    return p0
.end method

.method public final getTransparency()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->transparency:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->width:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->zIndex:F

    return p0
.end method

.method public final isAboveMaskLayer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer:Z

    return p0
.end method

.method public final isDottedLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine:Z

    return p0
.end method

.method public final isGeodesic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic:Z

    return p0
.end method

.method public final isShowPolylineRangeEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->showPolylineRangeEnable:Z

    return p0
.end method

.method public final isUseGradient()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->isGradient:Z

    return p0
.end method

.method public final isUseTexture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->isVisible:Z

    return p0
.end method

.method public final lineCapType(Lcom/amap/api/maps/model/PolylineOptions$LineCapType;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->lineCapType:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->nLineCapType:I

    :cond_0
    return-object p0
.end method

.method public final lineJoinType(Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->lineJoinType:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->nLineJoinType:I

    :cond_0
    return-object p0
.end method

.method public final setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->customTexture:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->bitmapSymbol:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final setCustomTextureIndex(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->customIndexs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->jniCustomIndexes:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->jniCustomIndexes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->jniCustomIndexes:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isCustomIndexesUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method public final setCustomTextureList(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->customTextureList:Ljava/util/List;

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->bitmapSymbolList:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->bitmapSymbolList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isCustomTextureListUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object p0
.end method

.method public final setDottedLine(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine:Z

    return-object p0
.end method

.method public final setDottedLineType(I)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->dottedLineType:I

    return-object p0
.end method

.method public final setEraseColor(ZI)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseVisible:Z

    iput p2, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseColor:I

    return-object p0
.end method

.method public final setEraseTexture(ZLcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseVisible:Z

    iput-object p2, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseTexture:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->eraseBitmapSymbol:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final setFootPrintGap(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->footPrintGap:F

    return-object p0
.end method

.method public final setFootPrintTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->footPrintTexture:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amap/api/maps/model/BitmapDescriptor;->INVALID_ID:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->footPrintBitmapSymbol:Ljava/lang/String;

    return-object p0
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->points:Ljava/util/List;

    if-eq v0, p1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isPointsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final setPolylineShowRange(FF)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownPolylineRangeBegin:F

    iput p2, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownPolylineRangeEnd:F

    return-object p0
.end method

.method public final setShownRange(FF)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRangeBegin:F

    iput p2, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRangeEnd:F

    return-object p0
.end method

.method public final setShownRatio(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRatio:F

    return-object p0
.end method

.method public final setUseTexture(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture:Z

    return-object p0
.end method

.method public final showPolylineRangeEnabled(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->showPolylineRangeEnable:Z

    return-object p0
.end method

.method public final transparency(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->transparency:F

    return-object p0
.end method

.method public final useGradient(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isGradient:Z

    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isVisible:Z

    return-object p0
.end method

.method public final width(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->width:F

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->points:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->width:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->dottedLineType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->zIndex:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->transparency:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->lineCapType:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->getTypeValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->lineJoinType:Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->getTypeValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isVisible:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isGradient:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->customTexture:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    iget-object p2, p0, Lcom/amap/api/maps/model/PolylineOptions;->customTextureList:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_1
    iget-object p2, p0, Lcom/amap/api/maps/model/PolylineOptions;->customIndexs:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_2
    iget-object p2, p0, Lcom/amap/api/maps/model/PolylineOptions;->colorValues:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_3
    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions;->shownRatio:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->zIndex:F

    return-object p0
.end method
