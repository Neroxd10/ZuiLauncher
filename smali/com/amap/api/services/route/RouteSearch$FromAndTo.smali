.class public Lcom/amap/api/services/route/RouteSearch$FromAndTo;
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
    name = "FromAndTo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/RouteSearch$FromAndTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    iput-object p2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "FromAndToclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;-><init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->setStartPoiID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->setDestinationPoiID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->setOriginType(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->setDestinationType(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->clone()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    :cond_7
    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_a

    return v1

    :cond_9
    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v1

    :cond_b
    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    if-nez p0, :cond_d

    iget-object p0, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    if-eqz p0, :cond_e

    return v1

    :cond_d
    iget-object p1, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getDestinationPoiID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getDestinationType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getFrom()Lcom/amap/api/services/core/LatLonPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object p0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getPlateNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getPlateProvince()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPoiID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getTo()Lcom/amap/api/services/core/LatLonPoint;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public setDestinationPoiID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    return-void
.end method

.method public setDestinationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    return-void
.end method

.method public setOriginType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    return-void
.end method

.method public setPlateNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->h:Ljava/lang/String;

    return-void
.end method

.method public setPlateProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->g:Ljava/lang/String;

    return-void
.end method

.method public setStartPoiID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
