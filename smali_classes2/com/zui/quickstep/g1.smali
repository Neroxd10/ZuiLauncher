.class public final synthetic Lcom/zui/quickstep/g1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/g1;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/g1;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->b()V

    return-void
.end method
