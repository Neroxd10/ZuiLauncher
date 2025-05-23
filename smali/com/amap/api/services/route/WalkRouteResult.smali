.class public Lcom/amap/api/services/route/WalkRouteResult;
.super Lcom/amap/api/services/route/RouteResult;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/WalkRouteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/route/WalkPath;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/route/WalkRouteResult$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkRouteResult$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/WalkRouteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/services/route/RouteResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/services/route/RouteResult;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    sget-object v0, Lcom/amap/api/services/route/WalkPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    const-class v0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    iput-object p1, p0, Lcom/amap/api/services/route/WalkRouteResult;->b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

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
            "Lcom/amap/api/services/route/WalkPath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    return-object p0
.end method

.method public getWalkQuery()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/WalkRouteResult;->b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    return-object p0
.end method

.method public setPaths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/route/WalkPath;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    return-void
.end method

.method public setWalkQuery(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/WalkRouteResult;->b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/amap/api/services/route/RouteResult;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/amap/api/services/route/WalkRouteResult;->b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
