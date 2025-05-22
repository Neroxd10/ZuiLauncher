.class public final synthetic Lcom/zui/quickstep/views/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntToDoubleFunction;


# instance fields
.field public final synthetic a:[F


# direct methods
.method public synthetic constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/e;->a:[F

    return-void
.end method


# virtual methods
.method public final applyAsDouble(I)D
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/e;->a:[F

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/l2;->i([FI)D

    move-result-wide p0

    return-wide p0
.end method
