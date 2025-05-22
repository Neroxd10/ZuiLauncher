.class public Lcom/zui/launcher/networkbean/NewsAccessTokenBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;
    }
.end annotation


# instance fields
.field private data:Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean;->data:Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean;->data:Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- access token ------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean;->data:Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "access_token : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean;->data:Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
