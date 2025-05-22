.class public final synthetic Lcom/zui/launcher/g3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/g3;->a:Lcom/zui/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/g3;->a:Lcom/zui/launcher/Launcher;

    check-cast p1, Ljava/util/function/Predicate;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method
