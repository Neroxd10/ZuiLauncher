.class public final synthetic Lcom/zui/launcher/model/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/BaseLoaderResults;

.field public final synthetic b:Lcom/zui/launcher/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/BaseLoaderResults;Lcom/zui/launcher/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/e;->a:Lcom/zui/launcher/model/BaseLoaderResults;

    iput-object p2, p0, Lcom/zui/launcher/model/e;->b:Lcom/zui/launcher/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/e;->a:Lcom/zui/launcher/model/BaseLoaderResults;

    iget-object p0, p0, Lcom/zui/launcher/model/e;->b:Lcom/zui/launcher/LauncherModel$CallbackTask;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/model/BaseLoaderResults;->k(Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method
