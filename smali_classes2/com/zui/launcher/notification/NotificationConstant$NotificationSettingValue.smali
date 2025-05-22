.class public final Lcom/zui/launcher/notification/NotificationConstant$NotificationSettingValue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/notification/NotificationConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationSettingValue"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id desc"

.field public static final HIGHPRIORITY:Ljava/lang/String; = "high_priority"

.field public static final LOCKSCREEN_NOTIFY:Ljava/lang/String; = "lockscreen_notify"

.field public static final NOTIFY_PERMISSION:Ljava/lang/String; = "permission_notify"

.field public static final PATH_SEG:Ljava/lang/String; = "notificationSettingValue"

.field public static final PKG_NAME_C:Ljava/lang/String; = "pkg_name_c"

.field public static final SHOW_SUBICON:Ljava/lang/String; = "show_sub_icon"

.field public static final TABLE_NAME:Ljava/lang/String; = "notificationSettingValue"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.systemui.lenovo.LenovoConstantData/notificationSettingValue"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/notification/NotificationConstant$NotificationSettingValue;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
