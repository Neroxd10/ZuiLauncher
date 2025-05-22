.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus$a;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus$a;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDataTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    return-object p0
.end method

.method public setDataTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->c:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->a:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/BackupStatus;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/Status;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
