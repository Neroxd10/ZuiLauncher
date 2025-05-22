.class public final Lcom/zui/launcher/LeftScreenDbSettings$CourierCompany;
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
    name = "CourierCompany"
.end annotation


# static fields
.field public static final COMPANY_CPCODE:Ljava/lang/String; = "cp_code"

.field public static final COMPANY_FULLNAME:Ljava/lang/String; = "company_full_name"

.field public static final COMPANY_KEY:Ljava/lang/String; = "company_key"

.field public static final COMPANY_MIDDLE_ICON:Ljava/lang/String; = "middle_icon"

.field public static final COMPANY_NORMAL_ICON:Ljava/lang/String; = "normal_icon"

.field public static final COMPANY_S100_ICON:Ljava/lang/String; = "s100_icon"

.field public static final COMPANY_S38_ICON:Ljava/lang/String; = "s38_icon"

.field public static final COMPANY_S72_ICON:Ljava/lang/String; = "s72_icon"

.field public static final COMPANY_SHORTNAME:Ljava/lang/String; = "company_short_name"

.field public static final COMPANY_SMALL_ICON:Ljava/lang/String; = "small_icon"

.field public static final COMPANY_TELPHONE:Ljava/lang/String; = "tel_phone"

.field public static final ROOKIE_COURIER_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "rookie_courierCompany"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zui.launcher.settings.rookie/rookie_courierCompany"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LeftScreenDbSettings$CourierCompany;->ROOKIE_COURIER_URI:Landroid/net/Uri;

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

    const-string v1, "content://com.zui.launcher.settings.rookie/rookie_courierCompany/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
