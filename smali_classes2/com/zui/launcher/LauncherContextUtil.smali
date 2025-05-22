.class public Lcom/zui/launcher/LauncherContextUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:Lcom/zui/opendeviceidlibrary/OpenDeviceId; = null

.field private static c:Lcom/zui/launcher/SecureSettingObserver; = null

.field public static final positionId:Ljava/lang/String; = "50290"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherContextUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/LauncherContextUtil;->d()V

    return-void
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/LauncherContextUtil;->f()V

    return-void
.end method

.method private static d()V
    .locals 3

    new-instance v0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-direct {v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;-><init>()V

    sput-object v0, Lcom/zui/launcher/LauncherContextUtil;->b:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    sget-object v1, Lcom/zui/launcher/LauncherContextUtil;->a:Landroid/content/Context;

    new-instance v2, Lcom/zui/launcher/LauncherContextUtil$b;

    invoke-direct {v2}, Lcom/zui/launcher/LauncherContextUtil$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->init(Landroid/content/Context;Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;)I

    return-void
.end method

.method private static e()V
    .locals 4

    new-instance v0, Lcom/zui/launcher/LauncherContextUtil$a;

    sget-object v1, Lcom/zui/launcher/LauncherContextUtil;->a:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-string v3, "user_setup_complete"

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/launcher/LauncherContextUtil$a;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/LauncherContextUtil;->c:Lcom/zui/launcher/SecureSettingObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/SecureSettingObserver;->setListening(Z)V

    return-void
.end method

.method private static f()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherContextUtil;->c:Lcom/zui/launcher/SecureSettingObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/SecureSettingObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherContextUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getOAID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherContextUtil;->b:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->getOAID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherContextUtil;->a:Landroid/content/Context;

    sput-object p0, Lcom/zui/launcher/LauncherContextUtil;->a:Landroid/content/Context;

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isCTAVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherContextUtil;->e()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/LauncherContextUtil;->d()V

    :goto_0
    invoke-static {p0}, Lcom/zui/launcher/XReaperCard;->initXReaper(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/zui/launcher/XReaperCard;->isXReaperEnable(Z)V

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/zui/launcher/XReaperCard;->onDestry(Landroid/content/Context;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/zui/launcher/LauncherContextUtil;->b:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    :cond_2
    :goto_1
    return-void
.end method
