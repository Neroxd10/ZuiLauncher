.class public Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps/model/GroundOverlayOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const-class p0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/model/BitmapDescriptor;

    const-class v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    const-class v0, Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    new-instance p1, Lcom/amap/api/maps/model/GroundOverlayOptions;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/amap/api/maps/model/GroundOverlayOptions;-><init>(ILcom/amap/api/maps/model/LatLng;FFLcom/amap/api/maps/model/LatLngBounds;FFZFFF)V

    invoke-virtual {p1, p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->image(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/GroundOverlayOptions;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/GroundOverlayOptions;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    new-array p0, p1, [Lcom/amap/api/maps/model/GroundOverlayOptions;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/GroundOverlayOptions;

    move-result-object p0

    return-object p0
.end method
