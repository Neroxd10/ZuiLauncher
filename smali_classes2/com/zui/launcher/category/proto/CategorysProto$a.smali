.class Lcom/zui/launcher/category/proto/CategorysProto$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/api/JsonRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/category/proto/CategorysProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/category/proto/CategorysProto$a;->a:Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;

    iput-object p1, p0, Lcom/zui/launcher/category/proto/CategorysProto$a;->a:Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/HashMap;
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

    iget-object p0, p0, Lcom/zui/launcher/category/proto/CategorysProto$a;->a:Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->getRequestData()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public onFailue(Ljava/lang/String;[Lorg/apache/http/Header;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/category/proto/CategorysProto$a;->a:Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/zui/launcher/category/proto/CategorysProto;->b(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/category/proto/CategorysProto$a;->a:Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;->onFinish()V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;Lorg/json/JSONArray;[Lorg/apache/http/Header;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/category/proto/CategorysProto$a;->a:Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/category/proto/CategorysProto;->a(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
