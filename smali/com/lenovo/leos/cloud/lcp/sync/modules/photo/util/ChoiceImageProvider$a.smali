.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->startLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;->isServerReachable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;->queryIdList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;Ljava/util/List;)Ljava/util/List;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "network error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageInfoDao;->deleteAll()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/resultCode/ResultCodeUtil;->parseResultCode(Ljava/lang/Exception;)I

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->result:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;Ljava/lang/Exception;)Ljava/lang/Exception;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChoiceImageProvider;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
