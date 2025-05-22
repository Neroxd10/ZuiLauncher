.class public final synthetic Lcom/zui/quickstep/views/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView$i;

.field public final synthetic b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView$i;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/w;->a:Lcom/zui/quickstep/views/RecentsView$i;

    iput-object p2, p0, Lcom/zui/quickstep/views/w;->b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/w;->a:Lcom/zui/quickstep/views/RecentsView$i;

    iget-object p0, p0, Lcom/zui/quickstep/views/w;->b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/RecentsView$i;->b(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method
