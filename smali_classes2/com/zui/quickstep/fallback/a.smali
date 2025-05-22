.class public final synthetic Lcom/zui/quickstep/fallback/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/fallback/FallbackRecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/fallback/FallbackRecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/fallback/a;->a:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/fallback/a;->a:Lcom/zui/quickstep/fallback/FallbackRecentsView;

    check-cast p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->Y0(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method
