.class public Lcom/zui/launcher/statehandlers/DepthController$ClampedDepthProperty;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/statehandlers/DepthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClampedDepthProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/zui/launcher/statehandlers/DepthController;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    const-string v0, "depthClamped"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/zui/launcher/statehandlers/DepthController$ClampedDepthProperty;->a:F

    iput p2, p0, Lcom/zui/launcher/statehandlers/DepthController$ClampedDepthProperty;->b:F

    return-void
.end method


# virtual methods
.method public get(Lcom/zui/launcher/statehandlers/DepthController;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/statehandlers/DepthController;->b(Lcom/zui/launcher/statehandlers/DepthController;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/statehandlers/DepthController;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/statehandlers/DepthController$ClampedDepthProperty;->get(Lcom/zui/launcher/statehandlers/DepthController;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/zui/launcher/statehandlers/DepthController;F)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/statehandlers/DepthController$ClampedDepthProperty;->a:F

    iget p0, p0, Lcom/zui/launcher/statehandlers/DepthController$ClampedDepthProperty;->b:F

    invoke-static {p2, v0, p0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result p0

    invoke-static {p1, p0}, Lcom/zui/launcher/statehandlers/DepthController;->a(Lcom/zui/launcher/statehandlers/DepthController;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/statehandlers/DepthController;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/statehandlers/DepthController$ClampedDepthProperty;->setValue(Lcom/zui/launcher/statehandlers/DepthController;F)V

    return-void
.end method
