.class public Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/DistanceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistanceQuery"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/services/core/LatLonPoint;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->b:Ljava/util/List;

    const-string v0, "base"

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->d:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->e:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->b:Ljava/util/List;

    const-string v0, "base"

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->d:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->a:I

    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->b:Ljava/util/List;

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->c:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->e:I

    return-void
.end method


# virtual methods
.method public varargs addOrigins([Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DistanceSearch"

    const-string v2, "DistanceQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;

    invoke-direct {v0}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;-><init>()V

    iget v1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->setType(I)V

    iget-object v1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->setOrigins(Ljava/util/List;)V

    iget-object v1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->c:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    iget-object v1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->setExtensions(Ljava/lang/String;)V

    iget p0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->e:I

    invoke-virtual {v0, p0}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->setMode(I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->clone()Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDestination()Lcom/amap/api/services/core/LatLonPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->c:Lcom/amap/api/services/core/LatLonPoint;

    return-object p0
.end method

.method public getExtensions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->e:I

    return p0
.end method

.method public getOrigins()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->b:Ljava/util/List;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->a:I

    return p0
.end method

.method public setDestination(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->c:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setExtensions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->d:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->e:I

    return-void
.end method

.method public setOrigins(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->a:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->c:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->e:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
