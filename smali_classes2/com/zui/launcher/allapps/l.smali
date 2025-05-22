.class public final synthetic Lcom/zui/launcher/allapps/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/l;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/l;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->e(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Ljava/util/ArrayList;)V

    return-void
.end method
