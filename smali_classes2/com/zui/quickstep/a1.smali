.class public final synthetic Lcom/zui/quickstep/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/OverviewCommandHelper$c;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/a1;->a:Lcom/zui/quickstep/OverviewCommandHelper$c;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/a1;->a:Lcom/zui/quickstep/OverviewCommandHelper$c;

    check-cast p1, Lcom/zui/launcher/BaseDraggingActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/OverviewCommandHelper$c;->d(Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method
