.class Lcom/zui/launcher3/i$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher3/i;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/zui/launcher3/AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher3/i;


# direct methods
.method constructor <init>(Lcom/zui/launcher3/i;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher3/i$a;->b:Lcom/zui/launcher3/i;

    iput p2, p0, Lcom/zui/launcher3/i$a;->a:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher3/AppEntry;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zui/launcher3/i$a;->b:Lcom/zui/launcher3/i;

    invoke-static {v0}, Lcom/zui/launcher3/i;->a(Lcom/zui/launcher3/i;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v2, Lcom/zui/launcher3/AppEntry;

    iget-object v3, p0, Lcom/zui/launcher3/i$a;->b:Lcom/zui/launcher3/i;

    invoke-static {v3}, Lcom/zui/launcher3/i;->a(Lcom/zui/launcher3/i;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/zui/launcher3/AppEntry;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher3/AppEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher3/i$a;->b:Lcom/zui/launcher3/i;

    invoke-static {v0}, Lcom/zui/launcher3/i;->b(Lcom/zui/launcher3/i;)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher3/i$a;->a:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher3/i$a;->b:Lcom/zui/launcher3/i;

    invoke-static {p0, p1}, Lcom/zui/launcher3/i;->c(Lcom/zui/launcher3/i;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/launcher3/i$a;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/zui/launcher3/i$a;->b(Ljava/util/List;)V

    return-void
.end method
