.class public final synthetic Lcom/zui/quickstep/views/t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsViewForPad$f;

.field public final synthetic b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsViewForPad$f;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/t0;->a:Lcom/zui/quickstep/views/RecentsViewForPad$f;

    iput-object p2, p0, Lcom/zui/quickstep/views/t0;->b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/t0;->a:Lcom/zui/quickstep/views/RecentsViewForPad$f;

    iget-object p0, p0, Lcom/zui/quickstep/views/t0;->b:Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/RecentsViewForPad$f;->b(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method
