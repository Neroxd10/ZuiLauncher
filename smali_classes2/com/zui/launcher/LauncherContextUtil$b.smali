.class Lcom/zui/launcher/LauncherContextUtil$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherContextUtil;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V
    .locals 2

    const-string p0, "Deviceid Service Connected"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ZuiLauncher"

    const-string p1, "------LauncherContextUtil--->OpenDeviceId serviceConnected------"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "---LauncherContextUtil-->context: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/launcher/LauncherContextUtil;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  positionId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "50290"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  openDeviceId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->getOAID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher"

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/cdnsdk/CdnSdk;->INIT:Lcom/lenovo/cdnsdk/CdnSdk;

    invoke-static {}, Lcom/zui/launcher/LauncherContextUtil;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->getOAID()Ljava/lang/String;

    move-result-object p2

    const-string v1, "1"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/lenovo/cdnsdk/CdnSdk;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic serviceConnected(Ljava/lang/Object;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/LauncherContextUtil$b;->a(Ljava/lang/String;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V

    return-void
.end method
