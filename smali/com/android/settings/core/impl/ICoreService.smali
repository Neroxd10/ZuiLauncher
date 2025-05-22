.class public interface abstract Lcom/android/settings/core/impl/ICoreService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/impl/ICoreService$Stub;,
        Lcom/android/settings/core/impl/ICoreService$Default;
    }
.end annotation


# virtual methods
.method public abstract BindUpdateEngine()V
.end method

.method public abstract RecoveryMode()V
.end method

.method public abstract SecretRecoveryMode(Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract SecretRecoveryWipeMode(Lcom/android/settings/core/impl/IResultListener;Z)V
.end method

.method public abstract clearAppData(Ljava/lang/String;ILcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract copyFile(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract deleteFile(Ljava/lang/String;)V
.end method

.method public abstract getDeviceId(Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract getOtaInformation(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getinstallPreApps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract install(Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract installApps(Landroid/net/Uri;Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract installPreApp(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isExsitApp(Ljava/lang/String;)Z
.end method

.method public abstract isOemUnlock(Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract putSettingsValueforUser(IILjava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract reboot()V
.end method

.method public abstract setIABResultListener(Lcom/android/settings/core/impl/IABResultListener;)V
.end method

.method public abstract setIBackABResultListener(Lcom/android/settings/core/impl/IABResultListener;)V
.end method

.method public abstract setThemeWallPaper(Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract setiResultListener(Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract startUpdateEngine(Ljava/lang/String;)V
.end method

.method public abstract startUpdateWipeEngine(Ljava/lang/String;Z)V
.end method

.method public abstract unBindUpdateEngine()V
.end method

.method public abstract unIABResultListener()V
.end method

.method public abstract unIBackABResultListener()V
.end method

.method public abstract uniResultListener()V
.end method

.method public abstract uninstall(Ljava/lang/String;Lcom/android/settings/core/impl/IResultListener;)V
.end method

.method public abstract updateSystem(Ljava/lang/String;)V
.end method
