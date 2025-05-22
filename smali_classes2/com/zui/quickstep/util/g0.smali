.class public final synthetic Lcom/zui/quickstep/util/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;ZZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/g0;->a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iput-boolean p2, p0, Lcom/zui/quickstep/util/g0;->b:Z

    iput-boolean p3, p0, Lcom/zui/quickstep/util/g0;->c:Z

    iput-object p4, p0, Lcom/zui/quickstep/util/g0;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/g0;->a:Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-boolean v1, p0, Lcom/zui/quickstep/util/g0;->b:Z

    iget-boolean v2, p0, Lcom/zui/quickstep/util/g0;->c:Z

    iget-object p0, p0, Lcom/zui/quickstep/util/g0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->b(ZZLjava/lang/Runnable;)V

    return-void
.end method
