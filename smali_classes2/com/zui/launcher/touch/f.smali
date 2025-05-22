.class public final synthetic Lcom/zui/launcher/touch/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/zui/launcher/Launcher;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/touch/f;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/zui/launcher/touch/f;->b:Lcom/zui/launcher/Launcher;

    iput-object p3, p0, Lcom/zui/launcher/touch/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/f;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/touch/f;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/touch/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/zui/launcher/touch/ItemClickHandler;->f(Landroid/view/View;Lcom/zui/launcher/Launcher;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
