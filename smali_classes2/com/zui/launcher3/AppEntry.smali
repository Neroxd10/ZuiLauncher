.class public Lcom/zui/launcher3/AppEntry;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher3/AppEntry;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher3/AppEntry;->b:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher3/AppEntry;->c:Landroid/content/Intent;

    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method a()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/AppEntry;->c:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method b()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/AppEntry;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/AppEntry;->a:Ljava/lang/String;

    return-object p0
.end method

.method d()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/AppEntry;->c:Landroid/content/Intent;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/AppEntry;->a:Ljava/lang/String;

    return-object p0
.end method
