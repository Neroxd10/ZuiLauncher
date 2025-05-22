.class public interface abstract Lcom/zui/launcher/Constants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_CHOOSE_WORLD_CITY:Ljava/lang/String; = "com.zui.deskclock.worldcity.CHOOSE_WORLD_CITY"

.field public static final ACTION_VIEW_WORLD_CLOCK_LIST:Ljava/lang/String; = "com.zui.deskclock.worldclock.VIEW_WORLD_CLOCK_LIST"

.field public static final ACTION_WORLD_CITY:Ljava/lang/String; = "com.zui.deskclock.worldcity.CHOOSE_WORLD_CITY_RETURN"

.field public static final APP_PROJECTION:[Ljava/lang/String;

.field public static final BROWSER_AUTHORITY_KEY:Ljava/lang/String; = "com.android.browser"

.field public static final BROWSER_URI_BOOKMARK:Ljava/lang/String; = "content://browser/search_suggest_query?type=bookmark&limit=50"

.field public static final BROWSER_URI_HISTORY:Ljava/lang/String; = "content://browser/search_suggest_query?type=history&limit=50"

.field public static final BUNDLE_KEY_CITY:Ljava/lang/String; = "city"

.field public static final CARD_GRID_COL_NUM:I = 0x4

.field public static final CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final DATE_COMBINE:Ljava/lang/String; = "  -  "

.field public static final EDIT_MODE_VIBRATE_VALUE:I = 0x58

.field public static final EVENTS_TIME_STYLE:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field public static final EVENT_PROJECTION_2:[Ljava/lang/String;

.field public static final HAS_PHONE_NUMBER:I = 0x1

.field public static final HOTWORD_PROJECTION:[Ljava/lang/String;

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_SKIN:Ljava/lang/String; = "skin"

.field public static final LAUNCHER_URI:Landroid/net/Uri;

.field public static final MAX_CONTACT_NUM:I = 0x8

.field public static final MAX_EVENT_NUM:I = 0x5

.field public static final MAX_EVENT_NUM_MIN:I = 0x3

.field public static final MAX_SCREEN_COUNT:I = 0x9

.field public static final METHOD_TRANSLATE:Ljava/lang/String; = "translate"

.field public static final PHONE_NUMBER_SEP:Ljava/lang/String; = "/type:"

.field public static final PHONE_PROJECTION:[Ljava/lang/String;

.field public static final PRE_FROM:Ljava/lang/String; = "From: "

.field public static final PRE_TO:Ljava/lang/String; = "To: "

.field public static final REMINDER_PROJECTION:[Ljava/lang/String;

.field public static final SMS_PROJECTION:[Ljava/lang/String;

.field public static final SMS_TIME_STYLE:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VALUE_SKIN_DARK:Ljava/lang/String; = "dark"

.field public static final VALUE_SKIN_LIGHT:Ljava/lang/String; = "light"

.field public static final WORLDWIDE_CLOCK_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "content://com.zui.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/Constants;->LAUNCHER_URI:Landroid/net/Uri;

    const-string v0, "title"

    const-string v1, "intent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/Constants;->APP_PROJECTION:[Ljava/lang/String;

    const-string v0, "contact_id"

    const-string v1, "display_name"

    const-string v2, "data1"

    const-string v3, "photo_id"

    const-string v4, "data2"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/Constants;->PHONE_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v2, "has_phone_number"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/launcher/Constants;->CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v2, "_id"

    const-string v3, "address"

    const-string v4, "body"

    const-string v5, "date"

    const-string v6, "type"

    const-string v7, "thread_id"

    const-string v8, "person"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/launcher/Constants;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v2, "_id"

    const-string v3, "title"

    const-string v4, "dtstart"

    const-string v5, "dtend"

    const-string v6, "eventTimezone"

    const-string v7, "eventLocation"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/launcher/Constants;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v1, "Title"

    const-string v2, "StartDate"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/Constants;->REMINDER_PROJECTION:[Ljava/lang/String;

    const-string v1, "event_id"

    const-string v2, "title"

    const-string v3, "begin"

    const-string v4, "end"

    const-string v5, "eventTimezone"

    const-string v6, "eventLocation"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/Constants;->EVENT_PROJECTION_2:[Ljava/lang/String;

    const-string v0, "flag"

    const-string v1, "word"

    const-string v2, "url"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://com.zui.deskclock.worldcity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/Constants;->WORLDWIDE_CLOCK_URI:Landroid/net/Uri;

    return-void
.end method
