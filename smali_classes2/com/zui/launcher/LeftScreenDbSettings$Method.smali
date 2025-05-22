.class public final Lcom/zui/launcher/LeftScreenDbSettings$Method;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LeftScreenDbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Method"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_KEY:Ljava/lang/String; = "value"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final EXTRA_VALUE2:Ljava/lang/String; = "value2"

.field public static final METHOD_CALL_PHONE:Ljava/lang/String; = "callPhone"

.field public static final METHOD_CLEAR_OLD_LEFTSCREEN_DATA:Ljava/lang/String; = "clearOldLeftScreenData"

.field public static final METHOD_CLEAR_SEARCH_HISTORY:Ljava/lang/String; = "clearExpressSearchHistory"

.field public static final METHOD_GENERATE_BIND_PHONE_ID:Ljava/lang/String; = "generateBindPhoneItemId"

.field public static final METHOD_GENERATE_NEW_ITEM_ID:Ljava/lang/String; = "generateNewItemId"

.field public static final METHOD_GENERATE_REMOVED_EXPRESS_ID:Ljava/lang/String; = "generateNewRemovedExpressId"

.field public static final METHOD_GET_BIND_PHONE_DATA:Ljava/lang/String; = "getBindPhoneData"

.field public static final METHOD_GET_OVERLAY_SETTINGS:Ljava/lang/String; = "getOverlaySettings"

.field public static final METHOD_GET_REMOVED_EXPRESS_DATA:Ljava/lang/String; = "getRemovedExpressData"

.field public static final METHOD_GET_SEARCH_EXPRESS_HISTORY_DATA:Ljava/lang/String; = "getSearchExpressHistoryData"

.field public static final METHOD_GET_SEARCH_HISTORY:Ljava/lang/String; = "getExpressSearchHistory"

.field public static final METHOD_REGISTER_CARD:Ljava/lang/String; = "registerCard"

.field public static final METHOD_REMOVE_SEARCH_HISTORY:Ljava/lang/String; = "removeExpressSearchHistory"

.field public static final METHOD_SAVE_OVERLAY_SETTINGS:Ljava/lang/String; = "saveOverlaySettings"

.field public static final METHOD_SAVE_SEARCH_HISTORY:Ljava/lang/String; = "saveExpressSearchHistory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings.rookie/method"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LeftScreenDbSettings$Method;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/zui/launcher/LeftScreenDbSettings$Method;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
