.class public final synthetic Lcom/zui/quickstep/g2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TouchInteractionService$a;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TouchInteractionService$a;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/g2;->a:Lcom/zui/quickstep/TouchInteractionService$a;

    iput p2, p0, Lcom/zui/quickstep/g2;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/g2;->a:Lcom/zui/quickstep/TouchInteractionService$a;

    iget p0, p0, Lcom/zui/quickstep/g2;->b:F

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TouchInteractionService$a;->d(F)V

    return-void
.end method
