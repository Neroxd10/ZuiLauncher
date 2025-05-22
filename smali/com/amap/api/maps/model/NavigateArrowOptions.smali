.class public final Lcom/amap/api/maps/model/NavigateArrowOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/NavigateArrowOptionsCreator;
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

.field private arrowLineInnerResId:I

.field private arrowLineOuterResId:I

.field private arrowLineShadowResId:I

.field private is3DModel:Z

.field private isVisible:Z

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private sideColor:I

.field private topColor:I

.field private width:F

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/NavigateArrowOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/NavigateArrowOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/NavigateArrowOptions;->CREATOR:Lcom/amap/api/maps/model/NavigateArrowOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->width:F

    const/16 v0, 0xdd

    const/16 v1, 0x57

    const/16 v2, 0xeb

    const/16 v3, 0xcc

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->topColor:I

    const/16 v0, 0xaa

    const/4 v1, 0x0

    const/16 v2, 0xac

    const/16 v3, 0x92

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->sideColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->zIndex:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->is3DModel:Z

    const/16 v0, 0x6f

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->arrowLineInnerResId:I

    const/16 v0, 0xde

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->arrowLineOuterResId:I

    const/16 v0, 0x14d

    iput v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->arrowLineShadowResId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->points:Ljava/util/List;

    const-string v0, "NavigateArrowOptions"

    iput-object v0, p0, Lcom/amap/api/maps/model/BaseOptions;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final varargs add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->points:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/NavigateArrowOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->points:Ljava/util/List;

    return-object p0
.end method

.method public final getSideColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->sideColor:I

    return p0
.end method

.method public final getTopColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->topColor:I

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->width:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->zIndex:F

    return p0
.end method

.method public final is3DModel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->is3DModel:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible:Z

    return p0
.end method

.method public final set3DModel(Z)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->is3DModel:Z

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

    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->points:Ljava/util/List;

    if-eq v0, p1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->points:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final sideColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->sideColor:I

    return-object p0
.end method

.method public final topColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->topColor:I

    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible:Z

    return-object p0
.end method

.method public final width(F)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->width:F

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->points:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget p2, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->width:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->topColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->sideColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->zIndex:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->is3DModel:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/NavigateArrowOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/NavigateArrowOptions;->zIndex:F

    return-object p0
.end method
