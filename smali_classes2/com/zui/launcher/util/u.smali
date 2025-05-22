.class public final synthetic Lcom/zui/launcher/util/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/ItemInfoMatcher;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/IntSparseArrayMap;

.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/u;->a:Lcom/zui/launcher/util/IntSparseArrayMap;

    iput-object p2, p0, Lcom/zui/launcher/util/u;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/u;->a:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget-object p0, p0, Lcom/zui/launcher/util/u;->b:Ljava/lang/Boolean;

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->i(Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/lang/Boolean;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
