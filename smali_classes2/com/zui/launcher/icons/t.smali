.class public final synthetic Lcom/zui/launcher/icons/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/t;->a:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/t;->a:Landroid/content/pm/ShortcutInfo;

    invoke-static {p0}, Lcom/zui/launcher/icons/IconCache;->p(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method
