.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug$OnLogListener;
    }
.end annotation


# static fields
.field public static final LOG_ALL:I = 0xffff

.field public static final LOG_COMMAND:I = 0x2

.field public static final LOG_GENERAL:I = 0x1

.field public static final LOG_NONE:I = 0x0

.field public static final LOG_OUTPUT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "libsuperuser"

.field private static a:Z = false

.field private static b:I = 0xffff

.field private static c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug$OnLogListener; = null

.field private static d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->a:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->b:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug$OnLogListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug$OnLogListener;->onLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[libsuperuser]["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v0, " "

    if-nez p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "libsuperuser"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static getDebug()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->a:Z

    return v0
.end method

.method public static getLogTypeEnabled(I)Z
    .locals 1

    sget v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->b:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getLogTypeEnabledEffective(I)Z
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->getLogTypeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getOnLogListener()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug$OnLogListener;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug$OnLogListener;

    return-object v0
.end method

.method public static getSanityChecksEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->d:Z

    return v0
.end method

.method public static getSanityChecksEnabledEffective()Z
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->getSanityChecksEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "G"

    invoke-static {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logCommand(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "C"

    invoke-static {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logOutput(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "O"

    invoke-static {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->a:Z

    return-void
.end method

.method public static setLogTypeEnabled(IZ)V
    .locals 0

    if-eqz p1, :cond_0

    sget p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->b:I

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->b:I

    not-int p0, p0

    and-int/2addr p0, p1

    :goto_0
    sput p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->b:I

    return-void
.end method

.method public static setOnLogListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug$OnLogListener;)V
    .locals 0

    sput-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug$OnLogListener;

    return-void
.end method

.method public static setSanityChecksEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->d:Z

    return-void
.end method
