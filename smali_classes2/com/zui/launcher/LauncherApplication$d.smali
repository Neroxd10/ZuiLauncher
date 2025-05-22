.class Lcom/zui/launcher/LauncherApplication$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherApplication;->initCTAData()V
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
.method constructor <init>(Lcom/zui/launcher/LauncherApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V
    .locals 0

    const-string p0, "Deviceid Service Connected"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ZuiLauncher"

    const-string p1, "--------->OpenDeviceId serviceConnected------"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bridge synthetic serviceConnected(Ljava/lang/Object;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/LauncherApplication$d;->a(Ljava/lang/String;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V

    return-void
.end method
