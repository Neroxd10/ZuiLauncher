.class public Lcom/zui/launcher/settings/CustomSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Switch;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "CustomSwitchSp"

    iput-object v0, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->a:Landroid/content/Context;

    const p1, 0x7f0d008b

    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "CustomSwitchSp"

    iput-object p2, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->a:Landroid/content/Context;

    const p1, 0x7f0d008b

    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "CustomSwitchSp"

    iput-object p2, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->a:Landroid/content/Context;

    const p1, 0x7f0d008b

    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, "CustomSwitchSp"

    iput-object p2, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->a:Landroid/content/Context;

    const p1, 0x7f0d008b

    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/settings/CustomSwitchPreference;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->b:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/settings/CustomSwitchPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->b:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/LeftScreenCompat;->isOverlayVersion()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->enableLeftScreenSwitch(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->b:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p0, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->b:Landroid/widget/Switch;

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->b:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/util/SettingsValue;->isFuncScreenOnOrOff(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->b:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zui/launcher/settings/CustomSwitchPreference;->b:Landroid/widget/Switch;

    new-instance v3, Lcom/zui/launcher/settings/CustomSwitchPreference$a;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/zui/launcher/settings/CustomSwitchPreference$a;-><init>(Lcom/zui/launcher/settings/CustomSwitchPreference;Landroid/content/SharedPreferences;ZLandroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method
