.class public final synthetic Lcom/zui/quickstep/views/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/m0;->a:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/views/m0;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/m0;->a:Lcom/zui/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/zui/quickstep/views/m0;->b:Ljava/util/ArrayList;

    check-cast p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {v0, p0, p1}, Lcom/zui/quickstep/views/RecentsView;->i0(Ljava/util/ArrayList;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method
