.class public final synthetic Lcom/zui/launcher3/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher3/SecondaryDisplayLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher3/SecondaryDisplayLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher3/f;->a:Lcom/zui/launcher3/SecondaryDisplayLauncher;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/f;->a:Lcom/zui/launcher3/SecondaryDisplayLauncher;

    invoke-virtual {p0, p1}, Lcom/zui/launcher3/SecondaryDisplayLauncher;->h(Landroid/view/View;)V

    return-void
.end method
