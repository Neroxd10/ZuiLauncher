.class public final synthetic Lcom/zui/quickstep/r2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/r2;->a:Lcom/zui/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/r2;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/zui/quickstep/TouchInteractionService;->E()V

    return-void
.end method
