.class Lcom/zui/launcher/touch/ItemClickHandler$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/touch/ItemClickHandler;->c(Lcom/zui/launcher/Launcher;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/touch/ItemClickHandler$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/zui/launcher/touch/ItemClickHandler$a;->b:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/zui/launcher/touch/ItemClickHandler$a;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-boolean p1, Lcom/zui/launcher/touch/ItemClickHandler;->b:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/touch/ItemClickHandler$a;->b:Lcom/zui/launcher/Launcher;

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "itemClickStartDefaultApp"

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/util/SettingsValue;->setCommonNotShowDialog(Landroid/content/Context;ZLjava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/zui/launcher/touch/ItemClickHandler;->b:Z

    :cond_0
    return-void
.end method
