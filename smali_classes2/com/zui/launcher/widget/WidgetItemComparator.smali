.class public Lcom/zui/launcher/widget/WidgetItemComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/model/WidgetItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/UserHandle;

.field private final b:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetItemComparator;->a:Landroid/os/UserHandle;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetItemComparator;->b:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/model/WidgetItem;)I
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetItemComparator;->a:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/zui/launcher/widget/WidgetItemComparator;->a:Landroid/os/UserHandle;

    iget-object v3, p2, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    xor-int/2addr v2, v0

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    iget-object v0, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget-object v4, p2, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz v4, :cond_3

    move v2, v1

    :cond_3
    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    return v1

    :cond_5
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    iget-object p0, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget p0, p0, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->rank:I

    if-le p0, p0, :cond_6

    return v3

    :cond_6
    return v1

    :cond_7
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p2, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v2, v0, :cond_9

    if-eqz v2, :cond_8

    move v1, v3

    :cond_8
    return v1

    :cond_9
    iget-object v0, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.zui."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p2, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v0, v2, :cond_b

    if-eqz v0, :cond_a

    move v1, v3

    :cond_a
    return v1

    :cond_b
    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetItemComparator;->b:Ljava/text/Collator;

    iget-object v1, p1, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetItemComparator;->b:Ljava/text/Collator;

    iget-object v1, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetItemComparator;->b:Ljava/text/Collator;

    iget-object v0, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_e

    return p0

    :cond_e
    iget p0, p1, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget p1, p1, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    mul-int/2addr p0, p1

    iget v0, p2, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget p2, p2, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    mul-int/2addr v0, p2

    if-ne p0, v0, :cond_f

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_2

    :cond_f
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    :goto_2
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    check-cast p2, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/widget/WidgetItemComparator;->compare(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/model/WidgetItem;)I

    move-result p0

    return p0
.end method
