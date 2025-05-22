.class public final synthetic Lcom/zui/quickstep/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/OverviewInteractionState;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/OverviewInteractionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/d0;->a:Lcom/zui/quickstep/OverviewInteractionState;

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/d0;->a:Lcom/zui/quickstep/OverviewInteractionState;

    invoke-static {p0, p1}, Lcom/zui/quickstep/OverviewInteractionState;->d(Lcom/zui/quickstep/OverviewInteractionState;Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    return-void
.end method
