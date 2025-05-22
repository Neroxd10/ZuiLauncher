.class public final synthetic Lcom/zui/launcher3/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher3/SecondaryDisplayLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher3/c;->a:Lcom/zui/launcher3/SecondaryDisplayLauncher;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/c;->a:Lcom/zui/launcher3/SecondaryDisplayLauncher;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->e(Ljava/util/List;)V

    return-void
.end method
