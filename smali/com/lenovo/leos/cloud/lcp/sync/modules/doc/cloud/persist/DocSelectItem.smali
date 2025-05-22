.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
.source ""


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "doc_select_item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;",
        ">;"
    }
.end annotation


# instance fields
.field public docId:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "doc_id"
    .end annotation
.end field

.field public docType:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "doc_type"
    .end annotation
.end field

.field public fileNameExtension:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "fileNameExtension"
    .end annotation
.end field

.field public lastModif:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "lastModif"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "name"
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "path"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "size"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;-><init>()V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->docId:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->docId:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->fileNameExtension:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->fileNameExtension:Ljava/lang/String;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->lastModif:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->lastModif:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->path:Ljava/lang/String;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->size:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->size:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->url:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->docType:Ljava/lang/String;

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->docType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;

    move-result-object p0

    return-object p0
.end method
