.class public final synthetic Lcom/zui/launcher/model/m1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/m1;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/m1;->a:Ljava/util/HashSet;

    check-cast p1, Lcom/zui/launcher/AppInfo;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/PackageUpdatedTask;->h(Ljava/util/HashSet;Lcom/zui/launcher/AppInfo;)V

    return-void
.end method
