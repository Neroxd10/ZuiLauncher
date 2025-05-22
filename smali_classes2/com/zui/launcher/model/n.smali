.class public final synthetic Lcom/zui/launcher/model/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/ItemInfoMatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/n;->a:Lcom/zui/launcher/util/ItemInfoMatcher;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/n;->a:Lcom/zui/launcher/util/ItemInfoMatcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/BaseModelUpdateTask;->e(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
