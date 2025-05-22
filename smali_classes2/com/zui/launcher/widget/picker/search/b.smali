.class public final synthetic Lcom/zui/launcher/widget/picker/search/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/search/SearchCallback;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/search/b;->a:Lcom/zui/launcher/search/SearchCallback;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/search/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/widget/picker/search/b;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/b;->a:Lcom/zui/launcher/search/SearchCallback;

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/search/b;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/b;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->b(Lcom/zui/launcher/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
