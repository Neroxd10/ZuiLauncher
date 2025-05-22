.class public Lcom/zui/launcher/category/proto/CategorysProto;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/category/proto/CategorysProto$a;
    }
.end annotation


# static fields
.field public static Get:Ljava/lang/String; = "get"

.field public static Post:Ljava/lang/String; = "post"

.field private static a:Ljava/lang/String; = "CategorysProto"

.field private static b:Lcom/loopj/android/http/AsyncHttpClient; = null

.field public static generalUrl:Ljava/lang/String; = "https://apizui.lenovomm.com"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/networksdk/http/HttpUtil;->getAsyncHttpClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static QueryCategoryNameAndAppsBelong(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default/getClassficationInfoNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/category/proto/CategorysProto;->e(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static appsRecommendByCategory(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/advanced/recommendByCat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static appsRecommendByPname(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/advanced/recommendByPkg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static appsRecommendByRules(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/advanced/recommendByOther"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static appsSearch(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 3

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/v1/uds/get-app-download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/zui/launcher/category/proto/CategorysProto;->g(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpClient;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/category/proto/CategorysProto;->d(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static blurryAppsSearch(Ljava/lang/String;ILcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p2}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ams.lenovomm.com/ams/3.0/appimesearch.do?clientid=16162134-1a2-2-9999-1-3-1_240_i100000000000009t19700101000000001_c24202d1p710&kw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&cnt="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/category/proto/CategorysProto;->Get:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/zui/launcher/category/proto/CategorysProto;->g(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpClient;)V

    return-void
.end method

.method private static c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->getRequestData()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->h(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static clientModifyPassWord(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/changePwd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static clinetLogInReqest(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static clinetLogOutReqest(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static e(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/category/proto/CategorysProto;->h(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    return-void

    :cond_1
    sget-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/networksdk/api/JsonRequest;->getInstance()Lcom/zui/launcher/networksdk/api/JsonRequest;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/category/proto/CategorysProto$a;

    invoke-direct {v0, p1}, Lcom/zui/launcher/category/proto/CategorysProto$a;-><init>(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    sget-object p1, Lcom/zui/launcher/category/proto/CategorysProto;->b:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {p2, p0, v0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->postRequest(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Lcom/loopj/android/http/AsyncHttpClient;)Z

    return-void

    :cond_2
    sget-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->Get:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/zui/launcher/networksdk/api/JsonRequest;->getInstance()Lcom/zui/launcher/networksdk/api/JsonRequest;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/category/proto/CategorysProto$a;

    invoke-direct {v0, p1}, Lcom/zui/launcher/category/proto/CategorysProto$a;-><init>(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    sget-object p1, Lcom/zui/launcher/category/proto/CategorysProto;->b:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {p2, p0, v0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->getRequest(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Lcom/loopj/android/http/AsyncHttpClient;)Z

    return-void

    :cond_3
    invoke-static {p1}, Lcom/zui/launcher/category/proto/CategorysProto;->h(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    return-void
.end method

.method private static g(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/category/proto/CategorysProto;->h(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    return-void

    :cond_1
    sget-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/networksdk/api/JsonRequest;->getInstance()Lcom/zui/launcher/networksdk/api/JsonRequest;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/category/proto/CategorysProto$a;

    invoke-direct {v0, p1}, Lcom/zui/launcher/category/proto/CategorysProto$a;-><init>(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    invoke-virtual {p2, p0, v0, p3}, Lcom/zui/launcher/networksdk/api/JsonRequest;->postRequest(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Lcom/loopj/android/http/AsyncHttpClient;)Z

    return-void

    :cond_2
    sget-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->Get:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/zui/launcher/networksdk/api/JsonRequest;->getInstance()Lcom/zui/launcher/networksdk/api/JsonRequest;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/category/proto/CategorysProto$a;

    invoke-direct {v0, p1}, Lcom/zui/launcher/category/proto/CategorysProto$a;-><init>(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    invoke-virtual {p2, p0, v0, p3}, Lcom/zui/launcher/networksdk/api/JsonRequest;->getRequest(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Lcom/loopj/android/http/AsyncHttpClient;)Z

    return-void

    :cond_3
    invoke-static {p1}, Lcom/zui/launcher/category/proto/CategorysProto;->h(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    return-void
.end method

.method public static getCategorysFileUrlAndFile(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default/getTopHotestAppInfoUrl?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Get:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static getClinet()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1

    sget-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->b:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v0
.end method

.method public static getCustomCategorys(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/customer/getCustomerClassification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Get:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadAddr(Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p2}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ams.lenovomm.com/ams/3.0/appdownaddress4thirdparty.do?pn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&vc="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&clientid=15808-1a2-2-9999-1_240_i100000000000001t19700101000000000_c303d1p30"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/category/proto/CategorysProto;->Get:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/zui/launcher/category/proto/CategorysProto;->g(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpClient;)V

    return-void
.end method

.method public static getRecommendGiftRequest(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/advanced/queryGift"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static h(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onFailure(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onFinish()V

    return-void
.end method

.method public static internetGlobalSearch(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->Get:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->g(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpClient;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static registerClinetInfoReqest(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/reportClientInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static registerClinetReqest(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static setCustomCategorys(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->getRequestData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/customer/setCustomerClassification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "customCategorys param is not incorrect!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onFailure(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onFinish()V

    return-void
.end method

.method public static setNoRegisterCustomCategorys(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->getRequestData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/customer/setCustomerClassification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/zui/launcher/category/proto/CategorysProto;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "customCategorys param is not incorrect!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onFailure(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onFinish()V

    return-void
.end method

.method public static uploadInsAndUnInsRequest(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/zui/launcher/category/proto/CategorysProto;->c(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->generalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default/clientAppChange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/proto/CategorysProto;->Post:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/category/proto/CategorysProto;->f(Ljava/lang/String;Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method
