.class public Lcom/zui/launcher/networkbean/DummyAppBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;
    }
.end annotation


# instance fields
.field private result:Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean;->result:Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;

    return-object p0
.end method

.method public setResult(Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean;->result:Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean;->result:Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;->getDocs()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----result :  ------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-ge v0, v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v2
.end method
