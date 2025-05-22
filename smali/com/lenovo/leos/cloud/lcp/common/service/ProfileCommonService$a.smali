.class Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService$a;
.super Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;->createHolderManager()Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileCommonService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected setBackupEntiy(Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
