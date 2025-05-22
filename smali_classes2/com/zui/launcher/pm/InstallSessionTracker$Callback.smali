.class public interface abstract Lcom/zui/launcher/pm/InstallSessionTracker$Callback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/pm/InstallSessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onInstallSessionCreated(Lcom/zui/launcher/pm/PackageInstallInfo;)V
.end method

.method public abstract onPackageStateChanged(Lcom/zui/launcher/pm/PackageInstallInfo;)V
.end method

.method public abstract onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onUpdateSessionDisplay(Lcom/zui/launcher/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
.end method
