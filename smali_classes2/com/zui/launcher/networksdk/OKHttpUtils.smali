.class public Lcom/zui/launcher/networksdk/OKHttpUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networksdk/OKHttpUtils$e;,
        Lcom/zui/launcher/networksdk/OKHttpUtils$FailResponse;,
        Lcom/zui/launcher/networksdk/OKHttpUtils$Param;,
        Lcom/zui/launcher/networksdk/OKHttpUtils$CacheInterceptor;
    }
.end annotation


# static fields
.field public static final CHCHE_CONTROL_DURATION:I = 0x15180

.field public static final TIMEOUT:I = 0x3c

.field private static f:Lcom/zui/launcher/networksdk/OKHttpUtils;

.field private static final g:Ljava/util/BitSet;


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Landroid/os/Handler;

.field private c:Lcom/google/gson/Gson;

.field private d:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private e:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/zui/launcher/networksdk/OKHttpUtils;->g:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/Cache;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/high16 v2, 0xa00000

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/networksdk/OKHttpUtils$CacheInterceptor;

    invoke-direct {v2}, Lcom/zui/launcher/networksdk/OKHttpUtils$CacheInterceptor;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->a:Lokhttp3/OkHttpClient;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->c:Lcom/google/gson/Gson;

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->d:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v0, Lcom/zui/launcher/networksdk/OKHttpUtils$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/networksdk/OKHttpUtils$e;-><init>(Lcom/zui/launcher/networksdk/OKHttpUtils$a;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->e:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/Utilities;->getOverlayScreenAppContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object p0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "-----init ImageLoaderConfiguration failed: "

    invoke-static {p1, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Ljava/lang/Exception;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/networksdk/OKHttpUtils;->i(Lokhttp3/Request;Ljava/lang/Exception;Lcom/zui/launcher/networksdk/ResultCallback;)V

    return-void
.end method

.method public static attachHttpGetParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static attachHttpGetParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->formatParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static attachHttpGetParams(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->formatParams(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/networksdk/OKHttpUtils;Ljava/lang/Object;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/networksdk/OKHttpUtils;->j(Ljava/lang/Object;Lcom/zui/launcher/networksdk/ResultCallback;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/networksdk/OKHttpUtils;)Lcom/google/gson/Gson;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->c:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/networksdk/OKHttpUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/String;[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;)Lokhttp3/Request;
    .locals 4

    const/4 p0, 0x0

    if-nez p2, :cond_0

    new-array p2, p0, [Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    :cond_0
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    array-length v1, p2

    :goto_0
    if-ge p0, v1, :cond_2

    aget-object v2, p2, p0

    iget-object v3, v2, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "null"

    :cond_1
    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p0

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "UTF-8"

    :goto_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    sget-object v0, Lcom/zui/launcher/networksdk/OKHttpUtils;->g:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->urlencode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/networksdk/OKHttpUtils$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils$a;-><init>(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Lcom/zui/launcher/networksdk/ResultCallback;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static formatParams(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatParams(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    const-string v3, ""

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/OKHttpUtils;->f:Lcom/zui/launcher/networksdk/OKHttpUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/networksdk/OKHttpUtils;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/OKHttpUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/networksdk/OKHttpUtils;->f:Lcom/zui/launcher/networksdk/OKHttpUtils;

    :cond_0
    sget-object p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->f:Lcom/zui/launcher/networksdk/OKHttpUtils;

    return-object p0
.end method

.method private h(Ljava/util/Map;)[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/zui/launcher/networksdk/OKHttpUtils$Param;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    new-array p0, p0, [Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    add-int/lit8 v2, p0, 0x1

    new-instance v3, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, p0

    move p0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private i(Lokhttp3/Request;Ljava/lang/Exception;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->b:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/networksdk/OKHttpUtils$b;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/zui/launcher/networksdk/OKHttpUtils$b;-><init>(Lcom/zui/launcher/networksdk/OKHttpUtils;Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private j(Ljava/lang/Object;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->b:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/networksdk/OKHttpUtils$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils$c;-><init>(Lcom/zui/launcher/networksdk/OKHttpUtils;Lcom/zui/launcher/networksdk/ResultCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static urlencode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-char p1, p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    const/16 p1, 0x2b

    goto :goto_1

    :cond_2
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->d:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->e:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v0, p2, p1, v1, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method

.method public displayImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 1

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->d:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p2, p1, p0, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method

.method public downloadAsync(Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 8

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v7, Lcom/zui/launcher/networksdk/OKHttpUtils$d;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/networksdk/OKHttpUtils$d;-><init>(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Lcom/zui/launcher/networksdk/ResultCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public getAsyn(Lcom/zui/launcher/networksdk/OKHttpUtils$Param;Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p1, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V

    return-void
.end method

.method public getAsyn(Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 1

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V

    return-void
.end method

.method public getAsyn(Ljava/lang/String;Lokhttp3/CacheControl;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V

    return-void
.end method

.method public varargs post(Ljava/lang/String;[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;)Lokhttp3/Response;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/networksdk/OKHttpUtils;->e(Ljava/lang/String;[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;)Lokhttp3/Request;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->a:Lokhttp3/OkHttpClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public postAsyn(Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/networksdk/ResultCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/zui/launcher/networksdk/OKHttpUtils;->h(Ljava/util/Map;)[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/zui/launcher/networksdk/OKHttpUtils;->e(Ljava/lang/String;[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;)Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V

    return-void
.end method

.method public postAsyn(Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/networksdk/ResultCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/zui/launcher/networksdk/OKHttpUtils;->h(Ljava/util/Map;)[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    move-result-object p3

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "null"

    if-ge v3, v1, :cond_1

    aget-object v5, p3, v3

    iget-object v6, v5, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->b:Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v4, v5

    :goto_1
    invoke-virtual {v0, v6, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p4}, Lcom/zui/launcher/networksdk/OKHttpUtils;->h(Ljava/util/Map;)[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    move-result-object p3

    if-nez p3, :cond_2

    new-array p3, v2, [Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    :cond_2
    new-instance p4, Lokhttp3/FormBody$Builder;

    invoke-direct {p4}, Lokhttp3/FormBody$Builder;-><init>()V

    array-length v1, p3

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, p3, v2

    iget-object v5, v3, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    invoke-virtual {v0, v5, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p4}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p3

    new-instance p4, Lokhttp3/Request$Builder;

    invoke-direct {p4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p4, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V

    return-void
.end method

.method public postAsyn(Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;Ljava/util/Map;Lokhttp3/RequestBody;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/networksdk/ResultCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/zui/launcher/networksdk/OKHttpUtils;->h(Ljava/util/Map;)[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    move-result-object p3

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    iget-object v4, v3, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "null"

    :cond_0
    invoke-virtual {v0, v4, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V

    return-void
.end method

.method public varargs postAsyn(Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/zui/launcher/networksdk/OKHttpUtils;->e(Ljava/lang/String;[Lcom/zui/launcher/networksdk/OKHttpUtils$Param;)Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V

    return-void
.end method

.method public postAsync(Ljava/lang/String;Lokhttp3/RequestBody;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 1

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V

    return-void
.end method

.method public recyclerOkHttp()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public switchMainThread(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
