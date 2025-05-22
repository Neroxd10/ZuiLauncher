.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseCalendarSupportProtocol;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse$ContentCheckSumVisitor;
    }
.end annotation


# instance fields
.field a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/BaseCalendarSupportProtocol;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->a:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method protected getProtocolRoot()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getResult()I
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->a:Lorg/json/JSONObject;

    const-string v0, "result"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public tranverseClientModify(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse$ContentCheckSumVisitor;)V
    .locals 4

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->a:Lorg/json/JSONObject;

    const-string v0, "client_modify"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse$ContentCheckSumVisitor;->onVisit(Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public tranverseServerModify(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse$ContentCheckSumVisitor;)V
    .locals 4

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse;->a:Lorg/json/JSONObject;

    const-string v0, "server_modify"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/cloud/protocol/ContentCheckSumResponse$ContentCheckSumVisitor;->onVisit(Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
