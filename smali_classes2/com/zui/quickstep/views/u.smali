.class public final synthetic Lcom/zui/quickstep/views/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView$g;

.field public final synthetic b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView$g;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/u;->a:Lcom/zui/quickstep/views/RecentsView$g;

    iput-object p2, p0, Lcom/zui/quickstep/views/u;->b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/u;->a:Lcom/zui/quickstep/views/RecentsView$g;

    iget-object p0, p0, Lcom/zui/quickstep/views/u;->b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/RecentsView$g;->b(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method
