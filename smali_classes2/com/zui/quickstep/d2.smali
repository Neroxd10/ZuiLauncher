.class public final synthetic Lcom/zui/quickstep/d2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TouchInteractionService$a;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TouchInteractionService$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/d2;->a:Lcom/zui/quickstep/TouchInteractionService$a;

    iput-boolean p2, p0, Lcom/zui/quickstep/d2;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/d2;->a:Lcom/zui/quickstep/TouchInteractionService$a;

    iget-boolean p0, p0, Lcom/zui/quickstep/d2;->b:Z

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TouchInteractionService$a;->c(Z)V

    return-void
.end method
