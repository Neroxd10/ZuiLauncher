.class public Lcom/zui/launcher/model/AppPairComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Pair<",
        "Lcom/zui/launcher/ItemInfo;",
        "Ljava/lang/Object;",
        ">;>;"
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

    iput-object p1, p0, Lcom/zui/launcher/model/AppPairComparator;->a:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/AppPairComparator;->b:Landroid/os/UserHandle;

    new-instance p1, Lcom/zui/launcher/util/LabelComparator;

    invoke-direct {p1}, Lcom/zui/launcher/util/LabelComparator;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/AppPairComparator;->c:Lcom/zui/launcher/util/LabelComparator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/util/Pair<",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v1, v0, Lcom/zui/launcher/AppInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/AppInfo;

    iget-object v1, v1, Lcom/zui/launcher/AppInfo;->mPinyinStr:Ljava/lang/String;

    check-cast v0, Lcom/zui/launcher/AppInfo;

    iget-object v0, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/zui/launcher/AppInfo;

    iget-object v3, v3, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    check-cast p1, Lcom/zui/launcher/AppInfo;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    move-object p1, v2

    move-object v0, p1

    move-object v1, v0

    move-object v3, v1

    :goto_0
    iget-object v4, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v5, v4, Lcom/zui/launcher/AppInfo;

    if-eqz v5, :cond_1

    move-object v2, v4

    check-cast v2, Lcom/zui/launcher/AppInfo;

    iget-object v2, v2, Lcom/zui/launcher/AppInfo;->mPinyinStr:Ljava/lang/String;

    check-cast v4, Lcom/zui/launcher/AppInfo;

    iget-object v4, v4, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lcom/zui/launcher/AppInfo;

    iget-object v5, v5, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    check-cast p2, Lcom/zui/launcher/AppInfo;

    iget-object p2, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_1

    :cond_1
    move-object p2, v2

    move-object v4, p2

    move-object v5, v4

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/zui/launcher/model/AppPairComparator;->c:Lcom/zui/launcher/util/LabelComparator;

    invoke-virtual {v6, v1, v2}, Lcom/zui/launcher/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/model/AppPairComparator;->c:Lcom/zui/launcher/util/LabelComparator;

    invoke-virtual {v1, v0, v4}, Lcom/zui/launcher/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/model/AppPairComparator;->b:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/model/AppPairComparator;->a:Lcom/zui/launcher/compat/UserManagerCompat;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/model/AppPairComparator;->a:Lcom/zui/launcher/compat/UserManagerCompat;

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

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/model/AppPairComparator;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method
