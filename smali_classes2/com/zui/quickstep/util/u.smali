.class public final synthetic Lcom/zui/quickstep/util/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

.field public final synthetic b:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/RecentsAnimationListenerSet;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/u;->a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    iput-object p2, p0, Lcom/zui/quickstep/util/u;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/u;->a:Lcom/zui/quickstep/util/RecentsAnimationListenerSet;

    iget-object p0, p0, Lcom/zui/quickstep/util/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->b(Ljava/util/HashMap;)V

    return-void
.end method
