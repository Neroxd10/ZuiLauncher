.class public final synthetic Lcom/zui/launcher/allapps/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/PromiseAppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/PromiseAppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/h;->a:Lcom/zui/launcher/PromiseAppInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/h;->a:Lcom/zui/launcher/PromiseAppInfo;

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    invoke-static {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->c(Lcom/zui/launcher/PromiseAppInfo;Lcom/zui/launcher/BubbleTextView;)V

    return-void
.end method
