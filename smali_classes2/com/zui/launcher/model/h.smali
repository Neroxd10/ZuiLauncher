.class public final synthetic Lcom/zui/launcher/model/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/IntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/h;->a:Lcom/zui/launcher/util/IntArray;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/h;->a:Lcom/zui/launcher/util/IntArray;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/BaseLoaderResults;->f(Lcom/zui/launcher/util/IntArray;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
