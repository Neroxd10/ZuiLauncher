.class public final synthetic Lcom/zui/quickstep/k4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic a:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/quickstep/k4;->a:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/k4;->a:F

    invoke-static {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->T(FF)F

    return p0
.end method
