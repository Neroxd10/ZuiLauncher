.class Lcom/zui/launcher/settings/GridOptionPreference$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/GridOptionPreference;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/zui/launcher/settings/GridOptionPreference;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/GridOptionPreference;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->e:Lcom/zui/launcher/settings/GridOptionPreference;

    iput-object p2, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/Utilities$GridSummary;

    iget-boolean v0, p1, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/Utilities$GridSummary;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->e:Lcom/zui/launcher/settings/GridOptionPreference;

    invoke-static {v1}, Lcom/zui/launcher/settings/GridOptionPreference;->a(Lcom/zui/launcher/settings/GridOptionPreference;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->e:Lcom/zui/launcher/settings/GridOptionPreference;

    invoke-static {v5}, Lcom/zui/launcher/settings/GridOptionPreference;->a(Lcom/zui/launcher/settings/GridOptionPreference;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/Utilities$GridSummary;

    iget-boolean v7, v6, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    if-eqz v7, :cond_1

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->b:Landroid/content/Context;

    iget v7, v6, Lcom/zui/launcher/Utilities$GridSummary;->previewId:I

    invoke-static {v3, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->e:Lcom/zui/launcher/settings/GridOptionPreference;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0804fc

    invoke-virtual {v1, v3, v5}, Lcom/zui/launcher/settings/GridOptionPreference;->setCompoundBounds(Landroid/widget/TextView;I)V

    iput-boolean v2, v6, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->b:Landroid/content/Context;

    iget v5, p1, Lcom/zui/launcher/Utilities$GridSummary;->previewSelectedId:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->e:Lcom/zui/launcher/settings/GridOptionPreference;

    iget-object v3, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->d:Landroid/widget/TextView;

    const v5, 0x7f0804fb

    invoke-virtual {v1, v3, v5}, Lcom/zui/launcher/settings/GridOptionPreference;->setCompoundBounds(Landroid/widget/TextView;I)V

    iput-boolean v4, p1, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    iget-object p1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->e:Lcom/zui/launcher/settings/GridOptionPreference;

    invoke-static {p1}, Lcom/zui/launcher/settings/GridOptionPreference;->b(Lcom/zui/launcher/settings/GridOptionPreference;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->e:Lcom/zui/launcher/settings/GridOptionPreference;

    invoke-static {p1}, Lcom/zui/launcher/settings/GridOptionPreference;->b(Lcom/zui/launcher/settings/GridOptionPreference;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/zui/launcher/Utilities;->changeDefaultGridOption(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.CHANGE_LAYOUT_CONFIG"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_new_layout_config"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/settings/GridOptionPreference$a;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "screen"

    const-string p1, "ClickWidgetaccess"

    const-string v0, "Screenlayout"

    invoke-static {p0, p1, v0, v2}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
