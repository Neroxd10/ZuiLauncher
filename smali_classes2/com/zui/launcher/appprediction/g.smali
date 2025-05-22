.class public final synthetic Lcom/zui/launcher/appprediction/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/appprediction/PredictionAppTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/appprediction/PredictionAppTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appprediction/g;->a:Lcom/zui/launcher/appprediction/PredictionAppTracker;

    return-void
.end method


# virtual methods
.method public final onIdpChanged(ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/g;->a:Lcom/zui/launcher/appprediction/PredictionAppTracker;

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->d(Lcom/zui/launcher/appprediction/PredictionAppTracker;ILcom/zui/launcher/InvariantDeviceProfile;)V

    return-void
.end method
