.class public Lcom/zui/launcher/XReaperCard;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "XReaperCard"

.field private static b:Lcom/zui/xlog/sdk/ExAnalyticsTracker; = null

.field private static c:Z = false

.field private static d:Ljava/lang/String; = "category"

.field private static e:Ljava/lang/String; = "action"

.field private static f:Ljava/lang/String; = "lable"

.field private static g:Ljava/lang/String; = "value"

.field private static h:Ljava/lang/String; = "params_keys"

.field private static i:Ljava/lang/String; = "paramsvalues"

.field private static j:Ljava/lang/String; = "paramsindex"

.field private static k:Ljava/lang/String; = "params_singlekeys"

.field private static l:Ljava/lang/String; = "params_singlevalues"

.field private static m:Ljava/lang/String; = "params_singleindex"

.field private static n:I = 0x186a0

.field private static o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/XReaperCard$a;

    invoke-direct {v0}, Lcom/zui/launcher/XReaperCard$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/XReaperCard;->c:Z

    return v0
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/XReaperCard;->o()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static initXReaper(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/XReaperCard;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {p0}, Lcom/zui/launcher/XReaperCard;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/zui/launcher/XReaperCard;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initXReaper key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "9L99QJB7RA82"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "xui_preload"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";versionname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";versionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/launcher/XReaperCard;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/zui/launcher/XReaperCard;->n:I

    invoke-virtual/range {v1 .. v6}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    return-void
.end method

.method public static isXReaperEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/zui/launcher/XReaperCard;->c:Z

    return-void
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()Lcom/zui/xlog/sdk/ExAnalyticsTracker;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static o()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/XReaperCard;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/XReaperCard;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    :cond_0
    return-void
.end method

.method public static onDestry(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zui/launcher/XReaperCard;->isXReaperEnable(Z)V

    invoke-static {}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->getInstance()Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->destroy(Landroid/content/Context;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/zui/launcher/XReaperCard;->b:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    return-void
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/zui/launcher/XReaperCard;->n:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "0.9"

    return-object p0
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    if-ge p4, v0, :cond_2

    if-ltz p4, :cond_2

    if-eqz p5, :cond_2

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/XReaperCard;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->e:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    sget-object p0, Lcom/zui/launcher/XReaperCard;->f:Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->g:Ljava/lang/String;

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->m:Ljava/lang/String;

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->k:Ljava/lang/String;

    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->l:Ljava/lang/String;

    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/XReaperCard;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->e:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    sget-object p0, Lcom/zui/launcher/XReaperCard;->f:Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->g:Ljava/lang/String;

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->j:Ljava/lang/String;

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->h:Ljava/lang/String;

    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->i:Ljava/lang/String;

    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/XReaperCard;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackEvent category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/XReaperCard;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->e:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    sget-object p0, Lcom/zui/launcher/XReaperCard;->f:Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->g:Ljava/lang/String;

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static trackThrowable(Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/XReaperCard;->d:Ljava/lang/String;

    const-string v3, "error"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/zui/launcher/XReaperCard;->e:Ljava/lang/String;

    const-string v3, "Throwable"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/zui/launcher/XReaperCard;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->g:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/zui/launcher/XReaperCard;->o:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
