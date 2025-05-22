.class public final Lcom/amap/api/maps/model/ArcOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cClass;
    value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/ArcOptionsCreator;
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

.field private endpoint:Lcom/amap/api/maps/model/LatLng;

.field private isVisible:Z

.field private passedpoint:Lcom/amap/api/maps/model/LatLng;

.field private startpoint:Lcom/amap/api/maps/model/LatLng;

.field private strokeColor:I

.field private strokeWidth:F

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/ArcOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/ArcOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/ArcOptions;->CREATOR:Lcom/amap/api/maps/model/ArcOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps/model/ArcOptions;->strokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps/model/ArcOptions;->strokeColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/ArcOptions;->zIndex:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/ArcOptions;->isVisible:Z

    const-string v0, "ArcOptions"

    iput-object v0, p0, Lcom/amap/api/maps/model/BaseOptions;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final getEnd()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/ArcOptions;->endpoint:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getPassed()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/ArcOptions;->passedpoint:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getStart()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/ArcOptions;->startpoint:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/ArcOptions;->strokeColor:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/ArcOptions;->strokeWidth:F

    return p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/ArcOptions;->zIndex:F

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/ArcOptions;->isVisible:Z

    return p0
.end method

.method public final point(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/ArcOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/ArcOptions;->startpoint:Lcom/amap/api/maps/model/LatLng;

    iput-object p2, p0, Lcom/amap/api/maps/model/ArcOptions;->passedpoint:Lcom/amap/api/maps/model/LatLng;

    iput-object p3, p0, Lcom/amap/api/maps/model/ArcOptions;->endpoint:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final strokeColor(I)Lcom/amap/api/maps/model/ArcOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/ArcOptions;->strokeColor:I

    return-object p0
.end method

.method public final strokeWidth(F)Lcom/amap/api/maps/model/ArcOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/ArcOptions;->strokeWidth:F

    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/ArcOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/ArcOptions;->isVisible:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .annotation build Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cFieldOrMethod;
        value = .enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .end annotation

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/amap/api/maps/model/ArcOptions;->startpoint:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-string v2, "startlat"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/amap/api/maps/model/ArcOptions;->startpoint:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-string v2, "startlng"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/ArcOptions;->passedpoint:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-string v2, "passedlat"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/amap/api/maps/model/ArcOptions;->passedpoint:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-string v2, "passedlng"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/ArcOptions;->endpoint:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-string v2, "endlat"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/amap/api/maps/model/ArcOptions;->endpoint:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-string v2, "endlng"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p2, p0, Lcom/amap/api/maps/model/ArcOptions;->strokeWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/maps/model/ArcOptions;->strokeColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/maps/model/ArcOptions;->zIndex:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Lcom/amap/api/maps/model/ArcOptions;->isVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lcom/amap/api/maps/model/ArcOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/ArcOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/ArcOptions;->zIndex:F

    return-object p0
.end method
