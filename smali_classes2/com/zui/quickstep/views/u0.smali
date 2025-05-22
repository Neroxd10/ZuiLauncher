.class public final synthetic Lcom/zui/quickstep/views/u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/PendingAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/PendingAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/u0;->a:Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/u0;->a:Lcom/zui/launcher/util/PendingAnimation;

    invoke-static {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->C(Lcom/zui/launcher/util/PendingAnimation;)V

    return-void
.end method
