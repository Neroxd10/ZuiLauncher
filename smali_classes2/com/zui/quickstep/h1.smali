.class public final synthetic Lcom/zui/quickstep/h1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/h1;->a:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/h1;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/h1;->a:Lcom/zui/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/zui/quickstep/h1;->b:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->a(Lcom/zui/quickstep/views/RecentsView;Ljava/lang/Runnable;)V

    return-void
.end method
