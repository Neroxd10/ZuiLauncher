.class public final Lcom/amap/api/maps/model/MarkerOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/MarkerOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private anchorU:F

.field private anchorV:F

.field private angleOffset:F

.field b:F

.field private bitmapDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field e:I

.field f:F

.field private isBelowMaskLayer:Z

.field private isDraggable:Z

.field private isFlat:Z

.field private isGps:Z

.field private isRotatingMode:Z

.field private isVisible:Z

.field private latLng:Lcom/amap/api/maps/model/LatLng;

.field private offsetX:I

.field private offsetY:I

.field private period:I

.field private perspective:Z

.field private snippet:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/MarkerOptions;->CREATOR:Lcom/amap/api/maps/model/MarkerOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->anchorU:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->anchorV:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->zIndex:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amap/api/maps/model/MarkerOptions;->isVisible:Z

    iput-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->perspective:Z

    iput v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->offsetX:I

    iput v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->offsetY:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    const/16 v4, 0x14

    iput v4, p0, Lcom/amap/api/maps/model/MarkerOptions;->period:I

    iput-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->isGps:Z

    iput-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->isFlat:Z

    iput-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode:Z

    iput v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->angleOffset:F

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    iput-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    iput-boolean v3, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    return-void
.end method


# virtual methods
.method public final alpha(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    return-object p0
.end method

.method public final anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->anchorU:F

    iput p2, p0, Lcom/amap/api/maps/model/MarkerOptions;->anchorV:F

    return-object p0
.end method

.method protected final angleOffset(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->angleOffset:F

    return-object p0
.end method

.method public final autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    return-object p0
.end method

.method public final belowMaskLayer(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer:Z

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    return-object p0
.end method

.method public final draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable:Z

    return-object p0
.end method

.method public final getAlpha()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    return p0
.end method

.method public final getAnchorU()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->anchorU:F

    return p0
.end method

.method public final getAnchorV()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->anchorV:F

    return p0
.end method

.method public final getAngleOffset()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->angleOffset:F

    return p0
.end method

.method public final getDisplayLevel()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    return p0
.end method

.method public final getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIcons()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getInfoWindowOffsetX()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->offsetX:I

    return p0
.end method

.method public final getInfoWindowOffsetY()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->offsetY:I

    return p0
.end method

.method public final getPeriod()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->period:I

    return p0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final getRotateAngle()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    return p0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->snippet:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->zIndex:F

    return p0
.end method

.method public final icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public final icons(Ljava/util/ArrayList;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)",
            "Lcom/amap/api/maps/model/MarkerOptions;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode:Z

    :cond_0
    return-object p0
.end method

.method public final infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    return-object p0
.end method

.method public final isBelowMaskLayer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer:Z

    return p0
.end method

.method public final isDraggable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable:Z

    return p0
.end method

.method public final isFlat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->isFlat:Z

    return p0
.end method

.method public final isGps()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->isGps:Z

    return p0
.end method

.method public final isInfoWindowAutoOverturn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    return p0
.end method

.method public final isInfoWindowEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    return p0
.end method

.method public final isPerspective()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->perspective:Z

    return p0
.end method

.method public final isRotatingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->isVisible:Z

    return p0
.end method

.method public final period(I)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->period:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->period:I

    :goto_0
    return-object p0
.end method

.method public final perspective(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->perspective:Z

    return-object p0
.end method

.method public final position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    return-object p0
.end method

.method public final rotatingIcons(Ljava/util/ArrayList;F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;F)",
            "Lcom/amap/api/maps/model/MarkerOptions;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x43b40000    # 360.0f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    :goto_0
    iput p2, p0, Lcom/amap/api/maps/model/MarkerOptions;->angleOffset:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode:Z

    :cond_1
    return-object p0
.end method

.method public final setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isFlat:Z

    return-object p0
.end method

.method public final setGps(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isGps:Z

    return-object p0
.end method

.method public final setInfoWindowOffset(II)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->offsetX:I

    iput p2, p0, Lcom/amap/api/maps/model/MarkerOptions;->offsetY:I

    return-object p0
.end method

.method protected final setRotatingMode(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode:Z

    return-object p0
.end method

.method public final snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->snippet:Ljava/lang/String;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isVisible:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->anchorU:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->anchorV:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->offsetX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->offsetY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isVisible:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable:Z

    const/4 v3, 0x1

    aput-boolean v1, v0, v3

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isGps:Z

    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isFlat:Z

    const/4 v3, 0x3

    aput-boolean v1, v0, v3

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    const/4 v3, 0x4

    aput-boolean v1, v0, v3

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    const/4 v3, 0x5

    aput-boolean v1, v0, v3

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer:Z

    const/4 v3, 0x6

    aput-boolean v1, v0, v3

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->isRotatingMode:Z

    const/4 v3, 0x7

    aput-boolean v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->period:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->zIndex:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->angleOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/maps/model/MarkerOptions;->bitmapDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->zIndex:F

    return-object p0
.end method
