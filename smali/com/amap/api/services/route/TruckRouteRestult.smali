.class public Lcom/amap/api/services/route/TruckRouteRestult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/TruckRouteRestult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/route/TruckPath;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/services/core/LatLonPoint;

.field private d:Lcom/amap/api/services/core/LatLonPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/route/TruckRouteRestult$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/TruckRouteRestult$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/TruckRouteRestult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amap/api/services/route/TruckPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->b:Ljava/util/List;

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->c:Lcom/amap/api/services/core/LatLonPoint;

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/core/LatLonPoint;

    iput-object p1, p0, Lcom/amap/api/services/route/TruckRouteRestult;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPaths()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/route/TruckPath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->b:Ljava/util/List;

    return-object p0
.end method

.method public getStartPos()Lcom/amap/api/services/core/LatLonPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->c:Lcom/amap/api/services/core/LatLonPoint;

    return-object p0
.end method

.method public getTargetPos()Lcom/amap/api/services/core/LatLonPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-object p0
.end method

.method public getTruckQuery()Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->a:Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

    return-object p0
.end method

.method public setPaths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/route/TruckPath;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/services/route/TruckRouteRestult;->b:Ljava/util/List;

    return-void
.end method

.method public setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckRouteRestult;->c:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckRouteRestult;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setTruckQuery(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckRouteRestult;->a:Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->c:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/amap/api/services/route/TruckRouteRestult;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
