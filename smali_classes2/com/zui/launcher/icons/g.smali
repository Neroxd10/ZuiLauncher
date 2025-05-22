.class public final synthetic Lcom/zui/launcher/icons/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/icons/g;->b:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/g;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/icons/g;->b:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->f(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
