.class public Lcom/zui/launcher/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;,
        Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlphabeticalAppsList"


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/zui/launcher/allapps/AllAppsStore;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

.field private k:Lcom/zui/launcher/compat/AlphabeticIndexCompat;

.field private l:Lcom/zui/launcher/allapps/AppInfoComparator;

.field private final m:I

.field public final mLetterItemCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Lcom/zui/launcher/util/ItemInfoMatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/allapps/AllAppsStore;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->mLetterItemCounts:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->i:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->c:Lcom/zui/launcher/allapps/AllAppsStore;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->a:Lcom/zui/launcher/Launcher;

    new-instance p2, Lcom/zui/launcher/compat/AlphabeticIndexCompat;

    invoke-direct {p2, p1}, Lcom/zui/launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->k:Lcom/zui/launcher/compat/AlphabeticIndexCompat;

    new-instance p2, Lcom/zui/launcher/allapps/AppInfoComparator;

    invoke-direct {p2, p1}, Lcom/zui/launcher/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->l:Lcom/zui/launcher/allapps/AppInfoComparator;

    iput-boolean p3, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->g:Z

    iget-object p1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumnsApps:I

    iput p1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->m:I

    iget-object p1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->c:Lcom/zui/launcher/allapps/AllAppsStore;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method private a()V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "A.D.G.J.M.P.S.V.Z#"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v5, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->mLetterItemCounts:Ljava/util/Map;

    iget-object v6, v2, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->mLetterItemCounts:Ljava/util/Map;

    iget-object v5, v2, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_1
    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x12

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/4 v2, 0x0

    move v6, v2

    move v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_d

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v10, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v11, -0x1

    if-eq v9, v11, :cond_c

    if-ne v5, v11, :cond_3

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v10, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v4

    move v11, v10

    :goto_2
    if-ge v10, v9, :cond_6

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget-object v13, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->mLetterItemCounts:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->mLetterItemCounts:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_3

    :cond_4
    move v10, v4

    :goto_3
    if-lez v10, :cond_5

    add-int/lit8 v11, v11, 0x1

    :cond_5
    move v10, v12

    goto :goto_2

    :cond_6
    if-eqz v11, :cond_9

    int-to-float v10, v11

    div-float v10, v1, v10

    move v11, v4

    :goto_4
    if-ge v11, v9, :cond_c

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b(Ljava/lang/String;)Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    move-result-object v11

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    iget-object v13, v11, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v13, :cond_8

    iget v13, v13, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v13}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v13

    if-nez v13, :cond_8

    iput v2, v11, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_5

    :cond_8
    iput v6, v11, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    add-float/2addr v6, v10

    :goto_5
    move v11, v12

    goto :goto_4

    :cond_9
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    add-float/2addr v6, v5

    move v7, v5

    goto :goto_6

    :cond_a
    invoke-direct {p0, v9}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b(Ljava/lang/String;)Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    move-result-object v5

    iget-object v9, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v9, :cond_b

    iget v9, v9, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v9}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v9

    if-nez v9, :cond_b

    iput v2, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_6

    :cond_b
    iput v6, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    add-float/2addr v7, v1

    add-float/2addr v6, v7

    move v7, v2

    :cond_c
    :goto_6
    move v5, v8

    goto/16 :goto_1

    :cond_d
    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->mLetterItemCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->k:Lcom/zui/launcher/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/AppInfo;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isExcludedFromAllApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/ComponentKey;

    iget-object v3, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->c:Lcom/zui/launcher/allapps/AllAppsStore;

    invoke-virtual {v3, v2}, Lcom/zui/launcher/allapps/AllAppsStore;->getApp(Lcom/zui/launcher/util/ComponentKey;)Lcom/zui/launcher/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private e()V
    .locals 12

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    const/16 v5, 0x1b

    if-ge v3, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v5, v3}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    move-object v4, v5

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v2

    move v6, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/AppInfo;

    iget-object v8, v7, Lcom/zui/launcher/AppInfo;->mPinyinStr:Ljava/lang/String;

    if-nez v8, :cond_1

    iget-object v8, v7, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-direct {p0, v8}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v10, v9, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v1, v8

    move-object v4, v9

    goto :goto_2

    :cond_3
    move-object v1, v8

    :cond_4
    :goto_2
    add-int/lit8 v9, v5, 0x1

    add-int/lit8 v10, v6, 0x1

    invoke-static {v5, v8, v7, v6}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/zui/launcher/AppInfo;I)Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v5

    iget-object v6, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v6, :cond_5

    iput-object v5, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    :cond_5
    iget-object v6, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->d:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v9

    move v6, v10

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->e:Ljava/util/ArrayList;

    add-int/lit8 v3, v5, 0x1

    invoke-static {v5}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    :cond_7
    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->e:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->m:I

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, -0x1

    const-string v5, "#"

    move v8, v2

    move v9, v8

    move v6, v3

    move-object v7, v5

    move v5, v6

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iput v2, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iget v11, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v11}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result v11

    if-eqz v11, :cond_a

    move v8, v2

    goto :goto_3

    :cond_a
    iget v11, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v11}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v11

    if-eqz v11, :cond_9

    iget v11, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->m:I

    rem-int v11, v8, v11

    if-nez v11, :cond_b

    add-int/lit8 v3, v3, 0x1

    move v9, v2

    :cond_b
    iput v3, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iput v9, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    if-eqz v0, :cond_e

    iget-object v11, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    if-eqz v11, :cond_e

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-lez v6, :cond_c

    if-lez v5, :cond_c

    iget-object v6, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->mLetterItemCounts:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v5, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    iget v6, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->m:I

    mul-int/2addr v6, v3

    iget v7, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    add-int/2addr v6, v7

    move-object v7, v5

    :cond_d
    iget v5, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->m:I

    mul-int/2addr v5, v3

    iget v10, v10, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    add-int/2addr v5, v10

    iget-object v10, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    sub-int v10, v5, v6

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->mLetterItemCounts:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_f
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->n:I

    if-nez v0, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v5, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v5, :cond_10

    iget v5, v5, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v5}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v5

    if-nez v5, :cond_10

    iput v2, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_4

    :cond_10
    iput v3, v4, Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    add-float/2addr v3, v0

    goto :goto_4

    :cond_11
    invoke-direct {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->a()V

    :cond_12
    invoke-direct {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->g()Z

    return-void
.end method

.method private f()V
    .locals 2

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshRecyclerView @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/132900132"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->j:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->g:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->a:Lcom/zui/launcher/Launcher;

    const-string v0, "android.permission.MODIFY_QUIET_MODE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private h()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->e()V

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f()V

    return-void
.end method


# virtual methods
.method public getAdapterItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    return-object p0
.end method

.method public getFastScrollerSections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->f:Ljava/util/List;

    return-object p0
.end method

.method public getNumAppRows()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->n:I

    return p0
.end method

.method public getNumFilteredApps()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public hasFilter()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->h:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNoFilteredResults()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAppsUpdated()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->c:Lcom/zui/launcher/allapps/AllAppsStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsStore;->isUpdateRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->c:Lcom/zui/launcher/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/AppInfo;

    iget-object v2, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->o:Lcom/zui/launcher/util/ItemInfoMatcher;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/zui/launcher/util/ItemInfoMatcher;->matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->l:Lcom/zui/launcher/allapps/AppInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/zui/launcher/util/LabelComparator;

    invoke-direct {v1}, Lcom/zui/launcher/util/LabelComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/AppInfo;

    iget-object v3, v2, Lcom/zui/launcher/AppInfo;->mPinyinStr:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-direct {p0, v3}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->h()V

    return-void
.end method

.method public refreshRecyclerView(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->j:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->j:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/util/ComponentKey;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public updateItemFilter(Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->o:Lcom/zui/launcher/util/ItemInfoMatcher;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    return-void
.end method
