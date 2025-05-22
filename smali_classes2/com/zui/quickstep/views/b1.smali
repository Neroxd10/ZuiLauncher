.class public final synthetic Lcom/zui/quickstep/views/b1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsViewForPad;

.field public final synthetic b:Landroid/graphics/Matrix;

.field public final synthetic c:Landroid/graphics/Matrix;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsViewForPad;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/b1;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    iput-object p2, p0, Lcom/zui/quickstep/views/b1;->b:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/zui/quickstep/views/b1;->c:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/b1;->a:Lcom/zui/quickstep/views/RecentsViewForPad;

    iget-object v1, p0, Lcom/zui/quickstep/views/b1;->b:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/zui/quickstep/views/b1;->c:Landroid/graphics/Matrix;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->A(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/view/MotionEvent;)V

    return-void
.end method
