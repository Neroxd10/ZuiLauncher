.class public final synthetic Lcom/zui/quickstep/q3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/q3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    return-void
.end method


# virtual methods
.method public final onActivityStart(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/q3;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-static {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->N(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method
