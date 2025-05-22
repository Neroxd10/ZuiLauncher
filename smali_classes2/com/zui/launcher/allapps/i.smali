.class public final synthetic Lcom/zui/launcher/allapps/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/i;->a:Lcom/zui/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/i;->a:Lcom/zui/launcher/AppInfo;

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    invoke-static {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->b(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/BubbleTextView;)V

    return-void
.end method
