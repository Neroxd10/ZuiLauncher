.class public Lcom/zui/launcher/category/db/CategoryPreference;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/content/SharedPreferences; = null

.field public static density:Ljava/lang/String; = null

.field public static densityDpi:Ljava/lang/String; = null

.field public static heightPixels:Ljava/lang/String; = null

.field public static leftfilelen:Ljava/lang/String; = "leftfilelen"

.field public static letfclasscfileupdatetime:Ljava/lang/String; = "letfclasscfileupdatetime"

.field public static letfclassclintinfo:Ljava/lang/String; = "leftscreenclinetInfo"

.field public static letfclassiscategorys:Ljava/lang/String; = "leftscreenhavecategorys"

.field public static letfclasstoken:Ljava/lang/String; = "leftscreentoken"

.field public static letfregister:Ljava/lang/String; = "isleftscreenregister"

.field public static widthPixels:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoLogInCheck()Z
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "leftAotoLogInCheck"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCategoryDeliverAllState()Z
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "categorydeliverall"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCategoryDeliverDeletePname()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deliverdeletepname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryDeliverInstallPname()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deliverinstallpname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryInitState()Z
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "categoryinitstate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCategoryNamePicString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CategoryNamePic"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCategorySharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/zui/launcher/category/db/CategoryPreference;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getCategorysState()I
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfclassiscategorys:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getClientinfostate()I
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfclassclintinfo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getClinetVersionCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "leftclinetversioncode"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCategoryNamePicString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "defaultCategoryNamePic"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCategoryShortNameString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "defaultCategoryShortName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPw()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "leftpw"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemenberLogInCheck()Z
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "leftLogInCheck"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfclasstoken:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdatefileVersion()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "leftupdatefileversion"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdatetime()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfclasscfileupdatetime:Ljava/lang/String;

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "leftusername"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "leftversioncode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getdownloadcategoryfilelen()I
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->leftfilelen:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isPermmitCategory()Z
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isPermmitCategory"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRegisterClinet()I
    .locals 3

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfregister:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/category/db/CategoryPreference;->widthPixels:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/category/db/CategoryPreference;->heightPixels:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/category/db/CategoryPreference;->density:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zui/launcher/category/db/CategoryPreference;->densityDpi:Ljava/lang/String;

    return-void
.end method

.method public static setAutoLogInCheck(Z)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "leftAotoLogInCheck"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCategoryDeliverAllState(Z)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "categorydeliverall"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCategoryDeliverDeletePname(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deliverdeletepname"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCategoryDeliverInstallPname(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deliverinstallpname"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCategoryInitState(Z)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "categoryinitstate"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCategoryNamePicString(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CategoryNamePic"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCategorySharedPreferences(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.zui.launcher.category"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/zui/launcher/category/db/CategoryPreference;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static setCategorysState(I)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfclassiscategorys:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setClientinfostate(I)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfclassclintinfo:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setClinetVersionCode(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "leftclinetversioncode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDefaultCategoryNamePicString(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "defaultCategoryNamePic"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDefaultCategoryShortNameString(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "defaultCategoryShortName"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPermmitCategory(Z)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isPermmitCategory"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPw(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "leftpw"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setRegisterClinet(I)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfregister:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setRemenberLogInCheck(Z)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "leftLogInCheck"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setToken(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfclasstoken:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setUpdatefileVersion(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "leftupdatefileversion"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setUpdatetime(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->letfclasscfileupdatetime:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "leftusername"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setVersionCode(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "leftversioncode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setdownloadcategoryfilelen(I)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/category/db/CategoryPreference;->getCategorySharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/category/db/CategoryPreference;->leftfilelen:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
