.class public Lcom/zui/launcher/settings/DeskStylePreference;
.super Lzui/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/settings/DeskStylePreference$f;
    }
.end annotation


# instance fields
.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/settings/DeskStylePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/settings/DeskStylePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/settings/DeskStylePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d009f

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/settings/DeskStylePreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/settings/DeskStylePreference;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/settings/DeskStylePreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/settings/DeskStylePreference;->d(Landroid/view/View;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/settings/DeskStylePreference$f;

    iget-object v2, v1, Lcom/zui/launcher/settings/DeskStylePreference$f;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    iget-boolean v1, v1, Lcom/zui/launcher/settings/DeskStylePreference$f;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->switchLayerDesktop(Landroid/content/Context;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/settings/DeskStylePreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/settings/DeskStylePreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a038f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, p1, :cond_2

    const v3, 0x7f0804fb

    goto :goto_1

    :cond_2
    const v3, 0x7f0804fc

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    new-instance v1, Lcom/zui/launcher/settings/DeskStylePreference$e;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/settings/DeskStylePreference$e;-><init>(Lcom/zui/launcher/settings/DeskStylePreference;Landroid/content/Context;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private e()V
    .locals 23

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-static {v7}, Lcom/zui/launcher/config/FeatureFlags;->getDesktopStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v1, 0x7f070438

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    invoke-static {v7}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const/4 v13, 0x0

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v14, v13

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    const v0, 0x7f03000d

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const v0, 0x7f03000c

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v0, 0x7f03000f

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    const v0, 0x7f03000e

    invoke-static {v7, v0}, Lcom/zui/launcher/Utilities;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v18

    const v0, 0x7f03000b

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    iget-object v0, v6, Lcom/zui/launcher/settings/DeskStylePreference;->d:Landroid/widget/LinearLayout;

    xor-int/lit8 v1, v14, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v4, v13

    :goto_2
    if-ge v4, v5, :cond_6

    const v0, 0x7f0d009e

    iget-object v1, v6, Lcom/zui/launcher/settings/DeskStylePreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a038f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v13, 0x7f0a02ce

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v12, 0x7f0a02cf

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move/from16 v21, v5

    aget-object v5, v16, v4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v1, v17, v4

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit8 v1, v4, 0x2

    aget v2, v18, v1

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v13, 0x1

    add-int/2addr v1, v13

    aget v1, v18, v1

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    if-eqz v14, :cond_2

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_2
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, 0x0

    :goto_3
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, v6, Lcom/zui/launcher/settings/DeskStylePreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v0, 0x7f0804fb

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f12041d

    goto :goto_4

    :cond_3
    const v0, 0x7f0804fc

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f12041e

    :goto_4
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/zui/launcher/settings/DeskStylePreference$f;

    aget-object v20, v16, v4

    aget-object v22, v19, v4

    move-object v0, v1

    move-object v13, v1

    move-object/from16 v1, p0

    move-object v12, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v8

    move v8, v4

    move-object/from16 v4, v22

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/settings/DeskStylePreference$f;-><init>(Lcom/zui/launcher/settings/DeskStylePreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/zui/launcher/settings/DeskStylePreference$a;

    invoke-direct {v0, v6}, Lcom/zui/launcher/settings/DeskStylePreference$a;-><init>(Lcom/zui/launcher/settings/DeskStylePreference;)V

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v21, -0x1

    if-eq v8, v5, :cond_5

    const/4 v0, -0x2

    if-eqz v14, :cond_4

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801bc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v6, Lcom/zui/launcher/settings/DeskStylePreference;->d:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_4
    const/4 v4, -0x1

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2, v11, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v3, v6, Lcom/zui/launcher/settings/DeskStylePreference;->d:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v4, v8, 0x1

    move v13, v2

    move-object/from16 v8, v20

    move/from16 v5, v21

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/settings/DeskStylePreference$f;

    iget-boolean v1, v1, Lcom/zui/launcher/settings/DeskStylePreference$f;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lzui/app/MessageDialog$Builder;

    invoke-direct {v1, v0}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120313

    invoke-virtual {v1, v2}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/settings/DeskStylePreference$b;

    invoke-direct {v2, p0}, Lcom/zui/launcher/settings/DeskStylePreference$b;-><init>(Lcom/zui/launcher/settings/DeskStylePreference;)V

    invoke-virtual {v1, v2}, Lzui/app/MessageDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v1

    const v2, 0x7f120312

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/settings/DeskStylePreference$c;

    invoke-direct {v3, p0, p1}, Lcom/zui/launcher/settings/DeskStylePreference$c;-><init>(Lcom/zui/launcher/settings/DeskStylePreference;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    const/high16 p1, 0x1040000

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/settings/DeskStylePreference$d;

    invoke-direct {v0, p0}, Lcom/zui/launcher/settings/DeskStylePreference$d;-><init>(Lcom/zui/launcher/settings/DeskStylePreference;)V

    invoke-virtual {v1, p1, v0}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    invoke-virtual {v1}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lzui/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/launcher/settings/DeskStylePreference;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/zui/launcher/settings/DeskStylePreference;->e()V

    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Lzui/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d009f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method
