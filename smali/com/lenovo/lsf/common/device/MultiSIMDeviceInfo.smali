.class public Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;
.super Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;
.source ""


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/lsf/common/device/DeviceInfo;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;-><init>(Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "android.provider.MultiSIMUtils"

    const-string v1, "getDefault"

    invoke-static {p1, v1, v0, p2}, Lcom/lenovo/lsf/common/ReflectUtils;->invokeClass(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->c:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p0, p1, v1, v0}, Lcom/lenovo/lsf/common/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1

    :try_start_0
    const-string v0, "getCellLocation"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->b(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getDeviceId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->b(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getNetworkOperator(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getNetworkOperator"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->b(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getSMSCentor(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getScAddress"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->b(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->b(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
