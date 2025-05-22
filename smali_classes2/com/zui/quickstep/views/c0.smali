.class public final synthetic Lcom/zui/quickstep/views/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/c0;->a:Lcom/zui/quickstep/views/RecentsView;

    iput p2, p0, Lcom/zui/quickstep/views/c0;->b:F

    iput p3, p0, Lcom/zui/quickstep/views/c0;->c:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/c0;->a:Lcom/zui/quickstep/views/RecentsView;

    iget v1, p0, Lcom/zui/quickstep/views/c0;->b:F

    iget p0, p0, Lcom/zui/quickstep/views/c0;->c:F

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/views/RecentsView;->u0(FFLandroid/view/MotionEvent;)V

    return-void
.end method
