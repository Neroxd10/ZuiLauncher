.class public final synthetic Lcom/zui/quickstep/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/k;->a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/k;->a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->cancelAnimation()V

    return-void
.end method
