.class public Lcom/amap/api/location/AMapLocationClientOption;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;,
        Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;,
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;,
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/location/AMapLocationClientOption;",
            ">;"
        }
    .end annotation
.end field

.field public static OPEN_ALWAYS_SCAN_WIFI:Z = false

.field public static SCAN_WIFI_INTERVAL:J = 0x0L

.field static a:Ljava/lang/String; = null

.field private static d:I = 0x0

.field private static e:I = 0x1

.field private static f:I = 0x2

.field private static g:I = 0x4

.field private static p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;


# instance fields
.field private A:F

.field private B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

.field b:Z

.field c:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:J

.field private y:J

.field private z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    const-string v0, ""

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$1;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption$1;-><init>()V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/amap/api/location/AMapLocationClientOption;->SCAN_WIFI_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    sget v0, Lcom/amap/api/col/l3s/ow;->g:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->x:J

    iput-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->y:J

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->A:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:Z

    iput-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    sget v0, Lcom/amap/api/col/l3s/ow;->g:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->x:J

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->y:J

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->A:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:Z

    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_4
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    goto :goto_5

    :cond_5
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v5

    aget-object v3, v5, v3

    :goto_5
    iput-object v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    move v3, v0

    :goto_6
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    move v3, v0

    :goto_7
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    move v3, v0

    :goto_8
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    move v3, v0

    :goto_9
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    move v3, v0

    :goto_a
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    move v3, v0

    :goto_b
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    move v3, v0

    :goto_c
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/amap/api/location/AMapLocationClientOption;->x:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_d

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    goto :goto_d

    :cond_d
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v5

    aget-object v3, v5, v3

    :goto_d
    sput-object v3, Lcom/amap/api/location/AMapLocationClientOption;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_e

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    goto :goto_e

    :cond_e
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->values()[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v5

    aget-object v3, v5, v3

    :goto_e
    iput-object v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->A:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_f

    goto :goto_f

    :cond_f
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    move-result-object v2

    aget-object v2, v2, v3

    :goto_f
    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    :cond_10
    sput-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->y:J

    return-void
.end method

.method public static getAPIKEY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static isDownloadCoordinateConvertLibrary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isOpenAlwaysScanWifi()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    return v0
.end method

.method public static setDownloadCoordinateConvertLibrary(Z)V
    .locals 0

    return-void
.end method

.method public static setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V
    .locals 0

    sput-object p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-void
.end method

.method public static setOpenAlwaysScanWifi(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    return-void
.end method

.method public static setScanWifiInterval(J)V
    .locals 0

    sput-wide p0, Lcom/amap/api/location/AMapLocationClientOption;->SCAN_WIFI_INTERVAL:J

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    iput-wide v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    iput-wide v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->s:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->v:Z

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->x:J

    iput-wide v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->x:J

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isDownloadCoordinateConvertLibrary()Z

    move-result v1

    invoke-static {v1}, Lcom/amap/api/location/AMapLocationClientOption;->setDownloadCoordinateConvertLibrary(Z)V

    iget v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->A:F

    iput v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->A:F

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    iput-object v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isOpenAlwaysScanWifi()Z

    move-result v1

    invoke-static {v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOpenAlwaysScanWifi(Z)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->getScanWifiInterval()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setScanWifiInterval(J)V

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->y:J

    iput-wide v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->y:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceModeDistanceFilter()F
    .locals 0

    iget p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->A:F

    return p0
.end method

.method public getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object p0
.end method

.method public getGpsFirstTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->y:J

    return-wide v0
.end method

.method public getHttpTimeOut()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    return-wide v0
.end method

.method public getLastLocationLifeCycle()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->x:J

    return-wide v0
.end method

.method public getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object p0
.end method

.method public getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;
    .locals 0

    sget-object p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-object p0
.end method

.method public getLocationPurpose()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-object p0
.end method

.method public getScanWifiInterval()J
    .locals 2

    sget-wide v0, Lcom/amap/api/location/AMapLocationClientOption;->SCAN_WIFI_INTERVAL:J

    return-wide v0
.end method

.method public isGpsFirst()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    return p0
.end method

.method public isKillProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    return p0
.end method

.method public isLocationCacheEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    return p0
.end method

.method public isMockEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    return p0
.end method

.method public isNeedAddress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    return p0
.end method

.method public isOffset()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Z

    return p0
.end method

.method public isOnceLocation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    return p0
.end method

.method public isOnceLocationLatest()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    return p0
.end method

.method public isSensorEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Z

    return p0
.end method

.method public isWifiActiveScan()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    return p0
.end method

.method public isWifiScan()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    return p0
.end method

.method public setDeviceModeDistanceFilter(F)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->A:F

    return-object p0
.end method

.method public setGeoLanguage(Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object p0
.end method

.method public setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    return-object p0
.end method

.method public setGpsFirstTimeout(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    const-wide/16 v0, 0x1388

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide/16 v0, 0x7530

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->y:J

    return-object p0
.end method

.method public setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    return-object p0
.end method

.method public setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    const-wide/16 v0, 0x320

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    return-object p0
.end method

.method public setKillProcess(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    return-object p0
.end method

.method public setLastLocationLifeCycle(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->x:J

    return-object p0
.end method

.method public setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    return-object p0
.end method

.method public setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object p0
.end method

.method public setLocationPurpose(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 4

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget p1, Lcom/amap/api/location/AMapLocationClientOption;->d:I

    sget v2, Lcom/amap/api/location/AMapLocationClientOption;->g:I

    and-int v3, p1, v2

    if-nez v3, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:Z

    or-int/2addr p1, v2

    sput p1, Lcom/amap/api/location/AMapLocationClientOption;->d:I

    const-string p1, "sport"

    goto :goto_0

    :cond_1
    sget p1, Lcom/amap/api/location/AMapLocationClientOption;->d:I

    sget v2, Lcom/amap/api/location/AMapLocationClientOption;->f:I

    and-int v3, p1, v2

    if-nez v3, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:Z

    or-int/2addr p1, v2

    sput p1, Lcom/amap/api/location/AMapLocationClientOption;->d:I

    const-string p1, "transport"

    :goto_0
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Ljava/lang/String;

    :cond_2
    sget-object p1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    sget p1, Lcom/amap/api/location/AMapLocationClientOption;->d:I

    sget v0, Lcom/amap/api/location/AMapLocationClientOption;->e:I

    and-int v2, p1, v0

    if-nez v2, :cond_4

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:Z

    or-int/2addr p1, v0

    sput p1, Lcom/amap/api/location/AMapLocationClientOption;->d:I

    const-string p1, "signin"

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Ljava/lang/String;

    :cond_4
    :goto_1
    return-object p0
.end method

.method public setMockEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    return-object p0
.end method

.method public setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    return-object p0
.end method

.method public setOffset(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Z

    return-object p0
.end method

.method public setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    return-object p0
.end method

.method public setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    return-object p0
.end method

.method public setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Z

    return-object p0
.end method

.method public setWifiActiveScan(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    return-object p0
.end method

.method public setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isOnceLocation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locationMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locationProtocol:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isMockEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isKillProcess:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isGpsFirst:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isNeedAddress:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isWifiActiveScan:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wifiScan:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "httpTimeOut:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isLocationCacheEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isOnceLocationLatest:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sensorEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "geoLanguage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locationPurpose:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    const/4 v0, -0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->x:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    sget-object p2, Lcom/amap/api/location/AMapLocationClientOption;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->z:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->A:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean p2, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->y:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
