.class public final synthetic Lcom/zui/quickstep/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentsModel;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentsModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/w0;->a:Lcom/zui/quickstep/RecentsModel;

    iput p2, p0, Lcom/zui/quickstep/w0;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/w0;->a:Lcom/zui/quickstep/RecentsModel;

    iget p0, p0, Lcom/zui/quickstep/w0;->b:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Lcom/zui/quickstep/RecentsModel;->b(ILjava/util/ArrayList;)V

    return-void
.end method
