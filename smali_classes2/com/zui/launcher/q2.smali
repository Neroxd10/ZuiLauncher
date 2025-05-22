.class public final synthetic Lcom/zui/launcher/q2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/PackageUserKey;

.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/PackageUserKey;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/q2;->a:Lcom/zui/launcher/util/PackageUserKey;

    iput-object p2, p0, Lcom/zui/launcher/q2;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/q2;->a:Lcom/zui/launcher/util/PackageUserKey;

    iget-object p0, p0, Lcom/zui/launcher/q2;->b:Ljava/util/function/Predicate;

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/Workspace;->v0(Lcom/zui/launcher/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method
