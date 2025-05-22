.class public final synthetic Lcom/zui/quickstep/e3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/e3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/e3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->W(Landroid/graphics/RectF;F)V

    return-void
.end method
