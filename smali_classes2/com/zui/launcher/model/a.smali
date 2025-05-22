.class public final synthetic Lcom/zui/launcher/model/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/model/a;->a:I

    iput-object p2, p0, Lcom/zui/launcher/model/a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/model/a;->a:I

    iget-object p0, p0, Lcom/zui/launcher/model/a;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/model/BaseLoaderResults;->i(ILjava/util/concurrent/Executor;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
