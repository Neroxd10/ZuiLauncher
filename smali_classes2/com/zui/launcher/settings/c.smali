.class public final synthetic Lcom/zui/launcher/settings/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/settings/DeveloperOptionsFragment;

.field public final synthetic b:Landroid/util/ArrayMap;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/preference/PreferenceDataStore;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/settings/DeveloperOptionsFragment;Landroid/util/ArrayMap;Landroid/content/Context;Landroidx/preference/PreferenceDataStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/settings/c;->a:Lcom/zui/launcher/settings/DeveloperOptionsFragment;

    iput-object p2, p0, Lcom/zui/launcher/settings/c;->b:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/zui/launcher/settings/c;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/zui/launcher/settings/c;->d:Landroidx/preference/PreferenceDataStore;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/settings/c;->a:Lcom/zui/launcher/settings/DeveloperOptionsFragment;

    iget-object v1, p0, Lcom/zui/launcher/settings/c;->b:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/zui/launcher/settings/c;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/settings/c;->d:Landroidx/preference/PreferenceDataStore;

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/zui/launcher/settings/DeveloperOptionsFragment;->c(Landroid/util/ArrayMap;Landroid/content/Context;Landroidx/preference/PreferenceDataStore;Landroid/content/pm/PackageInfo;)V

    return-void
.end method
