.class public Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;
.super Lcom/zui/launcher/graphics/FragmentWithPreview;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/qsb/QsbContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QsbFragment"
.end annotation


# static fields
.field public static final QSB_WIDGET_HOST_ID:I = 0x402


# instance fields
.field private b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

.field private c:Landroid/appwidget/AppWidgetProviderInfo;

.field private d:Lcom/zui/launcher/qsb/QsbWidgetHostView;

.field private e:I

.field private f:Landroid/widget/FrameLayout;

.field protected mKeyWidgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;-><init>()V

    const-string v0, "qsb_widget_id"

    iput-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->getSearchWidgetProvider()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->c:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->getDefaultView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->createBindOptions()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->c:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v7

    :cond_1
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->isInPreviewMode()Z

    move-result v5

    if-nez v5, :cond_5

    if-le v4, v6, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iget-object v5, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->c:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v8, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->c:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v1, v5, v8, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v5, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    :cond_3
    move v6, v1

    :goto_0
    if-eq v4, v6, :cond_4

    invoke-direct {p0, v6}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->g(I)V

    :cond_4
    move v1, v3

    move v4, v6

    :cond_5
    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    iget-object v1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->c:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v2, v4, v1}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/qsb/QsbWidgetHostView;

    iput-object p1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->d:Lcom/zui/launcher/qsb/QsbWidgetHostView;

    const v1, 0x7f0a02dc

    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetHostView;->setId(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->isInPreviewMode()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/zui/launcher/qsb/QsbContainerView;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->d:Lcom/zui/launcher/qsb/QsbWidgetHostView;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_6
    iget-object p0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->d:Lcom/zui/launcher/qsb/QsbWidgetHostView;

    return-object p0

    :cond_7
    invoke-virtual {p0, p1, v7}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->getDefaultView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f()V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;)Lcom/zui/launcher/qsb/QsbWidgetHostView;
    .locals 1

    new-instance v0, Lcom/zui/launcher/qsb/QsbWidgetHostView;

    invoke-direct {v0, p0}, Lcom/zui/launcher/qsb/QsbWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private f()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->isQsbEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private g(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->mKeyWidgetId:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected createBindOptions()Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/zui/launcher/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    const-string v2, "appWidgetMinWidth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Landroid/graphics/Rect;->top:I

    const-string v2, "appWidgetMinHeight"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Landroid/graphics/Rect;->right:I

    const-string v2, "appWidgetMaxWidth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    const-string v0, "appWidgetMaxHeight"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method protected createHost()Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;
    .locals 4

    new-instance v0, Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/qsb/c;->a:Lcom/zui/launcher/qsb/c;

    new-instance v3, Lcom/zui/launcher/qsb/a;

    invoke-direct {v3, p0}, Lcom/zui/launcher/qsb/a;-><init>(Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;)V

    const/16 p0, 0x402

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;ILcom/zui/launcher/qsb/QsbContainerView$WidgetViewFactory;Lcom/zui/launcher/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V

    return-object v0
.end method

.method public synthetic e(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->c:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-string v1, "appWidgetProvider"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected getDefaultView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/qsb/QsbWidgetHostView;->getDefaultView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const p2, 0x7f0a00c7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/zui/launcher/qsb/b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/qsb/b;-><init>(Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method protected getSearchWidgetProvider()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/qsb/QsbContainerView;->getSearchWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public isQsbEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "appWidgetId"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->g(I)V

    invoke-direct {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->isQsbEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHost;->startListening()V

    iget-object p1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->createHost()Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->b:Lcom/zui/launcher/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/FragmentWithPreview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->e:I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->d:Lcom/zui/launcher/qsb/QsbWidgetHostView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->e:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/qsb/QsbWidgetHostView;->isReinflateRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/qsb/QsbContainerView$QsbFragment;->f()V

    :cond_0
    return-void
.end method
