.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/os/Bundle;

    const/16 p1, -0x3e7

    const-string v0, "resultCode"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;I)V

    :cond_0
    return-void
.end method
