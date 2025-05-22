.class Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;->a:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    iput-object p3, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;->a:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm$a;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
