.class public Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TruckRouteQuery"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    const-string v0, "base"

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->j:Ljava/lang/String;

    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->e:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->f:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->g:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->h:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->i:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/route/RouteSearch$FromAndTo;",
            "I",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    const-string v0, "base"

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    iput-object p3, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    iput p4, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;
    .locals 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "TruckRouteQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    iget v4, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;I)V

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->j:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->setExtensions(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtensions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    return p0
.end method

.method public getPassedByPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    return-object p0
.end method

.method public getPassedPointStr()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTruckAxis()F
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->i:F

    return p0
.end method

.method public getTruckHeight()F
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->e:F

    return p0
.end method

.method public getTruckLoad()F
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->g:F

    return p0
.end method

.method public getTruckSize()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    return p0
.end method

.method public getTruckWeight()F
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->h:F

    return p0
.end method

.method public getTruckWidth()F
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->f:F

    return p0
.end method

.method public hasPassPoint()Z
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->getPassedPointStr()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setExtensions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->j:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    return-void
.end method

.method public setTruckAxis(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->i:F

    return-void
.end method

.method public setTruckHeight(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->e:F

    return-void
.end method

.method public setTruckLoad(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->g:F

    return-void
.end method

.method public setTruckSize(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    return-void
.end method

.method public setTruckWeight(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->h:F

    return-void
.end method

.method public setTruckWidth(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->f:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->g:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->h:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->i:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->j:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
