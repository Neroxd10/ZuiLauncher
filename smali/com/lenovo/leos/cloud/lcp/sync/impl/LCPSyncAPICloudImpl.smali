.class public final Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;
.super Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPICloudImpl;

    return-object v0
.end method


# virtual methods
.method public varargs sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatchTask([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    return-void
.end method
