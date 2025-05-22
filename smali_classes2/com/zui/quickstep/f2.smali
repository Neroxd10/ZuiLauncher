.class public final synthetic Lcom/zui/quickstep/f2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TouchInteractionService$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TouchInteractionService$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/f2;->a:Lcom/zui/quickstep/TouchInteractionService$a;

    iput p2, p0, Lcom/zui/quickstep/f2;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/f2;->a:Lcom/zui/quickstep/TouchInteractionService$a;

    iget p0, p0, Lcom/zui/quickstep/f2;->b:I

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TouchInteractionService$a;->g(I)V

    return-void
.end method
