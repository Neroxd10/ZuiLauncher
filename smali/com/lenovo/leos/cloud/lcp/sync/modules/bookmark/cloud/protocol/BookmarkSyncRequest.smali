.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkProtocol;


# instance fields
.field a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a:Lorg/json/JSONObject;

    :try_start_0
    const-string p0, "device_id"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addBacked(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)V
    .locals 2

    :try_start_0
    const-string v0, "backed"

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->toJSONObject(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addDelete(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "delete"

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addRevert(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "revert"

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toBytes()[B
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toJSONObject(Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->getVisits()I

    move-result v0

    const-string v1, "visits"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->getDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->getFavicon()Ljava/lang/String;

    move-result-object v0

    const-string v1, "favicon"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/task/po/Bookmark;->getExtend()Ljava/lang/String;

    move-result-object p1

    const-string v0, "extend"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/bookmark/cloud/protocol/BookmarkSyncRequest;->a:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
