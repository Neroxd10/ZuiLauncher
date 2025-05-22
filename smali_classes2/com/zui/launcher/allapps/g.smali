.class public final synthetic Lcom/zui/launcher/allapps/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllAppsStore;

.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllAppsStore;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/g;->a:Lcom/zui/launcher/allapps/AllAppsStore;

    iput-object p2, p0, Lcom/zui/launcher/allapps/g;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/g;->a:Lcom/zui/launcher/allapps/AllAppsStore;

    iget-object p0, p0, Lcom/zui/launcher/allapps/g;->b:Ljava/util/function/Predicate;

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->a(Ljava/util/function/Predicate;Lcom/zui/launcher/BubbleTextView;)V

    return-void
.end method
