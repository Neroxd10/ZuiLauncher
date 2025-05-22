.class public final synthetic Lcom/zui/quickstep/util/j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/j0;->a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iput-boolean p2, p0, Lcom/zui/quickstep/util/j0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/j0;->a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-boolean p0, p0, Lcom/zui/quickstep/util/j0;->b:Z

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->d(Z)V

    return-void
.end method
