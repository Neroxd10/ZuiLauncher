.class public final synthetic Lcom/zui/launcher/touch/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/touch/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/g;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/zui/launcher/touch/ItemClickHandler;->e(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
