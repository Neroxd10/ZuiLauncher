.class public Lcom/zui/launcher/globalsearch/InternetGlobalSearch;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;
    }
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://fw.zui.com/"

.field public static final BASE_URL_TEST:Ljava/lang/String; = "http://fw.gtbrowser.com/"

.field public static final DATA_PARAM:Ljava/lang/String; = "data/suggestion/get?channel=gs&keyword="

.field public static final DEBUG:Z = true

.field public static final DEFAULT_SEARCH_URL:Ljava/lang/String; = "https://m.so.com/s?srcg=cs_sqgc_10&nav=0&q="

.field public static final FUNCTION_SWITCH:Z = true

.field public static final KEY_URL:Ljava/lang/String; = "search_url"

.field public static final KEY_WORDS:Ljava/lang/String; = "s"

.field public static final TAG:Ljava/lang/String; = "InternetGlobalSearch"

.field public static final TEST:Z = false

.field private static b:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

.field private static c:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/BrowserSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://fw.zui.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data/suggestion/get?channel=gs&keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------internetSearch----getQueryURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->debug(Ljava/lang/String;)V

    return-object p0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InternetGlobalSearch"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/InternetGlobalSearch;
    .locals 2

    sget-object v0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->b:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;-><init>()V

    sput-object v1, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->b:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    :cond_0
    sget-object v1, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->b:Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isInternetSearchEnabled()Z
    .locals 1

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addFirstBrowserSuggestion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/model/BrowserSuggestion;

    invoke-direct {v0}, Lcom/zui/launcher/model/BrowserSuggestion;-><init>()V

    iput-object p1, v0, Lcom/zui/launcher/model/BrowserSuggestion;->title:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/launcher/model/BrowserSuggestion;->setActivity(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/BrowserSuggestion;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public internetSearch(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------internetSearch----keyword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->isInternetSearchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    new-instance v0, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch$a;-><init>(Lcom/zui/launcher/globalsearch/InternetGlobalSearch;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/category/proto/CategorysProto;->internetGlobalSearch(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
