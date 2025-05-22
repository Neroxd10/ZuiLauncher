.class public Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networkbean/DummyAppBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfoContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;
    }
.end annotation


# instance fields
.field private docs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zui/launcher/networkbean/DummyAppBean;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networkbean/DummyAppBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;->this$0:Lcom/zui/launcher/networkbean/DummyAppBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDocs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;->docs:Ljava/util/List;

    return-object p0
.end method

.method public setDocs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;->docs:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;->docs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----docs :  ------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-ge v1, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;->docs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method
