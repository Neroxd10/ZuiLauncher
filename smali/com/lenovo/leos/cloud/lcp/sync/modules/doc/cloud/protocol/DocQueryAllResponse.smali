.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/FileProtocol;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;->a:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;->buildAllDocumentEntity()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildAllDocumentEntity()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;->a:Lorg/json/JSONObject;

    const-string v1, "doclist"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->buildJson2DocumentEntity(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getResponseDocs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;->b:Ljava/util/List;

    return-object p0
.end method

.method public getResponseJson()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public mockBuildAllDocumentEntity(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentServiceImp;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentServiceImp;-><init>()V

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/service/DocumentService;->searchAll()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setId(Ljava/lang/Long;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public setResponseDocs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;->b:Ljava/util/List;

    return-void
.end method

.method public setResponseJson(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/protocol/DocQueryAllResponse;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public toBytes()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
