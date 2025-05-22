.class public final synthetic Lcom/zui/quickstep/a3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler$a;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/a3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler$a;

    iput-object p2, p0, Lcom/zui/quickstep/a3;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/a3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler$a;

    iget-object p0, p0, Lcom/zui/quickstep/a3;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->a(Landroid/view/View;)V

    return-void
.end method
