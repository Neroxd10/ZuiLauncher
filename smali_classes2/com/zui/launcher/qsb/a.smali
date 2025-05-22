.class public final synthetic Lcom/zui/launcher/qsb/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/qsb/QsbContainerView$WidgetProvidersUpdateCallback;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/qsb/a;->a:Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;

    return-void
.end method


# virtual methods
.method public final onProvidersUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/qsb/a;->a:Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;

    invoke-static {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->c(Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;)V

    return-void
.end method
