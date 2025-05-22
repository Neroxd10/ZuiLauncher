.class public final synthetic Lcom/zui/quickstep/i4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/i4;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/i4;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    check-cast p1, Lcom/zui/launcher/BaseDraggingActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->r0(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method
