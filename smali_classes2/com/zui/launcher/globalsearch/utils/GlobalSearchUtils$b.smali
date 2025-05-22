.class Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;-><init>(Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils$a;)V

    sput-object v0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils$b;->a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    return-void
.end method

.method static synthetic a()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;
    .locals 1

    sget-object v0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils$b;->a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    return-object v0
.end method
