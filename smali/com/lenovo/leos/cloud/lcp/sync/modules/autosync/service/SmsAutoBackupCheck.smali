.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ICheck<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManagerImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManager;

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;

    return-object v0
.end method


# virtual methods
.method public check()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManager;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsMetadataManager;->checkAutoBackup()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic check()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/SmsAutoBackupCheck;->check()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    move-result-object p0

    return-object p0
.end method
