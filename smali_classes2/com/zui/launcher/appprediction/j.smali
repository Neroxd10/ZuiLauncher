.class public final synthetic Lcom/zui/launcher/appprediction/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/appprediction/PredictionRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/appprediction/PredictionRowView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appprediction/j;->a:Lcom/zui/launcher/appprediction/PredictionRowView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/j;->a:Lcom/zui/launcher/appprediction/PredictionRowView;

    invoke-static {p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->c(Lcom/zui/launcher/appprediction/PredictionRowView;)V

    return-void
.end method
