.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppDeleteResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "count"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method
