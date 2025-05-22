.class public final synthetic Lcom/zui/launcher/util/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/ItemInfoMatcher;


# instance fields
.field public final synthetic a:Ljava/util/HashSet;

.field public final synthetic b:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/p;->a:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/zui/launcher/util/p;->b:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/p;->a:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/zui/launcher/util/p;->b:Landroid/os/UserHandle;

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->d(Ljava/util/HashSet;Landroid/os/UserHandle;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
