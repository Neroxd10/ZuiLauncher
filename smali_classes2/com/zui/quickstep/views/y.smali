.class public final synthetic Lcom/zui/quickstep/views/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/y;->a:Lcom/zui/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/y;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->y0(Z)V

    return-void
.end method
