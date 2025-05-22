.class public final synthetic Lcom/zui/quickstep/c2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/c2;->a:Lcom/zui/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/c2;->a:Lcom/zui/quickstep/TouchInteractionService;

    check-cast p1, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;

    invoke-static {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->w(Lcom/zui/quickstep/TouchInteractionService;Lcom/zui/quickstep/inputconsumers/InputConsumer;)V

    return-void
.end method
