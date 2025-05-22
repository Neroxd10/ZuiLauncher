.class Lcom/zui/launcher/networksdk/OKHttpUtils$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/networksdk/OKHttpUtils;->j(Ljava/lang/Object;Lcom/zui/launcher/networksdk/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/networksdk/ResultCallback;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/OKHttpUtils;Lcom/zui/launcher/networksdk/ResultCallback;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$c;->a:Lcom/zui/launcher/networksdk/ResultCallback;

    iput-object p3, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$c;->a:Lcom/zui/launcher/networksdk/ResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$c;->a:Lcom/zui/launcher/networksdk/ResultCallback;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/networksdk/ResultCallback;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSuccessResultCallback  Exception -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OKHttpUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
