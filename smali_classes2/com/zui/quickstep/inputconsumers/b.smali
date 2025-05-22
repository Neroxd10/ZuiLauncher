.class public final synthetic Lcom/zui/quickstep/inputconsumers/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/b;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/b;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/b;->a:Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/b;->b:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    invoke-static {v0, p0}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->f(Landroid/content/Intent;Lcom/zui/quickstep/util/RecentsAnimationListenerSet;)V

    return-void
.end method
