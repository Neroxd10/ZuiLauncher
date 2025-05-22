.class public final synthetic Lcom/zui/launcher/model/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/BaseLoaderResults;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/BaseLoaderResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/l;->a:Lcom/zui/launcher/model/BaseLoaderResults;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/l;->a:Lcom/zui/launcher/model/BaseLoaderResults;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/BaseLoaderResults;->h(Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
