.class public final synthetic Lcom/zui/quickstep/i2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TouchInteractionService$a;

.field public final synthetic b:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TouchInteractionService$a;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/i2;->a:Lcom/zui/quickstep/TouchInteractionService$a;

    iput-object p2, p0, Lcom/zui/quickstep/i2;->b:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/i2;->a:Lcom/zui/quickstep/TouchInteractionService$a;

    iget-object p0, p0, Lcom/zui/quickstep/i2;->b:Landroid/graphics/Region;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TouchInteractionService$a;->a(Landroid/graphics/Region;)V

    return-void
.end method
