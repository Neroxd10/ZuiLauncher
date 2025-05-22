.class public final Lcom/zui/launcher/GlobalSearchDbSettings$UsageStat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/GlobalSearchDbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsageStat"
.end annotation


# static fields
.field public static final CNT_AFTERNOON:Ljava/lang/String; = "cnt_afternoon"

.field public static final CNT_EVENING:Ljava/lang/String; = "cnt_evening"

.field public static final CNT_MIDNIGHT:Ljava/lang/String; = "cnt_midnight"

.field public static final CNT_MORNING:Ljava/lang/String; = "cnt_morning"

.field public static final CNT_NIGHT:Ljava/lang/String; = "cnt_night"

.field public static final CNT_NOON:Ljava/lang/String; = "cnt_noon"

.field public static final CNT_TOTAL:Ljava/lang/String; = "cnt_total"

.field public static final CNT_WEEKEND:Ljava/lang/String; = "cnt_weekend"

.field public static final CNT_WORKDAY:Ljava/lang/String; = "cnt_workday"

.field public static final COMPONENT:Ljava/lang/String; = "component"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GENERATE_NEW_USAGE_STAT_ID:Ljava/lang/String; = "generateNewUsageStatId"

.field public static final LAUNCHER_KEY:Ljava/lang/String; = "launcher_key"

.field public static final MAX_QUERY_SIZE:I = 0xa

.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final TABLE_NAME:Ljava/lang/String; = "usage_stat"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings.global_search/usage_stat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/GlobalSearchDbSettings$UsageStat;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(J)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.zui.launcher.settings.global_search/usage_stat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
