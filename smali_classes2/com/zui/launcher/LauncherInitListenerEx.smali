.class public Lcom/zui/launcher/LauncherInitListenerEx;
.super Lcom/zui/launcher/LauncherInitListener;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/zui/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherInitListener;-><init>(Ljava/util/function/BiPredicate;)V

    return-void
.end method


# virtual methods
.method protected init(Lcom/zui/launcher/Launcher;Z)Z
    .locals 2

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    sget-object v1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->OVERVIEW:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->switchClient(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)V

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/LauncherInitListener;->init(Lcom/zui/launcher/Launcher;Z)Z

    move-result p0

    return p0
.end method
