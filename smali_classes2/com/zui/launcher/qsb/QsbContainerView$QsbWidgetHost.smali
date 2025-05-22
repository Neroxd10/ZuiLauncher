.class public Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/qsb/QsbContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QsbWidgetHost"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;

.field private final b:Lcom/zui/launcher/qsb/QsbContainerView$WidgetProvidersUpdateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;ILcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;Lcom/zui/launcher/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;Lcom/zui/launcher/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;->a:Lcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;

    iput-object p4, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;->b:Lcom/zui/launcher/qsb/QsbContainerView$WidgetProvidersUpdateCallback;

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;->a:Lcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;

    invoke-interface {p0, p1}, Lcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;->newView(Landroid/content/Context;)Lcom/zui/launcher/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method protected onProvidersChanged()V
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    iget-object p0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;->b:Lcom/zui/launcher/qsb/QsbContainerView$WidgetProvidersUpdateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/qsb/QsbContainerView$WidgetProvidersUpdateCallback;->onProvidersUpdated()V

    :cond_0
    return-void
.end method
