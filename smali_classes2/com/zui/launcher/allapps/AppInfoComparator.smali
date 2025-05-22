.class public Lcom/zui/launcher/allapps/AppInfoComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/compat/UserManagerCompat;

.field private final b:Landroid/os/UserHandle;

.field private final c:Lcom/zui/launcher/util/LabelComparator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/AppInfoComparator;->a:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/AppInfoComparator;->b:Landroid/os/UserHandle;

    new-instance p1, Lcom/zui/launcher/util/LabelComparator;

    invoke-direct {p1}, Lcom/zui/launcher/util/LabelComparator;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/AppInfoComparator;->c:Lcom/zui/launcher/util/LabelComparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/AppInfo;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    :cond_2
    iget-object v3, p1, Lcom/zui/launcher/AppInfo;->mPinyinStr:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, p2, Lcom/zui/launcher/AppInfo;->mPinyinStr:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/zui/launcher/allapps/AppInfoComparator;->c:Lcom/zui/launcher/util/LabelComparator;

    invoke-virtual {v5, v3, v4}, Lcom/zui/launcher/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_5

    return v3

    :cond_5
    iget-object v3, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_6

    iget-object v3, p2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_2

    :cond_6
    iget-object v3, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    iget-object v4, p2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/zui/launcher/allapps/AppInfoComparator;->c:Lcom/zui/launcher/util/LabelComparator;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/zui/launcher/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_2
    if-eqz v3, :cond_9

    return v3

    :cond_9
    iget-object v3, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_a

    iget-object v3, p2, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_3

    :cond_b
    iget-object v3, p2, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_c

    move v0, v2

    goto :goto_3

    :cond_c
    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    :goto_3
    if-eqz v0, :cond_d

    return v0

    :cond_d
    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v3, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v2, p0, Lcom/zui/launcher/allapps/AppInfoComparator;->b:Landroid/os/UserHandle;

    invoke-virtual {v2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    :cond_10
    iget-object v0, p0, Lcom/zui/launcher/allapps/AppInfoComparator;->a:Lcom/zui/launcher/compat/UserManagerCompat;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/allapps/AppInfoComparator;->a:Lcom/zui/launcher/compat/UserManagerCompat;

    iget-object p2, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/AppInfo;

    check-cast p2, Lcom/zui/launcher/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/allapps/AppInfoComparator;->compare(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/AppInfo;)I

    move-result p0

    return p0
.end method
