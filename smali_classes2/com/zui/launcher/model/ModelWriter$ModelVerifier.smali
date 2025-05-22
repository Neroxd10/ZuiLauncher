.class public Lcom/zui/launcher/model/ModelWriter$ModelVerifier;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/ModelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelVerifier"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/zui/launcher/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/ModelWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b:Lcom/zui/launcher/model/ModelWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/model/BgDataModel;->lastBindId:I

    iput p1, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->a:I

    return-void
.end method


# virtual methods
.method public synthetic a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v0}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/model/BgDataModel;->lastBindId:I

    if-le v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->a:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {p0}, Lcom/zui/launcher/model/ModelWriter;->d(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->rebindModel()V

    :cond_2
    return-void
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v0}, Lcom/zui/launcher/model/ModelWriter;->e(Lcom/zui/launcher/model/ModelWriter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v0}, Lcom/zui/launcher/model/ModelWriter;->d(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v0}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/model/BgDataModel;->lastBindId:I

    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v1}, Lcom/zui/launcher/model/ModelWriter;->f(Lcom/zui/launcher/model/ModelWriter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/model/v0;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/model/v0;-><init>(Lcom/zui/launcher/model/ModelWriter$ModelVerifier;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
