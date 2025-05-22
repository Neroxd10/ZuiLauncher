.class public Lzui/appcompat/app/ZuiAppCompatViewInflater;
.super Landroidx/appcompat/app/AppCompatViewInflater;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lzui/appcompat/widget/ZuiAppCompatSeekBar;

    invoke-direct {p0, p1, p2}, Lzui/appcompat/widget/ZuiAppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method protected createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6b9f5cac

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Switch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    new-instance v0, Lzui/widget/Switch;

    invoke-direct {v0, p1, p3}, Lzui/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_2
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
