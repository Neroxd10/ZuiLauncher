.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/CheckFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactCheckInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;

    move-result-object v0

    return-object v0
.end method

.method public static getSmsCheckAutoInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;

    move-result-object v0

    return-object v0
.end method
