.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfoComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/text/RuleBasedCollator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfoComparator;->a:Ljava/text/RuleBasedCollator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfoComparator;->a:Ljava/text/RuleBasedCollator;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfoComparator;->a:Ljava/text/RuleBasedCollator;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfoComparator;->a:Ljava/text/RuleBasedCollator;

    invoke-virtual {p1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfoComparator;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)I

    move-result p0

    return p0
.end method
