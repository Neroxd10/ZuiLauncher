.class public final synthetic Lcom/zui/quickstep/x0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/quickstep/x0;->a:I

    iput-object p2, p0, Lcom/zui/quickstep/x0;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/x0;->a:I

    iget-object p0, p0, Lcom/zui/quickstep/x0;->b:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/zui/quickstep/RecentsModel;->a(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method
