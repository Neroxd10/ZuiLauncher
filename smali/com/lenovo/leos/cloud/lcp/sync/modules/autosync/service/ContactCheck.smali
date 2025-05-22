.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;
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
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManager;

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;

    return-object v0
.end method


# virtual methods
.method public check()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManager;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManager;->checkBackup()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic check()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactCheck;->check()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;

    move-result-object p0

    return-object p0
.end method
