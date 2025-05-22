.class public final synthetic Lcom/zui/launcher/util/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/ItemInfoMatcher;


# instance fields
.field public final synthetic a:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/s;->a:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final matches(Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/s;->a:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/util/ItemInfoMatcher;->b(Landroid/os/UserHandle;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
