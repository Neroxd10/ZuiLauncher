.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    return-void
.end method

.method public getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaTipLoader;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    return-object p0
.end method
