.class public final Lcom/zui/launcher/PermanentSettings$Method;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/PermanentSettings;
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

.field public static final METHOD_CLEAR_OLD_LEFTSCREEN_DATA:Ljava/lang/String; = "clearOldLeftScreenData"

.field public static final METHOD_GET_ALL_VALUES:Ljava/lang/String; = "getAllValues"

.field public static final METHOD_GET_VALUE:Ljava/lang/String; = "getValue"

.field public static final METHOD_SET_VALUE:Ljava/lang/String; = "setValue"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings.permanent/method"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/PermanentSettings$Method;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/zui/launcher/PermanentSettings$Method;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
