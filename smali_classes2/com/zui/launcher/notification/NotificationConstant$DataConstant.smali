.class public final Lcom/zui/launcher/notification/NotificationConstant$DataConstant;
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
    name = "DataConstant"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final LAST_TIME:Ljava/lang/String; = "last_time"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final PKG_NAME_D:Ljava/lang/String; = "pkg_name_d"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.systemui.lenovo.LenovoConstantData/DataConstant"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/notification/NotificationConstant$DataConstant;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
