.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver$Stub$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver$Stub$a;->a:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
