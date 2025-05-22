.class public interface abstract Lcom/zui/launcher/overlay/OverlayConstant;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_CHANGE_CARD_LIST:Ljava/lang/String; = "com.zui.launcher.action.CHANGE_CARD_LIST"

.field public static final ACTION_HIDE_LEFTSCREEN:Ljava/lang/String; = "zui.intent.action.LEFTSCREEN_HIDE"

.field public static final ACTION_LEFTSCREEN_CHANGE_SCROLLY:Ljava/lang/String; = "com.zui.launcher.action.LEFTSCREEN_CHANGE_SCROLLY"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "com.zui.launcher.action.PACKAGE_CHANGED"

.field public static final ACTION_REFRESH_LEFTSCREEN_ORDER:Ljava/lang/String; = "com.zui.launcher.action.ACTION_REFRESH_LEFTSCREEN_ORDER"

.field public static final ACTION_SCROLL_LEFTSCREEN:Ljava/lang/String; = "com.zui.launcher.action.SCROLL_LEFTSCREEN"

.field public static final ACTION_SHOW_LEFTSCREEN:Ljava/lang/String; = "zui.intent.action.LEFTSCREEN_SHOW"

.field public static final ACTION_TO_DEFAULT_SCREEN:Ljava/lang/String; = "com.zui.launcher.action.TO_DEFAULT_SCREEN"

.field public static final ATTR_ICON:Ljava/lang/String; = "icon"

.field public static final ATTR_KEY:Ljava/lang/String; = "key"

.field public static final ATTR_LAYOUT:Ljava/lang/String; = "layout"

.field public static final ATTR_TITLE:Ljava/lang/String; = "title"

.field public static final AUTHORITY_EXPORT:Ljava/lang/String; = "com.zui.launcher.settings.rookie"

.field public static final CARD_TAG:Ljava/lang/String; = "card"

.field public static final CARD_TYPE_DYNAMIC:I = 0x1

.field public static final CARD_TYPE_SCENE:I = 0x0

.field public static final EXTRA_OPT:Ljava/lang/String; = "opt"

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final EXTRA_USER:Ljava/lang/String; = "user"

.field public static final GET_NEWS_RESULT_OK:Ljava/lang/String; = "100"

.field public static final IS_LAUNCHER_STATUS_BAR_DARK:Ljava/lang/String; = "is_launcher_status_bar_dark"

.field public static final KEY_SCREEN_BACK_HOME_PROP:Ljava/lang/String; = "persist.zuk.shownavbar"

.field public static final LAUNCHER_EX_SETTINGS_NAME:Ljava/lang/String; = "name"

.field public static final LAUNCHER_EX_SETTINGS_VALUE:Ljava/lang/String; = "value"

.field public static final LAUNCHER_EX_SETTINGS_VALUE2:Ljava/lang/String; = "value2"

.field public static final LAUNCHER_WALLPAPER_COLOR:Ljava/lang/String; = "launcher_wallpaper_color"

.field public static final LEFTSCREEN_CARD_CONFIG:Ljava/lang/String; = "launcher_cards_config"

.field public static final METHOD_GET_OVERLAY_SETTINGS:Ljava/lang/String; = "getOverlaySettings"

.field public static final METHOD_SAVE_OVERLAY_SETTINGS:Ljava/lang/String; = "saveOverlaySettings"

.field public static final MTK_BLACKLIST:[Ljava/lang/String;

.field public static final NEWS_SET_RECOMMAND:Ljava/lang/String; = "1"

.field public static final OPT_ADD:I = 0x1

.field public static final OPT_REMOVE:I = 0x3

.field public static final OPT_UPDATE:I = 0x2

.field public static final OVERLAY_SETTINGS_CARD_TYPE:Ljava/lang/String; = "card_type"

.field public static final OVERLAY_SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field public static final OVERLAY_SETTINGS_CTA_HIDE:Ljava/lang/String; = "cta_hide"

.field public static final OVERLAY_SETTINGS_ENABLED:Ljava/lang/String; = "enabled"

.field public static final OVERLAY_SETTINGS_ID:Ljava/lang/String; = "_id"

.field public static final OVERLAY_SETTINGS_INDEX:Ljava/lang/String; = "rank"

.field public static final OVERLAY_SETTINGS_KEY:Ljava/lang/String; = "key"

.field public static final OVERLAY_SETTINGS_NO_DEFAULT_BG:Ljava/lang/String; = "no_default_bg"

.field public static final OVERLAY_SETTINGS_NO_EDIT:Ljava/lang/String; = "no_edit"

.field public static final OVERLAY_SHARED_PREF:Ljava/lang/String; = "overlay_screen"

.field public static final PKG_KEY_SEPERATOR:Ljava/lang/String; = "/"

.field public static final PRODUCT_JD:Ljava/lang/String; = "jd"

.field public static final PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field public static final SHOW_CTA_DIALOG:Ljava/lang/String; = "show_cta_dialog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings.rookie/method"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/overlay/OverlayConstant;->OVERLAY_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "com.zui.launcher/pay_card"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/overlay/OverlayConstant;->MTK_BLACKLIST:[Ljava/lang/String;

    return-void
.end method
