.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
.source ""


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "photo_checksum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;",
        ">;"
    }
.end annotation


# instance fields
.field public compressAdler:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "compress_adler"
    .end annotation
.end field

.field public isBackup:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "is_backup"
    .end annotation
.end field

.field public mark:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "mark"
    .end annotation
.end field

.field public originalAdler:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "original_adler"
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "uid"
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->originalAdler:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->originalAdler:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->compressAdler:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->compressAdler:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->isBackup:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->isBackup:I

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->mark:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->mark:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    move-result-object p0

    return-object p0
.end method
