.class Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;
.super Lcom/zui/launcher/networksdk/ResultCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->downloadGameApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/networksdk/ResultCallback<",
        "Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

.field final synthetic d:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->d:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->c:Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->getData()Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;->getAppInfo()Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->getAppDownloadAdr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->d:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadurl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->c:Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getPkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->setPkName(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->c:Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->c:Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->setVersionCode(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->build()Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->c:Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->c:Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->d:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->startTask(Lcom/zui/launcher/globalsearch/BaseDataModel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->d:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadGameApp Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance p2, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e$a;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;->b(Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;)V

    return-void
.end method
