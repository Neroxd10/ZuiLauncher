.class Lcom/zui/launcher/util/ViewCache$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/ViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:[Landroid/view/View;

.field c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/util/ViewCache$a;->a:I

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zui/launcher/util/ViewCache$a;->b:[Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/util/ViewCache$a;->c:I

    return-void
.end method
