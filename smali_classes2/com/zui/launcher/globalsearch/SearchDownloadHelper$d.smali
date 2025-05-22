.class Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;
.super Lcom/zui/launcher/networksdk/ResultCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getGameAppList(Lcom/zui/launcher/GlobalSearchView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/networksdk/ResultCallback<",
        "Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

.field final synthetic f:Lcom/zui/launcher/GlobalSearchView;

.field final synthetic g:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;IILcom/zui/launcher/globalsearch/utils/GlobalSearchSp;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->g:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->b:Landroid/content/Context;

    iput p3, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->c:I

    iput p4, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->d:I

    iput-object p5, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->e:Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

    iput-object p6, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->f:Lcom/zui/launcher/GlobalSearchView;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;)V
    .locals 6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->getData()Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;->getDatalist()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->g:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse datalist -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;->getIconAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean$DatalistBean;->getVersioncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->isDownloading(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->b:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    invoke-direct {v5}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->setPkName(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->setVersionCode(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->setIconAddress(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->build()Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->c:I

    if-ge p1, v1, :cond_3

    iget p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->d:I

    add-int/lit8 p1, p1, 0x5

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->e:Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->setRequestGameNum(Landroid/content/Context;I)Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->g:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->f:Lcom/zui/launcher/GlobalSearchView;

    iget p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->c:I

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getGameAppList(Lcom/zui/launcher/GlobalSearchView;I)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->f:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->getRecommendNetApp(Ljava/util/List;I)V

    :cond_4
    return-void
.end method

.method public onError(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->g:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGameAppList onError -->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;->b(Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;)V

    return-void
.end method
