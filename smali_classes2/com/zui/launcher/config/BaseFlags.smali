.class public abstract Lcom/zui/launcher/config/BaseFlags;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_ICON_WINDOW_ANIM:Lcom/zui/launcher/TogglableFlag;

.field public static final ALL_APPS_TABS_ENABLED:Z = true

.field public static final APPLY_CONFIG_AT_RUNTIME:Lcom/zui/launcher/TogglableFlag;

.field public static final APP_SEARCH_IMPROVEMENTS:Lcom/zui/launcher/TogglableFlag;

.field public static final ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/zui/launcher/TogglableFlag;

.field public static DEBUG_FREEFORM:Z = false

.field public static final ENABLE_CUSTOM_WIDGETS:Z = false

.field public static final ENABLE_HINTS_IN_OVERVIEW:Lcom/zui/launcher/TogglableFlag;

.field public static final ENABLE_PREDICTION_DISMISS:Lcom/zui/launcher/TogglableFlag;

.field public static final ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

.field public static final EXAMPLE_FLAG:Lcom/zui/launcher/TogglableFlag;

.field public static final FAKE_LANDSCAPE_UI:Lcom/zui/launcher/TogglableFlag;

.field static final FLAGS_PREF_NAME:Ljava/lang/String; = "featureFlags"

.field public static final FOLDER_NAME_SUGGEST:Lcom/zui/launcher/TogglableFlag;

.field public static final GO_DISABLE_WIDGETS:Z = false

.field public static final IS_DOGFOOD_BUILD:Z = false

.field public static final LAUNCHER3_PROMISE_APPS_IN_ALL_APPS:Z = false

.field public static MULTI_WITH_RECENTS_ALLAPPS:Z = false

.field public static final OVERVIEW_USE_SCREENSHOT_ORIENTATION:Z = true

.field public static final PROMISE_APPS_NEW_INSTALLS:Lcom/zui/launcher/TogglableFlag;

.field public static final PULL_DOWN_STATUS_BAR:Z = true

.field public static final QSB_ON_FIRST_SCREEN:Z = true

.field public static final QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

.field private static final sFlags:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/TogglableFlag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->sFlags:Ljava/util/List;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "PROMISE_APPS_NEW_INSTALLS"

    const/4 v2, 0x1

    const-string v3, "Adds a promise icon to the home screen for new install sessions."

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->PROMISE_APPS_NEW_INSTALLS:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "EXAMPLE_FLAG"

    const-string v3, "An example flag that doesn\'t do anything. Useful for testing"

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->EXAMPLE_FLAG:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "APPLY_CONFIG_AT_RUNTIME"

    const-string v3, "Apply display changes dynamically"

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->APPLY_CONFIG_AT_RUNTIME:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "QUICKSTEP_SPRINGS"

    const/4 v3, 0x0

    const-string v4, "Enable springs for quickstep animations"

    invoke-direct {v0, v1, v3, v4}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->QUICKSTEP_SPRINGS:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "ADAPTIVE_ICON_WINDOW_ANIM"

    const-string v4, "Use adaptive icons for window animations."

    invoke-direct {v0, v1, v2, v4}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->ADAPTIVE_ICON_WINDOW_ANIM:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "ENABLE_QUICKSTEP_LIVE_TILE"

    const-string v4, "Enable live tile in Quickstep overview"

    invoke-direct {v0, v1, v3, v4}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "ENABLE_HINTS_IN_OVERVIEW"

    const-string v4, "Show chip hints and gleams on the overview screen"

    invoke-direct {v0, v1, v2, v4}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_HINTS_IN_OVERVIEW:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "FAKE_LANDSCAPE_UI"

    const-string v4, "Rotate launcher UI instead of using transposed layout"

    invoke-direct {v0, v1, v3, v4}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->FAKE_LANDSCAPE_UI:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "FOLDER_NAME_SUGGEST"

    const-string v4, "Suggests folder names instead of blank text."

    invoke-direct {v0, v1, v2, v4}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->FOLDER_NAME_SUGGEST:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "APP_SEARCH_IMPROVEMENTS"

    const-string v2, "Adds localized title and keyword search and ranking"

    invoke-direct {v0, v1, v3, v2}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->APP_SEARCH_IMPROVEMENTS:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "ENABLE_PREDICTION_DISMISS"

    const-string v2, "Allow option to dimiss apps from predicted list"

    invoke-direct {v0, v1, v3, v2}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_PREDICTION_DISMISS:Lcom/zui/launcher/TogglableFlag;

    new-instance v0, Lcom/zui/launcher/TogglableFlag;

    const-string v1, "ASSISTANT_GIVES_LAUNCHER_FOCUS"

    const-string v2, "Allow Launcher to handle nav bar gestures while Assistant is running over it"

    invoke-direct {v0, v1, v3, v2}, Lcom/zui/launcher/TogglableFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/BaseFlags;->ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/zui/launcher/TogglableFlag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Don\'t instantiate BaseFlags"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->sFlags:Ljava/util/List;

    return-object v0
.end method

.method static getTogglableFlags()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/TogglableFlag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sget-object v1, Lcom/zui/launcher/config/BaseFlags;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/zui/launcher/config/BaseFlags;->sFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v3}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/config/BaseFlags;->sFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->initialize(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    const-string v0, "com.android.internal.R$bool"

    const-string v1, "config_zuifreeform_enabled"

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getReflactField(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    sput-boolean p0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    return-void
.end method

.method public static showFlagTogglerUi(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isDevelopersOptionsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
