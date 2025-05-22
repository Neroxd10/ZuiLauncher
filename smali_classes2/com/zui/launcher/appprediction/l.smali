.class public final synthetic Lcom/zui/launcher/appprediction/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/prediction/AppPredictor$Callback;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/appprediction/PredictionUiStateManager;

.field public final synthetic b:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/appprediction/PredictionUiStateManager;Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appprediction/l;->a:Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    iput-object p2, p0, Lcom/zui/launcher/appprediction/l;->b:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/l;->a:Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    iget-object p0, p0, Lcom/zui/launcher/appprediction/l;->b:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->e(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;Ljava/util/List;)V

    return-void
.end method
