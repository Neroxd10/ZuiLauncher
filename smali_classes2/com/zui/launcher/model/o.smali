.class public final synthetic Lcom/zui/launcher/model/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/o;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/o;->a:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->c(Ljava/util/HashMap;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
