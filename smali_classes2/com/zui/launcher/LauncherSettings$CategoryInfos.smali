.class public final Lcom/zui/launcher/LauncherSettings$CategoryInfos;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CategoryInfos"
.end annotation


# static fields
.field public static final APP_CATEGORY_INDEX:Ljava/lang/String; = "categoryIndex"

.field public static final APP_DEFAULT_1:Ljava/lang/String; = "default1"

.field public static final APP_DEFAULT_2:Ljava/lang/String; = "default2"

.field public static final APP_DEFAULT_3:Ljava/lang/String; = "default3"

.field public static final APP_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "categories"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings/categories"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherSettings$CategoryInfos;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
