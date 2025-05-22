.class Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/InternetGlobalSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->b:Ljava/lang/Runnable;

    return-void
.end method

.method private b()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v3

    :cond_0
    new-instance v7, Lcom/zui/launcher/model/BrowserSuggestion;

    invoke-direct {v7}, Lcom/zui/launcher/model/BrowserSuggestion;-><init>()V

    iput-object v5, v7, Lcom/zui/launcher/model/BrowserSuggestion;->title:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/zui/launcher/model/BrowserSuggestion;->setActivity(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    invoke-static {v8}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-------internetGlobalSearch----analyzeData---key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "...url: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->debug(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    if-ne v4, v2, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->addFirstBrowserSuggestion(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/model/BrowserSuggestion;

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    invoke-static {p2}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public getRequestData()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------internetGlobalSearch----failed---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->b()V

    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------internetGlobalSearch----onSuccess---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->debug(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "s"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "search_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "https://m.so.com/s?srcg=cs_sqgc_10&nav=0&q="

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->c:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->addFirstBrowserSuggestion(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->b()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->b()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;->b()V

    throw p1
.end method
