.class Lcom/zui/launcher/Launcher$u0;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->J(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->setBackgroundBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic b()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getGlobalBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    iget-object v1, v1, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    new-instance v2, Lcom/zui/launcher/e1;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/e1;-><init>(Lcom/zui/launcher/Launcher$u0;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1, v1}, Lcom/zui/launcher/Launcher;->H(Lcom/zui/launcher/Launcher;Z)Z

    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->endAllPolling(Z)Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_SCREEN_OFF mHideCurrentFlag="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/Launcher;->I(Lcom/zui/launcher/Launcher;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unlockanim"

    invoke-static {p2, p1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->clearAllAnimator()V

    goto/16 :goto_2

    :cond_0
    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "com.lenovo.action.auto_change_textcolor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "auto_change_textcolor"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Lcom/zui/launcher/util/SettingsValue;->setAutoChangeTextColor(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    const/16 v1, 0x3e2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_2
    const-string v0, "com.android.systemui.notificationpanel.expand"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v0, "com.zui.launcher.action.WEATHER_WIDGET_CLICK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "extra_value"

    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "screen"

    const-string p2, "clickwidget"

    const-string v0, "widget"

    invoke-static {p1, p2, v0, p0}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_5
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->M(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->M(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->isListening()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->M(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startListening()V

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->loadHotWordData(Lcom/zui/launcher/Launcher;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getSpTrackEvent()V

    iget-object p2, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/Launcher;->N(Lcom/zui/launcher/Launcher;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "widgetSearchEvent"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_SCREEN_ON intent  widgetSearchEvent --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " week -->  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v0, p1, :cond_e

    if-nez p2, :cond_e

    iget-object p0, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->notifySearchWidetStatus()V

    goto :goto_2

    :cond_7
    :goto_0
    const-string p1, "android.intent.extra.USER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/16 p2, 0x384

    if-lt p1, p2, :cond_8

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->forceReload()V

    goto :goto_2

    :cond_9
    :goto_1
    const-string p1, "yudl"

    const-string p2, "ACTION_SET_WALLPAPER  ACTION_WALLPAPER_CHANGED   "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->isAutoChangeTextColor()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/zui/launcher/dragndrop/DragLayer;->initOnePageWallpaper(Z)V

    :cond_a
    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->J(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->K(Lcom/zui/launcher/Launcher;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/f1;

    invoke-direct {p2, p0}, Lcom/zui/launcher/f1;-><init>(Lcom/zui/launcher/Launcher$u0;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_b
    invoke-static {}, Lcom/zui/launcher/Launcher;->L()Z

    move-result p1

    const/16 p2, 0x19

    iget-object p0, p0, Lcom/zui/launcher/Launcher$u0;->a:Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_d

    :cond_c
    invoke-virtual {p0, p2}, Lcom/zui/launcher/Launcher;->setWindowBlurForLeftScreen(I)V

    goto :goto_2

    :cond_d
    iget p1, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 v0, 0xb4

    if-ge p1, v0, :cond_c

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->setWindowBlurForLeftScreen(I)V

    :cond_e
    :goto_2
    return-void
.end method
