.class public final synthetic Lcom/zui/launcher/model/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/BaseModelUpdateTask;

.field public final synthetic b:Lcom/zui/launcher/LauncherModel$Callbacks;

.field public final synthetic c:Lcom/zui/launcher/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/BaseModelUpdateTask;Lcom/zui/launcher/LauncherModel$Callbacks;Lcom/zui/launcher/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/p;->a:Lcom/zui/launcher/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/zui/launcher/model/p;->b:Lcom/zui/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/zui/launcher/model/p;->c:Lcom/zui/launcher/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/p;->a:Lcom/zui/launcher/model/BaseModelUpdateTask;

    iget-object v1, p0, Lcom/zui/launcher/model/p;->b:Lcom/zui/launcher/LauncherModel$Callbacks;

    iget-object p0, p0, Lcom/zui/launcher/model/p;->c:Lcom/zui/launcher/LauncherModel$CallbackTask;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/model/BaseModelUpdateTask;->f(Lcom/zui/launcher/LauncherModel$Callbacks;Lcom/zui/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method
