.class public final Lcom/zui/launcher/LeftScreenDbSettings$OverlaySettings;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LeftScreenDbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlaySettings"
.end annotation


# static fields
.field public static final CARD_TYPE:Ljava/lang/String; = "card_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CTA_HIDE:Ljava/lang/String; = "cta_hide"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final INDEX:Ljava/lang/String; = "rank"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final NO_DEFAULT_BG:Ljava/lang/String; = "no_default_bg"

.field public static final NO_EDIT:Ljava/lang/String; = "no_edit"

.field public static final TABLE_NAME:Ljava/lang/String; = "overlay_settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings.rookie/overlay_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LeftScreenDbSettings$OverlaySettings;->CONTENT_URI:Landroid/net/Uri;

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

    const-string v1, "content://com.zui.launcher.settings.rookie/overlay_settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
