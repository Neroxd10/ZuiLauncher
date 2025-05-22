.class public final synthetic Lcom/zui/launcher/widget/picker/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

.field public final synthetic b:Lcom/zui/launcher/util/PackageUserKey;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsListAdapter;Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/r;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/r;->b:Lcom/zui/launcher/util/PackageUserKey;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/r;->a:Lcom/zui/launcher/widget/picker/WidgetsListAdapter;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/r;->b:Lcom/zui/launcher/util/PackageUserKey;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->f(Lcom/zui/launcher/util/PackageUserKey;I)Z

    move-result p0

    return p0
.end method
