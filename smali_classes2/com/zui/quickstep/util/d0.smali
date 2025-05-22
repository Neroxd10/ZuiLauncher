.class public final synthetic Lcom/zui/quickstep/util/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/SplitSelectStateController$a;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/SplitSelectStateController$a;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/d0;->a:Lcom/zui/quickstep/util/SplitSelectStateController$a;

    iput-object p2, p0, Lcom/zui/quickstep/util/d0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/d0;->a:Lcom/zui/quickstep/util/SplitSelectStateController$a;

    iget-object p0, p0, Lcom/zui/quickstep/util/d0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/SplitSelectStateController$a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
