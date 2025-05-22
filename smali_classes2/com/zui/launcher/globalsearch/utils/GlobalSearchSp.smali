.class public Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request_game_num"

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGlobalSearchSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "global_search_sp"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->b:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->b:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getRequestGameNum(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->getGlobalSearchSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->a:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setRequestGameNum(Landroid/content/Context;I)Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->getGlobalSearchSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->a:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method
