.class public final synthetic Lcom/zui/quickstep/inputconsumers/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;

.field public final synthetic b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/h;->a:Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/h;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/h;->a:Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/h;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;->j(Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V

    return-void
.end method
