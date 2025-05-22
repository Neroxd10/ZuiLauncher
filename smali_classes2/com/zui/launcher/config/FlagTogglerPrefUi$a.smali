.class Lcom/zui/launcher/config/FlagTogglerPrefUi$a;
.super Landroidx/preference/PreferenceDataStore;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/config/FlagTogglerPrefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/config/FlagTogglerPrefUi;


# direct methods
.method constructor <init>(Lcom/zui/launcher/config/FlagTogglerPrefUi;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi$a;->a:Lcom/zui/launcher/config/FlagTogglerPrefUi;

    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    invoke-static {}, Lcom/zui/launcher/config/BaseFlags;->getTogglableFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi$a;->a:Lcom/zui/launcher/config/FlagTogglerPrefUi;

    invoke-static {p0}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->a(Lcom/zui/launcher/config/FlagTogglerPrefUi;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->c(Landroid/content/Context;Z)Z

    move-result p0

    return p0

    :cond_1
    return p2
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Lcom/zui/launcher/config/BaseFlags;->getTogglableFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi$a;->a:Lcom/zui/launcher/config/FlagTogglerPrefUi;

    invoke-static {v3}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->a(Lcom/zui/launcher/config/FlagTogglerPrefUi;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->updateStorage(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi$a;->a:Lcom/zui/launcher/config/FlagTogglerPrefUi;

    invoke-static {v3}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->b(Lcom/zui/launcher/config/FlagTogglerPrefUi;)V

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/config/FlagTogglerPrefUi$a;->a:Lcom/zui/launcher/config/FlagTogglerPrefUi;

    invoke-static {v1}, Lcom/zui/launcher/config/FlagTogglerPrefUi;->a(Lcom/zui/launcher/config/FlagTogglerPrefUi;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Flag applied"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    return-void
.end method
