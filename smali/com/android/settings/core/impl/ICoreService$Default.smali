.class public Lcom/android/settings/core/impl/ICoreService$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/settings/core/impl/ICoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/impl/ICoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public BindUpdateEngine()V
    .locals 0

    return-void
.end method

.method public RecoveryMode()V
    .locals 0

    return-void
.end method

.method public SecretRecoveryMode(Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public SecretRecoveryWipeMode(Lcom/android/settings/core/impl/IResultListener;Z)V
    .locals 0

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public clearAppData(Ljava/lang/String;ILcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDeviceId(Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public getOtaInformation(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getinstallPreApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public install(Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public installApps(Landroid/net/Uri;Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public installPreApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isExsitApp(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOemUnlock(Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public isSecure()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public putSettingsValueforUser(IILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    return-void
.end method

.method public reboot()V
    .locals 0

    return-void
.end method

.method public setIABResultListener(Lcom/android/settings/core/impl/IABResultListener;)V
    .locals 0

    return-void
.end method

.method public setIBackABResultListener(Lcom/android/settings/core/impl/IABResultListener;)V
    .locals 0

    return-void
.end method

.method public setThemeWallPaper(Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public setiResultListener(Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public startUpdateEngine(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startUpdateWipeEngine(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public unBindUpdateEngine()V
    .locals 0

    return-void
.end method

.method public unIABResultListener()V
    .locals 0

    return-void
.end method

.method public unIBackABResultListener()V
    .locals 0

    return-void
.end method

.method public uniResultListener()V
    .locals 0

    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
    .locals 0

    return-void
.end method

.method public updateSystem(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
