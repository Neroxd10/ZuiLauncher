.class public Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;
.super Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;
.source ""


# instance fields
.field c:Landroid/telephony/TelephonyManager;

.field d:Landroid/telephony/CellLocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;-><init>(Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->c:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->d:Landroid/telephony/CellLocation;

    if-eqz p1, :cond_0

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->c:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->c:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->d:Landroid/telephony/CellLocation;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->d:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCellLocation error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultDeviceInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->d:Landroid/telephony/CellLocation;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDeviceId(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->c:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    return-object p0
.end method

.method protected getNetworkOperator(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->c:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0
.end method

.method protected getSMSCentor(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    return-object p0
.end method

.method public getSWVersion()Ljava/lang/String;
    .locals 0

    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object p0
.end method

.method protected getSubscriberId(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->c:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    return-object p0
.end method

.method public isCDMANetwork(I)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->c:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
