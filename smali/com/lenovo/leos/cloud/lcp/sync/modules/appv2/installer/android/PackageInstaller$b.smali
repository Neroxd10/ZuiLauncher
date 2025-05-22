.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$b;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageDeleteObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    const-string v2, "DELETE_"

    invoke-static {v1, v2, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resultDescription"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====UNINSTALL_COMPLETE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returnCode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackInstaller"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
