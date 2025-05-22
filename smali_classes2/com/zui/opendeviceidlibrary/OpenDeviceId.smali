.class public Lcom/zui/opendeviceidlibrary/OpenDeviceId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String; = "OpenDeviceId library"

.field private static f:Z = false


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zui/deviceidservice/IDeviceidInterface;

.field private c:Landroid/content/ServiceConnection;

.field private d:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    return-void
.end method

.method static synthetic a(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Lcom/zui/deviceidservice/IDeviceidInterface;)Lcom/zui/deviceidservice/IDeviceidInterface;
    .locals 0

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    return-object p1
.end method

.method static synthetic b(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
    .locals 0

    iget-object p0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->f:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->f:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAAID()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liufeng, getAAID package\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v3, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v2, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->createAAIDForPackageName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v2, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    const-string v0, "getAAID error, RemoteException!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "input package is null!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null, must be new OpenDeviceId first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getOAID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "getOAID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null, must be new OpenDeviceId first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getUDID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "getUDID error, Exception!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "getUDID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null, must be new OpenDeviceId first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVAID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liufeng, getVAID package\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v1, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getVAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "getVAID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "input package is null!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null, must be new OpenDeviceId first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Landroid/content/Context;Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    new-instance p1, Lcom/zui/opendeviceidlibrary/OpenDeviceId$a;

    invoke-direct {p1, p0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId$a;-><init>(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->c:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.zui.deviceidservice"

    const-string v0, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->c:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bindService Successful!"

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p1, "bindService Failed!"

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context can not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSupported()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v1, :cond_0

    const-string v1, "Device support opendeviceid"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v1}, Lcom/zui/deviceidservice/IDeviceidInterface;->isSupport()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    const-string v1, "isSupport error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    return v0
.end method

.method public setLogEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->f:Z

    return-void
.end method

.method public shutdown()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "unBind Service successful"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unBind Service exception"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->b:Lcom/zui/deviceidservice/IDeviceidInterface;

    return-void
.end method
