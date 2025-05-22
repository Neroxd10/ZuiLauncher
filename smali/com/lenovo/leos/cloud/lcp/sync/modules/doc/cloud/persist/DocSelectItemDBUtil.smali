.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->a:Landroid/content/Context;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;
    .locals 2

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->path:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->size:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getType()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getFileNameExtension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->docId:J

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->getLastModif()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->lastModif:J

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->docType:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;
    .locals 2

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;-><init>()V

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->docId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setId(Ljava/lang/Long;)V

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->lastModif:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setLastModif(Ljava/lang/Long;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setPath(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->size:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setSize(Ljava/lang/Long;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setUrl(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;->type:Ljava/lang/String;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;->getName(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;->setType(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentTypeEnum;)V

    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cleanItems()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;->deleteAll()V

    return-void
.end method

.method public delete(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;

    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;->delete(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;)V

    return-void
.end method

.method public querySelectedItems()Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;

    const-string v2, "IMPORTANT_DOCUMENT"

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;->queryAllBy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v3, "OTHER_DOCUMENT"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;

    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;->queryAllBy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v2, v3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;

    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/util/DocChooseResult;-><init>(ZLjava/util/List;Ljava/lang/String;I)V

    return-object p0
.end method

.method public saveSelectedItems(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;

    invoke-direct {p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDBUtil;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItemDao;->insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/persist/DocSelectItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method
