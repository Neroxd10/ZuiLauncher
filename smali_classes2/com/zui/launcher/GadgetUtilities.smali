.class public Lcom/zui/launcher/GadgetUtilities;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CPU_WIDGET_TOGETHER:Ljava/lang/String; = "com.zui.launcher.globalsearch.widgetview.LenovoCPuViewChild"

.field public static final DEFAULT_WEATHER_WIDGET:Ljava/lang/String; = "com.zui.laweather.activity.WeatherWidgetDefaultView"

.field public static final DUAL_TIMEZONE_WIDGET_4x1:Ljava/lang/String; = "com.zui.launcher.DaulTimeZoneViewOne"

.field public static final GLOBAL_WIDGET_SEARCH:Ljava/lang/String; = "com.zui.launcher.SearchWidgetView"

.field public static final MOBA_TIME_WEATHER_WIDGET_VIEW:Ljava/lang/String; = "com.zui.launcher.TimeWeatherWidgetView4X2"

.field public static final NEW_DUAL_TIMEZONE_WIDGET:Ljava/lang/String; = "com.zui.launcher.NewDualTimeZoneWidget"

.field public static final OLD_MAGIC_WEATHER:Ljava/lang/String; = "com.zui.laweather.activity.LenovoWeatherWidget"

.field public static final OWN_LOCKSCREEN:Ljava/lang/String; = "com.zui.launcher.system.LockscreenShortcut"

.field public static Path_hdpi:Ljava/lang/String; = null

.field public static Path_xhdpi:Ljava/lang/String; = null

.field public static Path_xxhdpi:Ljava/lang/String; = null

.field public static Path_xxxhdpi:Ljava/lang/String; = null

.field public static final TIME_WEATHER_WIDGET:Ljava/lang/String; = "com.zui.laweather.activity.TimeWidgetView"

.field public static final TIME_WEATHER_WIDGET4X1:Ljava/lang/String; = "com.zui.timelaweather.activity.TimeWeatherWidgetView"

.field public static final TIME_WEATHER_WIDGET4X2_NEW:Ljava/lang/String; = "com.zui.launcher.TimeWeatherWidgetView4X2old"

.field public static final TIME_WEATHER_WIDGET_FIVE:Ljava/lang/String; = "com.zui.launcher.globalsearch.widgetview.LenovoTogetherViewChild"

.field public static final TIME_WEATHER_WIDGET_THREE:Ljava/lang/String; = "com.zui.launcher.TimeWeatherWidgetViewThreeChild"

.field public static final TIME_WEATHER_WIDGET_TOGETHER:Ljava/lang/String; = "com.zui.launcher.globalsearch.widgetview.LenovoTogetherViewChildSix"

.field public static final TOGGLE_WIDGET:Ljava/lang/String; = "com.zui.launcher.toggle.widget.ToggleWidgetView"

.field public static mDataPath:Ljava/lang/String;

.field public static mPath:Ljava/lang/String;

.field public static final sLauncherLeosWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.launcher.toggle.widget.ToggleWidgetView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.laweather.activity.WeatherWidgetDefaultView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.laweather.activity.TimeWidgetView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.timelaweather.activity.TimeWeatherWidgetView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.launcher.TimeWeatherWidgetView4X2old"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.launcher.TimeWeatherWidgetViewThreeChild"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.launcher.SearchWidgetView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.launcher.DaulTimeZoneViewOne"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.launcher.NewDualTimeZoneWidget"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.launcher.globalsearch.widgetview.LenovoCPuViewChild"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    const-string v1, "com.zui.launcher.TimeWeatherWidgetView4X2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "drawable-hdpi"

    sput-object v0, Lcom/zui/launcher/GadgetUtilities;->Path_hdpi:Ljava/lang/String;

    const-string v0, "drawable-xhdpi"

    sput-object v0, Lcom/zui/launcher/GadgetUtilities;->Path_xhdpi:Ljava/lang/String;

    const-string v0, "drawable-xxhdpi"

    sput-object v0, Lcom/zui/launcher/GadgetUtilities;->Path_xxhdpi:Ljava/lang/String;

    const-string v0, "drawable-xxxhdpi"

    sput-object v0, Lcom/zui/launcher/GadgetUtilities;->Path_xxxhdpi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchView(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.zui.launcher.toggle.widget.ToggleWidgetView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "com.zui.timelaweather.activity.TimeWeatherWidgetView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/Utilities;->isZ2PlusHwProduct()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Lcom/zui/launcher/TimeWidgetLongClickViewOne;

    invoke-direct {p1, p0}, Lcom/zui/launcher/TimeWidgetLongClickViewOne;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_2
    const-string v0, "com.zui.launcher.SearchWidgetView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/zui/launcher/SearchWidgetView;

    invoke-direct {p1, p0}, Lcom/zui/launcher/SearchWidgetView;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_3
    const-string v0, "com.zui.launcher.TimeWeatherWidgetView4X2old"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/zui/launcher/TimeWeatherWidgetView4X2old;

    invoke-direct {p1, p0}, Lcom/zui/launcher/TimeWeatherWidgetView4X2old;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_4
    const-string v0, "com.zui.launcher.TimeWeatherWidgetViewThreeChild"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;

    invoke-direct {p1, p0}, Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_5
    const-string v0, "com.zui.launcher.DaulTimeZoneViewOne"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/zui/launcher/DaulTimeZoneViewOne;

    invoke-direct {p1, p0}, Lcom/zui/launcher/DaulTimeZoneViewOne;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_6
    const-string v0, "com.zui.launcher.NewDualTimeZoneWidget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/zui/launcher/NewDualTimeZoneWidget;

    invoke-direct {p1, p0}, Lcom/zui/launcher/NewDualTimeZoneWidget;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_7
    const-string v0, "com.zui.launcher.globalsearch.widgetview.LenovoTogetherViewChild"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_8
    const-string v0, "com.zui.launcher.globalsearch.widgetview.LenovoCPuViewChild"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_9
    const-string v0, "com.zui.launcher.globalsearch.widgetview.LenovoTogetherViewChildSix"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_a
    const-string v0, "com.zui.launcher.TimeWeatherWidgetView4X2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/zui/launcher/TimeWeatherWidgetView4X2;

    invoke-direct {p1, p0}, Lcom/zui/launcher/TimeWeatherWidgetView4X2;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_b
    return-object v1
.end method

.method public static isGadget(Landroid/content/ComponentName;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v0, Lcom/zui/launcher/GadgetUtilities;->sLauncherLeosWidgets:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
