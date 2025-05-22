.class Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->f(Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Request;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/GlobalSearchView;

.field final synthetic d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;Lokhttp3/Request;Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->a:Lokhttp3/Request;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetWorkData  call -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",  IOException -->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNetWorkData onError --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->a:Lokhttp3/Request;

    invoke-virtual {p0}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n Exception -->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetWorkData  res -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->b(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->c(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v0, 0x134

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1, p2, p0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->d(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;)V

    return-void

    :cond_0
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNetWorkData onResponse --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->isIs_success()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->getResult()Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;->getDocs()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-virtual {p2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getApppack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getQuicks()Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;

    move-result-object v1

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->isDownloading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownloadingApps --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v2}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstalledPackageName --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->b(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->c(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackOverflowError  ex --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception  ex --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->c:Lcom/zui/launcher/GlobalSearchView;

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->b(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->d:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->c(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p0}, Lcom/zui/launcher/GlobalSearchView;->switchThreadQuicksAppData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
