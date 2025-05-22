.class Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;
.super Lcom/zui/launcher/networksdk/ResultCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->downloadAllData(Landroid/content/Context;Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/networksdk/ResultCallback<",
        "Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

.field final synthetic c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;->c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;->b:Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;->getData()Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;->c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "downloadAllData ----->response.getData is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;->getDownurl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;->c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadurl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;->c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;->b:Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->startTask(Lcom/zui/launcher/globalsearch/BaseDataModel;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onError(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;->c:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadAllData Exception : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;->b(Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;)V

    return-void
.end method
