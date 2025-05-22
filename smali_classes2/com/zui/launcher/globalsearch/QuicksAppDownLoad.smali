.class public Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QuicksAppDownLoad"

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->e(Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;)V

    return-void
.end method

.method private e(Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->d:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->d:Ljava/util/LinkedHashMap;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/zui/launcher/GlobalSearchView;->resetClientId()V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->d:Ljava/util/LinkedHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private f(Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad$a;-><init>(Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;Lokhttp3/Request;Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public clearRetryMap()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->d:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public downLoadQuicksApp(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a:Ljava/lang/String;

    const-string p1, "downLoadQuicksApp  mClientID isEmpty --> "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/GlobalSearchView;->getQuickAppPlatformVersion(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://sams.lenovomm.com/ams/3.0/appimesearch.do?kw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&clientid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&cnt=10&channelid=3b9aca233b9aca24&qkpf="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downLoadQuicksApp  url --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->f(Ljava/lang/String;Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V

    return-void
.end method
