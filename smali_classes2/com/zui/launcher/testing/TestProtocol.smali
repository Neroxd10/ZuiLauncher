.class public final Lcom/zui/launcher/testing/TestProtocol;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALL_APPS_STATE_ORDINAL:I = 0x5

.field public static final BACKGROUND_APP_STATE_ORDINAL:I = 0x6

.field public static final EDITVIEW_STATE_ORDINAL:I = 0x7

.field public static final FALLBACK_ACTIVITY_NO_SET:Ljava/lang/String; = "b/181019015"

.field public static final GET_SCROLL_MESSAGE:Ljava/lang/String; = "TAPL_GET_SCROLL"

.field public static final LAUNCHER_EVENT_DISPATCH:Ljava/lang/String; = "LauncherTouchDispatch"

.field public static final NORMAL_STATE_ORDINAL:I = 0x0

.field public static final NO_ALLAPPS_EVENT_TAG:Ljava/lang/String; = "b/133867119"

.field public static final NO_DRAG_TAG:Ljava/lang/String; = "b/133009122"

.field public static final NO_OVERVIEW_EVENT_TAG:Ljava/lang/String; = "b/134532571"

.field public static final NO_START_TAG:Ljava/lang/String; = "b/132900132"

.field public static final NO_START_TASK_TAG:Ljava/lang/String; = "b/133765434"

.field public static final NO_SWIPE_TO_HOME:Ljava/lang/String; = "b/158017601"

.field public static final OVERIEW_NOT_ALLAPPS:Ljava/lang/String; = "b/156095088"

.field public static final OVERVIEW_PEEK_STATE_ORDINAL:I = 0x3

.field public static final OVERVIEW_STATE_ORDINAL:I = 0x2

.field public static final PAUSE_DETECTED_MESSAGE:Ljava/lang/String; = "TAPL_PAUSE_DETECTED"

.field public static final PAUSE_NOT_DETECTED:Ljava/lang/String; = "b/139891609"

.field public static final PERMANENT_DIAG_TAG:Ljava/lang/String; = "TaplTarget"

.field public static final QUICK_SWITCH_STATE_ORDINAL:I = 0x4

.field public static final REQUEST_ALL_APPS_TO_OVERVIEW_SWIPE_HEIGHT:Ljava/lang/String; = "all-apps-to-overview-swipe-height"

.field public static final REQUEST_APP_LIST_FREEZE_FLAGS:Ljava/lang/String; = "app-list-freeze-flags"

.field public static final REQUEST_BACKGROUND_TO_OVERVIEW_SWIPE_HEIGHT:Ljava/lang/String; = "background-to-overview-swipe-height"

.field public static final REQUEST_DISABLE_DEBUG_TRACING:Ljava/lang/String; = "disable-debug-tracing"

.field public static final REQUEST_ENABLE_DEBUG_TRACING:Ljava/lang/String; = "enable-debug-tracing"

.field public static final REQUEST_FREEZE_APP_LIST:Ljava/lang/String; = "freeze-app-list"

.field public static final REQUEST_HOME_TO_ALL_APPS_SWIPE_HEIGHT:Ljava/lang/String; = "home-to-all-apps-swipe-height"

.field public static final REQUEST_HOME_TO_OVERVIEW_SWIPE_HEIGHT:Ljava/lang/String; = "home-to-overview-swipe-height"

.field public static final REQUEST_MOCK_SENSOR_ROTATION:Ljava/lang/String; = "mock-sensor-rotation"

.field public static final REQUEST_UNFREEZE_APP_LIST:Ljava/lang/String; = "unfreeze-app-list"

.field public static final RESPONSE_MESSAGE_POSTFIX:Ljava/lang/String; = "_RESPONSE"

.field public static final SCROLL_FINISHED_MESSAGE:Ljava/lang/String; = "TAPL_SCROLL_FINISHED"

.field public static final SCROLL_Y_FIELD:Ljava/lang/String; = "scrollY"

.field public static final SPRING_LOADED_STATE_ORDINAL:I = 0x1

.field public static final STATE_FIELD:Ljava/lang/String; = "state"

.field public static final SWITCHED_TO_STATE_MESSAGE:Ljava/lang/String; = "TAPL_SWITCHED_TO_STATE"

.field public static final TEST_INFO_RESPONSE_FIELD:Ljava/lang/String; = "response"

.field public static final WORK_PROFILE_REMOVED:Ljava/lang/String; = "b/159671700"

.field public static sDebugTracing:Z = false

.field public static sDisableSensorRotation:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final eventDispatchLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LauncherTouchDispatch"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static stateOrdinalToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "EditView"

    return-object p0

    :pswitch_1
    const-string p0, "Background"

    return-object p0

    :pswitch_2
    const-string p0, "AllApps"

    return-object p0

    :pswitch_3
    const-string p0, "QuickSwitch"

    return-object p0

    :pswitch_4
    const-string p0, "OverviewPeek"

    return-object p0

    :pswitch_5
    const-string p0, "Overview"

    return-object p0

    :pswitch_6
    const-string p0, "SpringLoaded"

    return-object p0

    :pswitch_7
    const-string p0, "Normal"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
