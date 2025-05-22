.class public final synthetic Lcom/zui/quickstep/b1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/SwipeSharedState;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/SwipeSharedState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/b1;->a:Lcom/zui/quickstep/SwipeSharedState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/b1;->a:Lcom/zui/quickstep/SwipeSharedState;

    check-cast p1, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-static {p0, p1}, Lcom/zui/quickstep/SwipeSharedState;->b(Lcom/zui/quickstep/SwipeSharedState;Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    return-void
.end method
