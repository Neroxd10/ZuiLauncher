.class public final synthetic Lcom/zui/quickstep/p2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/p2;->a:Lcom/zui/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/p2;->a:Lcom/zui/quickstep/TouchInteractionService;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/TouchInteractionService;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
