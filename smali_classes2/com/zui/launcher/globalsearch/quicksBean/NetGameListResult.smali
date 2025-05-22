.class public Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;
    }
.end annotation


# instance fields
.field private code:Ljava/lang/Object;

.field private data:Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;

.field private msg:Ljava/lang/Object;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->code:Ljava/lang/Object;

    return-object p0
.end method

.method public getData()Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->data:Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;

    return-object p0
.end method

.method public getMsg()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->msg:Ljava/lang/Object;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->success:Z

    return p0
.end method

.method public setCode(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->code:Ljava/lang/Object;

    return-void
.end method

.method public setData(Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->data:Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->msg:Ljava/lang/Object;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->success:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetGameListResult{msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->msg:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->code:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->data:Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult$DataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameListResult;->success:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
