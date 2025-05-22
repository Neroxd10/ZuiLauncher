.class public final synthetic Lcom/zui/quickstep/i1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/i1;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/i1;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$a;->b(Landroid/view/View;)V

    return-void
.end method
