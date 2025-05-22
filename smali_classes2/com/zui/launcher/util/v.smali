.class public final synthetic Lcom/zui/launcher/util/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/ItemInfoMatcher;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/ItemInfoMatcher;

.field public final synthetic b:Lcom/zui/launcher/util/ItemInfoMatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/v;->a:Lcom/zui/launcher/util/ItemInfoMatcher;

    iput-object p2, p0, Lcom/zui/launcher/util/v;->b:Lcom/zui/launcher/util/ItemInfoMatcher;

    return-void
.end method


# virtual methods
.method public final matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/v;->a:Lcom/zui/launcher/util/ItemInfoMatcher;

    iget-object p0, p0, Lcom/zui/launcher/util/v;->b:Lcom/zui/launcher/util/ItemInfoMatcher;

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->c(Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/util/ItemInfoMatcher;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
