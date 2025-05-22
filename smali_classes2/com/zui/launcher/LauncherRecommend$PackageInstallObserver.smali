.class public Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherRecommend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/LauncherRecommend;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;->b:Lcom/zui/launcher/LauncherRecommend;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver$Stub;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package install observer, on package installed, pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", returnCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;->b:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p1}, Lcom/zui/launcher/LauncherRecommend;->c(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;->b:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->c(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.kukool.ACTION_SILIENT_INSTALL_RESULT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;->a:Ljava/lang/String;

    const-string v1, "packagename"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "returncode"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;->b:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
