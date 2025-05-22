.class public final synthetic Lcom/zui/quickstep/n2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/n2;->a:Lcom/zui/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/n2;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-static {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->z(Lcom/zui/quickstep/TouchInteractionService;Landroid/view/InputEvent;)V

    return-void
.end method
