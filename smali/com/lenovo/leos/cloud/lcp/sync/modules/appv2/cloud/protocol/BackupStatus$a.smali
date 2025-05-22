.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;
    .locals 1

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;->valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;-><init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;)V

    return-object p0
.end method

.method public b(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;
    .locals 0

    new-array p0, p1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus$a;->a(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus$a;->b(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;

    move-result-object p0

    return-object p0
.end method
