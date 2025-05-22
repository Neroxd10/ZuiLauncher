.class public abstract Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/lsf/common/device/DeviceInfo;


# instance fields
.field a:Lcom/lenovo/lsf/common/device/DeviceInfo;

.field private b:Z

.field protected cellIDs:[I

.field protected latitudes:[I

.field protected locationIDs:[I

.field protected longitudes:[I

.field protected phoneTypes:[I

.field protected systemIDs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/lsf/common/device/DeviceInfo;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->latitudes:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->longitudes:[I

    iput-boolean v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->b:Z

    iput-object p1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->initialize(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->initialize(I)V

    iput-boolean v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCellID(I)I
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a()V

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getCellID(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    aget p0, p0, p1

    return p0
.end method

.method protected abstract getCellLocation(I)Landroid/telephony/CellLocation;
.end method

.method protected abstract getDeviceId(I)Ljava/lang/String;
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getIMSI(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getLatitude(I)I
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a()V

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->latitudes:[I

    aget v0, v0, p1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getLatitude(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->latitudes:[I

    aget p0, p0, p1

    return p0
.end method

.method public getLocationID(I)I
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a()V

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getLocationID(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    aget p0, p0, p1

    return p0
.end method

.method public getLongitude(I)I
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a()V

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->longitudes:[I

    aget v0, v0, p1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getLongitude(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->longitudes:[I

    aget p0, p0, p1

    return p0
.end method

.method protected abstract getNetworkOperator(I)Ljava/lang/String;
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getPhoneModel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSMC(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getSMSCentor(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getSMC(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected abstract getSMSCentor(I)Ljava/lang/String;
.end method

.method public getSWVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getSWVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getSubscriberId(I)Ljava/lang/String;
.end method

.method public getSystemID(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a()V

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    aget-object v0, v0, p1

    sget-object v1, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getSystemID(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected initialize(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    const/4 v2, 0x2

    aput v2, v1, p1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    aput v2, v1, p1

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    aput v2, v1, p1

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->latitudes:[I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    aput v2, v1, p1

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->longitudes:[I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    aput v0, p0, p1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    const/4 v2, 0x1

    aput v2, v1, p1

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    aput v2, v1, p1

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    aput v0, p0, p1

    :cond_2
    :goto_1
    return-void
.end method

.method public isCDMANetwork(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a()V

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->isCDMANetwork(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    aget p0, p0, p1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isNetworkAvailable(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a()V

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->a:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->isNetworkAvailable(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    aget p0, p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
