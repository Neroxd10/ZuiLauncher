.class public final synthetic Lcom/zui/launcher/util/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/pm/UserCache;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/pm/UserCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/a;->a:Lcom/zui/launcher/pm/UserCache;

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/a;->a:Lcom/zui/launcher/pm/UserCache;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
