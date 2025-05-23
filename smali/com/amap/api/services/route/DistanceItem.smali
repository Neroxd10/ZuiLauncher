.class public Lcom/amap/api/services/route/DistanceItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/DistanceItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ERROR_CODE_NOT_IN_CHINA:I

.field public final ERROR_CODE_NO_DRIVE:I

.field public final ERROR_CODE_TOO_FAR:I

.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/route/DistanceItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/DistanceItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/DistanceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->ERROR_CODE_NO_DRIVE:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/amap/api/services/route/DistanceItem;->ERROR_CODE_TOO_FAR:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/amap/api/services/route/DistanceItem;->ERROR_CODE_NOT_IN_CHINA:I

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->a:I

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->c:F

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->d:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->ERROR_CODE_NO_DRIVE:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/amap/api/services/route/DistanceItem;->ERROR_CODE_TOO_FAR:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/amap/api/services/route/DistanceItem;->ERROR_CODE_NOT_IN_CHINA:I

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->a:I

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->c:F

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->d:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->c:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/DistanceItem;->d:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/amap/api/services/route/DistanceItem;->f:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDestId()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/DistanceItem;->b:I

    return p0
.end method

.method public getDistance()F
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/DistanceItem;->c:F

    return p0
.end method

.method public getDuration()F
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/DistanceItem;->d:F

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/DistanceItem;->f:I

    return p0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/route/DistanceItem;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginId()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/route/DistanceItem;->a:I

    return p0
.end method

.method public setDestId(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/DistanceItem;->b:I

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/DistanceItem;->c:F

    return-void
.end method

.method public setDuration(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/DistanceItem;->d:F

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/DistanceItem;->f:I

    return-void
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/DistanceItem;->e:Ljava/lang/String;

    return-void
.end method

.method public setOriginId(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/DistanceItem;->a:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/amap/api/services/route/DistanceItem;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/services/route/DistanceItem;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/services/route/DistanceItem;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/amap/api/services/route/DistanceItem;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lcom/amap/api/services/route/DistanceItem;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/amap/api/services/route/DistanceItem;->f:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
