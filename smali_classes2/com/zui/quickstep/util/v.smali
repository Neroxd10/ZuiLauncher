.class public final synthetic Lcom/zui/quickstep/util/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

.field public final synthetic b:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/RecentsAnimationListenerSet;Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/v;->a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    iput-object p2, p0, Lcom/zui/quickstep/util/v;->b:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/v;->a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    iget-object p0, p0, Lcom/zui/quickstep/util/v;->b:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->c(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    return-void
.end method
